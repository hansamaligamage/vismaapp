using Exf.InvAppr.Data.Context;
using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Data.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity.Core;
using System.Data.Entity.Core.Objects;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using Exf.InvAppr.Common;

namespace Exf.InvAppr.Data.Repository
{
    public class AuthRepository : IDisposable
    {
        private AuthContext _ctx;

        private UserManager<ApplicationUser> _userManager;
        private RoleManager<IdentityRole> _roleManager;


        public AuthRepository()
        {
            try
            {
                _ctx = new AuthContext();
                _userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(_ctx));
                _roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(_ctx));
            }
            catch (Exception ex)
            {

                System.Diagnostics.Trace.TraceError(ex.ToString());
            }

        }

        public async Task<IdentityResult> RegisterUser(UserModel userModel)
        {

            try
            {
                ApplicationUser user = new ApplicationUser
                {
                    UserName = userModel.EmailAddress,
                    Email = userModel.EmailAddress,
                    DisplayName = userModel.DisplayName,
                    LockoutEnabled = true,
                    UserAccountApprover = _userManager.FindById(userModel.AccountApprover.Id)
                };

                var result = await _userManager.CreateAsync(user, userModel.Password);

                if (result.Succeeded)
                {
                    IList<int> regionsIds = userModel.Regions.Select(srg => srg.Id).ToList<int>();
                    var regionsToAdd = _ctx.Regions.Where(rg => regionsIds.Contains(rg.Id)).ToList<Region>();

                    user.ApplicationUserRegions = GetApplicationUserRegion(user.Id, regionsToAdd, userModel.DefaultRegion);

                    //user.Regions = regionsToAdd;


                    _userManager.Update(user);
                    _userManager.AddToRole(user.Id, userModel.Role);
                }

                return result;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        private ICollection<ApplicationUserRegion> GetApplicationUserRegion(string userId, List<Region> regionsToAdd, Region defaultRegion)
        {
            IList<ApplicationUserRegion> appRegions = new List<ApplicationUserRegion>();
            regionsToAdd.ForEach(rg =>
            {
                appRegions.Add(new ApplicationUserRegion() { ApplicationUserId = userId, RegionId = rg.Id, IsDefault = rg.Id == defaultRegion.Id });
            });

            return appRegions;
        }

        public IList<Region> GetUserRegion(string username)
        {
            IList<int> regionIds = _ctx.Users.FirstOrDefault(ur => ur.UserName.ToLower() == username.ToLower()).
                ApplicationUserRegions.Select(aprg => aprg.RegionId).ToList<int>();
            return _ctx.Regions.Where(rg => regionIds.Contains(rg.Id)).ToList<Region>();
        }

        public Region GetUserDefaultRegion(string username)
        {
            int defaultRegionId = _ctx.Users.FirstOrDefault(ur => ur.UserName.ToLower() == username.ToLower()).
                ApplicationUserRegions.Where(rg => rg.IsDefault).FirstOrDefault().RegionId;

            return _ctx.Regions.Where(rg => rg.Id == defaultRegionId).FirstOrDefault<Region>();
        }


        public bool ApproveNewUser(UserModel userModel)
        {
            try
            {
                ApplicationUser user = _ctx.Users.Include(ur => ur.ApplicationUserRegions).Where(ur => ur.Id == userModel.Id).Single<ApplicationUser>();


                user.LockoutEnabled = false;
                var entry = _ctx.Entry(user);
                entry.Property(e => e.LockoutEnabled).IsModified = true;

                if (userModel.IsRegionsUpdated)
                {
                    AddRegionsToUser(userModel.Regions, user, userModel.DefaultRegion);
                }

                int result = _ctx.SaveChanges();

                IdentityResult updateRoleResult = null;
                if (userModel.IsRolesUpdated)
                {
                    var exitingRole = _roleManager.FindById(user.Roles.First().RoleId);

                    if (!exitingRole.Name.ToLower().Equals(userModel.Role.ToLower()))
                    {
                        user.Roles.Clear();
                        updateRoleResult = _userManager.AddToRole(user.Id, userModel.Role);
                    }
                }

                return GetUpdateResult(result, updateRoleResult);

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        private bool GetUpdateResult(int result, IdentityResult updateRoleResult)
        {
            if (result > 0)
            {
                if (updateRoleResult == null || updateRoleResult.Succeeded)
                    return true;
                return false;
            }
            else
            {
                if (updateRoleResult != null && updateRoleResult.Succeeded)
                    return true;
                else
                    return false;
            }
        }

        private void AddRegionsToUser(IList<Region> regionsToAdd, ApplicationUser appUser, Region defaultRegion)
        {
            int[] exitingRegions = appUser.ApplicationUserRegions.Select(arg => arg.RegionId).ToArray();
            int[] newRegionsId = regionsToAdd.Select(newRg => newRg.Id).ToArray();

            foreach (var exRegion in exitingRegions)
            {
                if (!newRegionsId.Contains(exRegion))
                {
                    var regionToRemove = appUser.ApplicationUserRegions.Single<ApplicationUserRegion>(rg => rg.RegionId == exRegion);
                    appUser.ApplicationUserRegions.Remove(regionToRemove);
                }
            }

            //appUser.Regions = new List<Region>();
            foreach (var newRegion in regionsToAdd)
            {
                if (!exitingRegions.Contains(newRegion.Id))
                {
                    //_ctx.Regions.Attach(newRegion);
                    appUser.ApplicationUserRegions.Add(new ApplicationUserRegion() { RegionId = newRegion.Id, ApplicationUserId = appUser.Id });
                }
            }

            if (defaultRegion != null)
            {
                foreach (var userRegion in appUser.ApplicationUserRegions)
                {
                    userRegion.IsDefault = false;
                }

                appUser.ApplicationUserRegions.FirstOrDefault(rg => rg.RegionId == defaultRegion.Id).IsDefault = true;
            }



            //var regionsIds = regionsToAdd.Select(x => x.Id).ToArray<int>();

            //List<Region> regionssFromDb =
            //    this._ctx.Regions.Where(rg => regionsIds.Contains(rg.Id)).ToList();

            //foreach (Region region in regionssFromDb)
            //{
            //    appUser.Regions.Add(region);
            //}
        }

        public async Task<ApplicationUser> FindUser(string userName, string password)
        {
            try
            {
                ApplicationUser user = await _userManager.FindAsync(userName, password);
                return user;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public IList<IdentityRole> GetRoles()
        {
            try
            {
                List<IdentityRole> roles = _roleManager.Roles.ToList<IdentityRole>();
                return roles;
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public IdentityRole GetRole(string roleId)
        {
            try
            {
                IdentityRole role = _roleManager.FindById(roleId);
                return role;
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public IDictionary<string, int> GetInvoiceCount(int regionId)
        {
            var invoiceCountDataDic = new Dictionary<string, int>();  

            var voucherStatuses = Enum.GetValues(typeof(VoucherStatus));
            foreach (Enum status in voucherStatuses)
            {
                string statusDescription = CommonHelper.GetEnumDescription(status);
                int regionCount = _ctx.Vouchers.Where(vou => vou.Region.Id == regionId && statusDescription.ToLower() == vou.Status.ToLower()).Count();
                invoiceCountDataDic.Add(status.ToString(), regionCount);
            }

            return invoiceCountDataDic;
        }

        public void Dispose()
        {
            _ctx.Dispose();
            _userManager.Dispose();

        }
    }
}

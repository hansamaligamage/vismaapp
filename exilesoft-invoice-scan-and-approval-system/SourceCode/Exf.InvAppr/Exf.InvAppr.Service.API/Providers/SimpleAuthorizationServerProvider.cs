using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Data.Repository;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security.OAuth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Script.Serialization;

namespace Exf.InvAppr.Service.API.Providers
{
    public class SimpleAuthorizationServerProvider : OAuthAuthorizationServerProvider
    {
        IdentityRole userRole = null;

        string displayName = string.Empty;
        string userRegionJson = string.Empty;
        string invoiceCountDataJson = string.Empty;

        public override async Task ValidateClientAuthentication(OAuthValidateClientAuthenticationContext context)
        {
            context.Validated();
        }

        public override async Task GrantResourceOwnerCredentials(OAuthGrantResourceOwnerCredentialsContext context)
        {

            context.OwinContext.Response.Headers.Add("Access-Control-Allow-Origin", new[] { "*" });
            ApplicationUser user;
            IList<Region> userRegions = null;
            IDictionary<string, int> invoiceCountDic = null;
            Region defaultRegion = null;

            JavaScriptSerializer jss = new JavaScriptSerializer();

            using (AuthRepository _repo = new AuthRepository())
            {
                user = await _repo.FindUser(context.UserName, context.Password);

                if (user == null)
                {
                    context.SetError("invalid_grant", "The user name or password is incorrect.");
                    return;
                }

                if (user.LockoutEnabled == true)
                {
                    context.SetError("user_lockout", "The user locked and contact your admin.");
                    return;
                }

                userRegions = _repo.GetUserRegion(user.UserName);
                defaultRegion = _repo.GetUserDefaultRegion(user.UserName);
                invoiceCountDic = _repo.GetInvoiceCount(defaultRegion.Id);


                if (user.Roles != null && user.Roles.Count > 0)
                    userRole = _repo.GetRole(user.Roles.FirstOrDefault<IdentityUserRole>().RoleId);
            }

            var identity = new ClaimsIdentity(context.Options.AuthenticationType);
            identity.AddClaim(new Claim("sub", context.UserName));
            identity.AddClaim(new Claim(ClaimTypes.Email, user.Email));
            displayName = user.DisplayName ?? user.Email;
            userRegionJson = jss.Serialize(userRegions.Select(region => new
            {
                Id = region.Id,
                RegionCode = region.RegionCode,
                Description = region.Description,
                CurrencyCode = region.CurrencyCode,
                IsDefault = defaultRegion.Id == region.Id,
                VismaCompanyId = region.VismaCompanyId
            }));

            invoiceCountDataJson = jss.Serialize(invoiceCountDic);
            identity.AddClaim(new Claim(ClaimTypes.Role, GetRoleName(userRole)));
            identity.AddClaim(new Claim(ClaimTypes.NameIdentifier, user.Id));
            identity.AddClaim(new Claim("role", "user"));

            context.Validated(identity);

            identity.AddClaim(new Claim(ClaimTypes.Name, context.UserName));

        }

        private string GetRoleName(IdentityRole _identityRole)
        {
            return _identityRole != null ? _identityRole.Name : String.Empty;
        }

        public override Task TokenEndpointResponse(OAuthTokenEndpointResponseContext context)
        {
            context.AdditionalResponseParameters.Add("userRole", GetRoleName(userRole));
            context.AdditionalResponseParameters.Add("displayName", displayName);
            context.AdditionalResponseParameters.Add("userRegionJson", userRegionJson);
            context.AdditionalResponseParameters.Add("invoiceCountDataJson", invoiceCountDataJson);
            return Task.FromResult<object>(null);
        }

    }
}
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Data.Entities
{
    public class ApplicationUser : IdentityUser
    {
        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<ApplicationUser> manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
            // Add custom user claims here
            return userIdentity;
        }

        //Extended Properties
        public DateTime? BirthDate { get; set; }

        //Key Mappings
        public virtual ICollection<ApplicationUserRegion> ApplicationUserRegions { get; set; }

        public virtual string DisplayName { get; set; }

        public virtual string UserAccountApproverId { get; set; }
        public virtual ApplicationUser UserAccountApprover { get; set; }

        public virtual ICollection<Voucher> ToBeApprovedVoucher { get; set; }
        public virtual ICollection<Voucher> ToBeVerifyVoucher { get; set; }
    }
}

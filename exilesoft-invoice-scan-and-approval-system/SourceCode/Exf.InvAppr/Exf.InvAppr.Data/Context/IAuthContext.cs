using Exf.InvAppr.Data.Entities;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

namespace Exf.InvAppr.Data.Context
{
    public interface IAuthContext 
    {
        IDbSet<Voucher> Vouchers { get; set; }
        IDbSet<Comment> Comments { get; set; }

        IDbSet<Region> Regions { get; set; }
        IDbSet<ApplicationUserRegion> ApplicationUserRegions { get; set; }

        IDbSet<IdentityRole> Roles { get; set; }

        IDbSet<ApplicationUser> Users { get; set; }

        IDbSet<AccountMapping> AccountMappings { get; set; }


        int SaveChanges();
        void MarkAsModified(object entity);
        DbEntityEntry Entry(object entity);

        
    }
}

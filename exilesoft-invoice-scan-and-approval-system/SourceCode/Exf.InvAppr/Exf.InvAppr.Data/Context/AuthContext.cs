using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Data.Migrations;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Principal;

namespace Exf.InvAppr.Data.Context
{
    public class AuthContext : IdentityDbContext<ApplicationUser>, IAuthContext
    {
        private IIdentity loginUser;
        public AuthContext()
            : base("AuthContext")
        {
            //Database.SetInitializer<AuthContext>(null);
            Database.SetInitializer(new MigrateDatabaseToLatestVersion<AuthContext, Configuration>());
        }


        public AuthContext(string connectionString)
           : base(connectionString)
        {
            //Database.SetInitializer<AuthContext>(null);
            Database.SetInitializer(new MigrateDatabaseToLatestVersion<AuthContext, Configuration>());
        }

        public AuthContext(IIdentity _loginUser) : base("AuthContext")
        {
            this.loginUser = _loginUser;
        }


        public IDbSet<Voucher> Vouchers { get; set; }
        public IDbSet<Comment> Comments { get; set; }


        public IDbSet<Region> Regions { get; set; }
        public IDbSet<ApplicationUserRegion> ApplicationUserRegions { get; set; }

        public IDbSet<AccountMapping> AccountMappings { get; set; }

        public IDbSet<TransactionDataTracker> TransactionDataTrackers { get; set; }


        int IAuthContext.SaveChanges()
        {
            var addedAuditedEntities = ChangeTracker.Entries<AuditableBase>()
                .Where(p => p.State == EntityState.Added).
                Select(p => p.Entity);

            var modifiedAuditedEntities = ChangeTracker.Entries<AuditableBase>()
              .Where(p => p.State == EntityState.Modified)
              .Select(p => p.Entity);

            var now = DateTime.Now;

            foreach (var added in addedAuditedEntities)
            {
                added.CreatedDateTime = now;
                added.CreatedBy = loginUser != null ? loginUser.Name : String.Empty;
                added.LastUpdatedDateTime = now;
            }

            foreach (var modified in modifiedAuditedEntities)
            {
                modified.LastUpdatedDateTime = now;
                modified.LastUpdatedBy = loginUser != null ? loginUser.Name : String.Empty;

            }

            return base.SaveChanges();
        }

        public void MarkAsModified(object entity)
        {
            Entry(entity).State = EntityState.Modified;
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<ApplicationUserRegion>().HasKey(apur => new { apur.ApplicationUserId, apur.RegionId });

            modelBuilder.Entity<ApplicationUser>().
                HasOptional(e => e.UserAccountApprover).
                WithMany().
                HasForeignKey(m => m.UserAccountApproverId);

            modelBuilder.Entity<ApplicationUser>().
                HasMany(e => e.ApplicationUserRegions).
                WithRequired().
                HasForeignKey(ap => ap.ApplicationUserId);

            modelBuilder.Entity<Region>().
                HasMany(e => e.ApplicationUserRegions).
                WithRequired().
                HasForeignKey(ap => ap.RegionId);
            //Database.SetInitializer<AuthContext>(null);
            //modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();

            //}

            modelBuilder.Entity<Voucher>()
                    .HasOptional(m => m.Approver)
                    .WithMany(t => t.ToBeApprovedVoucher)
                    .HasForeignKey(m => m.VoucherApproverId)
                    .WillCascadeOnDelete(false);

            modelBuilder.Entity<Voucher>()
                        .HasOptional(m => m.Verifier)
                        .WithMany(t => t.ToBeVerifyVoucher)
                        .HasForeignKey(m => m.VoucherVerifierId)
                        .WillCascadeOnDelete(false);
        }
    }
}

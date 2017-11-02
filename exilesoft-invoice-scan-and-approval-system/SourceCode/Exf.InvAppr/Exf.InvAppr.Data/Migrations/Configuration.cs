namespace Exf.InvAppr.Data.Migrations
{
    using Common;
    using Entities;
    using Exf.InvAppr.Data.Context;
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.EntityFramework;
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    public sealed class Configuration : DbMigrationsConfiguration<Exf.InvAppr.Data.Context.AuthContext>
    {

        List<Region> regions = new List<Region>()
            {
                new Region()
                {
                    RegionCode = "LK",
                    Description = "Sri Lanka",
                    CurrencyCode = "LKR",
                    InvoiceFolderName = "sriLanka",
                    VismaCompanyId = 9999
                    
                },
                new Region()
                {
                    RegionCode = "AUS",
                    Description = "Australia",
                    CurrencyCode = "AUD",
                    InvoiceFolderName = "australia",
                    VismaCompanyId = 9999
                },
                new Region()
                {
                    RegionCode = "SIN",
                    Description = "Singapore",
                    CurrencyCode = "USD",
                    InvoiceFolderName = "singapore",
                    VismaCompanyId = 9999
                }

            };

        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
            // ContextKey = "Exf.InvAppr.Data.Context.AuthContext";
            AutomaticMigrationDataLossAllowed = true;
        }

        protected override void Seed(AuthContext context)
        {

            var exsistingRegionCodes = context.Regions.Select(m => m.RegionCode.ToLower()).ToArray<string>();

            Region[] resionsToUpdate = regions.Where(rg => !exsistingRegionCodes.Contains(rg.RegionCode.ToLower())).ToArray<Region>();

            if (resionsToUpdate != null && resionsToUpdate.Length > 0)
                context.Regions.AddOrUpdate<Region>(resionsToUpdate);

            //AddInvoices(context);
            context.SaveChanges();
        }

        private void AddInvoices(AuthContext context)
        {

            var lkRegion = regions.Single(rg => rg.RegionCode.ToUpper() == "LK");
            var ausRegion = regions.Single(rg => rg.RegionCode.ToUpper() == "AUS");

            var voucher = new Voucher(){
                InvoiceNo = "1",
                Supplier = "ABC Pvt Ltd",
                Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified),
                InvoiceDate = null,
                DueDate = null,
                CreatedDateTime = DateTime.Now,
                LastUpdatedDateTime = DateTime.Now,
                VoucherType = VoucherType.Invoice.ToString(),
                Region = lkRegion,
                FileName = "1.jpg"

            };
            int existing = context.Vouchers.Where(v => v.InvoiceNo == voucher.InvoiceNo).Count();
            if (existing <= 0)
            {
                context.Vouchers.AddOrUpdate(voucher);
            }

            voucher = new Voucher()
            {
                InvoiceNo = "2",
                Supplier = "XYZ Pvt Ltd",
                Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified),
                InvoiceDate = DateTime.Today.AddMonths(-2),
                DueDate = null,
                CreatedDateTime = DateTime.Now,
                LastUpdatedDateTime = DateTime.Now,
                VoucherType = VoucherType.Invoice.ToString(),
                Region = lkRegion,
                FileName = "2.jpg"
            };
            existing = context.Vouchers.Where(v => v.InvoiceNo == voucher.InvoiceNo).Count();
            if (existing <= 0)
            {
                context.Vouchers.AddOrUpdate(voucher);
            }

            voucher = new Voucher()
            {
                InvoiceNo = "3",
                Supplier = "CEB",
                Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified),
                DueDate = DateTime.Today.AddMonths(1),
                InvoiceDate = DateTime.Today.AddMonths(-1),
                CreatedDateTime = DateTime.Now,
                LastUpdatedDateTime = DateTime.Now,
                Amount = 10000,
                VoucherType = VoucherType.Invoice.ToString(),
                Region = lkRegion,
                FileName = "3.jpg"
            };
            existing = context.Vouchers.Where(v => v.InvoiceNo == voucher.InvoiceNo).Count();
            if (existing <= 0)
            {
                context.Vouchers.AddOrUpdate(voucher);
            }

            voucher = new Voucher()
            {
                InvoiceNo = "4",
                Supplier = "National Water board",
                Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified),
                InvoiceDate = DateTime.Today.AddMonths(-1),
                DueDate = null,
                CreatedDateTime = DateTime.Now,
                LastUpdatedDateTime = DateTime.Now,
                VoucherType = VoucherType.Invoice.ToString(),
                Region = ausRegion,
                FileName = "4.jpg"
            };
            existing = context.Vouchers.Where(v => v.InvoiceNo == voucher.InvoiceNo).Count();
            if (existing <= 0)
            {
                context.Vouchers.AddOrUpdate(voucher);
            }

            voucher = new Voucher()
            {
                InvoiceNo = "5",
                Supplier = "Client 123",
                Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified),
                InvoiceDate = null,
                DueDate =  DateTime.Today.AddMonths(1),
                CreatedDateTime = DateTime.Now,
                LastUpdatedDateTime = DateTime.Now,
                VoucherType = VoucherType.Invoice.ToString(),
                Region = ausRegion
            };
            existing = context.Vouchers.Where(v => v.InvoiceNo == voucher.InvoiceNo).Count();
            if (existing <= 0)
            {
                context.Vouchers.AddOrUpdate(voucher);
            }
        }

    }
}

using System.Collections.Generic;

namespace Exf.InvAppr.Data.Entities
{
    public class Region:AuditableBase
    {
        public string RegionCode { get; set; }

        public string Description { get; set; }

        public string CurrencyCode { get; set; }

        public int VismaCompanyId { get; set; }

        public string InvoiceFolderName { get; set; }

        public virtual ICollection<ApplicationUserRegion> ApplicationUserRegions { get; set; }

    }
}
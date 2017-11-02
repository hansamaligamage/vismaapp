using Exf.InvAppr.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Exf.InvAppr.Service.API.Models
{
    public class SearchOptionsDTO
    {
        public string Status { get; set; }
        public string StatusFilter { get; set; }
        public int PageNumber { get; set; }
        public int PageSize { get; set; }
        public int RegionId { get; set; }
        public string SortColumn { get; set; }
        public string SortOrder { get; set; }
        public string InvoiceNo { get; set; }
        public string Supplier { get; set; }
        public string DueDate { get; set; }
        public string InvoiceDate { get; set; }
        public decimal? Amount { get; set; }
        public string Verifier { get; set; }
    }
}


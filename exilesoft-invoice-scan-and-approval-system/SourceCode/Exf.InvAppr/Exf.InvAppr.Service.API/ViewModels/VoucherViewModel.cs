using Exf.InvAppr.Common;
using Exf.InvAppr.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Exf.InvAppr.Service.API.ViewModels
{
    public class VoucherViewModel
    {

        public int Id { get; set; }

        public string InvoiceNo { get; set; }

        public string Supplier { get; set; }

        public DateTime? DueDate { get; set; }

        public DateTime? InvoiceDate { get; set; }

        public decimal Amount { get; set; }

        public string Status { get; set; }

        public AccountStatus? AccountStatus { get; set; }

        public DateTime? LastUpdatedDateTime { get; set; }

        public string Verifier { get; set; }

        public string Approver { get; set; }

        public virtual Region Region { get; set; }

        public string Currency { get; set; }

    }
}
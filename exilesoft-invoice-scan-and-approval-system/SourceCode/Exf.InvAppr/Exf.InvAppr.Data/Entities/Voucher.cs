using Exf.InvAppr.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Data.Entities
{
    public class Voucher : AuditableBase
    {
        public string InvoiceNo { get; set; }

        [Column(TypeName = "datetime2")]
        public DateTime? InvoiceDate { get; set; }

        [Column(TypeName = "datetime2")]
        public DateTime? DueDate { get; set; }

        public string Supplier { get; set; }

        public string Status { get; set; }

        public decimal Amount { get; set; }

        public string PONumber { get; set; }

        public string Currency { get; set; }

        public virtual ApplicationUser Verifier { get; set; }

        public virtual ApplicationUser Approver { get; set; }

        public string VoucherType { get; set; }

        public virtual Region Region { get; set; }

        public string FileName { get; set; }

        public AccountStatus? AccountStatus { get; set; }

        public virtual ICollection<Comment> Comments { get; set; }
        public virtual string  VoucherApproverId { get;  set; }
        public virtual string VoucherVerifierId { get;  set; }

        public virtual ICollection<AccountMapping> VismaAccountMappings { get; set; }
    }
}

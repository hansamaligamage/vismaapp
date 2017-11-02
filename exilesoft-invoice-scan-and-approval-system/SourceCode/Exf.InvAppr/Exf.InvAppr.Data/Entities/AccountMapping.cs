using Exf.InvAppr.Data.Utility;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Data.Entities
{
    public class AccountMapping : AuditableBase
    {
        public virtual Voucher Voucher { get; set; }
        [Required(ErrorMessage ="Voucher id is required.")]
        public int VoucherId { get; set; }

        [JsonProperty("invoiceNo")]
        public string InvoiceNo { get; set; }

        [JsonProperty("debitAccNo")]
        //[Required(ErrorMessage = "Debit Account is required.")]
        public int? DebitAccountId { get; set; }

        [JsonProperty("debitVat")]
        public int? DebitVatId { get; set; }

        [JsonProperty("creditAccNo")]
        //[Required(ErrorMessage = "Credit Account is required.")]
        public int? CreditAccountId { get; set; }

        [JsonProperty("creditVat")]
        public int? CreditVatId { get; set; }

        [JsonProperty("AmountInDefaultCurrency")]
        public decimal AmountInDefaultCurrency { get; set; }

        [JsonProperty("AmountInCurrency1")]
        public decimal? AmountInCurrency1 { get; set; }

        [JsonProperty("Currency1")]
        public int Currency1 { get; set; }

        [JsonProperty("Currency1Code")]
        public string Currency1Code { get; set; }

        [JsonProperty("ExchangeRate1")]
        public decimal? ExchangeRate1 { get; set; }

        [JsonProperty("ExchangeRate1Date")]
        [JsonConverter(typeof(CustomDateConverter))]
        [Column(TypeName = "datetime2")]
        public DateTime? ExchangeRate1Date { get; set; }

        [JsonProperty("voucherDate")]
        [JsonConverter(typeof(CustomDateConverter))]
        [Column(TypeName = "datetime2")]
        public DateTime? VoucherDate { get; set; }

        [JsonProperty("dueDate")]
        [JsonConverter(typeof(CustomDateConverter))]
        [Column(TypeName = "datetime2")]
        public DateTime? DueDate { get; set; }

        [JsonProperty("valueDate")]
        [JsonConverter(typeof(CustomDateConverter))]
        [Column(TypeName = "datetime2")]
        public DateTime? ValueDate { get; set; }

        [JsonProperty("department")]
        public int? DepartmentId { get; set; }

        [JsonProperty("project")]
        public int? ProjectId { get; set; }

        [JsonProperty("employeeId")]
        public int? StaffId { get; set; }

        [JsonProperty("costAllocationId")]
        public int? CostAllocationId { get; set; }

        [JsonProperty("text")]
        public string Text { get; set; }

        public bool IsDraftVersion { get; set; }

    }
}

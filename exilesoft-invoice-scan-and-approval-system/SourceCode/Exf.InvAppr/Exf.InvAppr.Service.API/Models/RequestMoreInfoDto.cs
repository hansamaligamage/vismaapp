using Exf.InvAppr.Service.API.CustomValidation;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Exf.InvAppr.Service.API.Models
{
    public class RequestMoreInfoDto
    {
        [Required(ErrorMessage = "The email to address is required")]
        [EmailAddress(ErrorMessage = "Invalid To Email Address.")]
        public string ToAddress { get; set; }
        [EmailAddressNotRequired(ErrorMessage = "Invalid CC Email Address.")]
        public string CcAddress { get; set; }
        [Required(ErrorMessage = "The email subject is required")]
        public string Subject { get; set; }
        [Required(ErrorMessage = "The email content is required")]
        public string EmailBody { get; set; }
        public bool InvoiceAsAttachment { get; set; }
        [Range(1, int.MaxValue, ErrorMessage = "Invoice number is invalid")]
        public int InvoiceId { get; set; }
        [Required(ErrorMessage ="Invoice status is required.")]
        public string InvoiceStatus { get; set; }
    }
}
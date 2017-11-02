using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Service.Visma.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Exf.InvAppr.Service.API.Models
{
    public class InvoiceDetailsDTO
    {
        public Voucher Voucher { get; set; }
        public List<EntityBase> CurrencyCodes { get; set; }
        public ICollection<ApplicationUser> Approvers {get; set;}
        public ICollection<Account> Suppliers { get; set; }
        public string ImageUrl { get; set; }
    }
}
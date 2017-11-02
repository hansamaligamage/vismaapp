using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Service.API.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Exf.InvAppr.Service.API.Models
{
    public class VoucherListDTO
    {
        public IList<VoucherViewModel> voucherList { get; set; }
        public int totalCount { get; set; }
    }
}
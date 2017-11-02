using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Service.Visma.Dto
{
    public class Batch
    {
        public int BatchNo { get; set; }
        public int VoucherNo { get; set; }
        public string DebitName { get; set; }
        public string CreditName { get; set; }
    }
}

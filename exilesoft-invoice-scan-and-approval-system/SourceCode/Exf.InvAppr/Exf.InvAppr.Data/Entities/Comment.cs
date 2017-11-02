using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace Exf.InvAppr.Data.Entities
{
    public class Comment : AuditableBase
    {
        public string Text { get; set; }

        [ScriptIgnore(ApplyToOverrides = true)]
        public virtual Voucher Voucher { get; set; }
    }
}

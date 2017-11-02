using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Data.Entities
{
    public class TransactionDataTracker : AuditableBase
    {

        public string TableName { get; set; }

        public int SequenceNumber{ get; set; }

        public int Status { get; set; }

    }
}

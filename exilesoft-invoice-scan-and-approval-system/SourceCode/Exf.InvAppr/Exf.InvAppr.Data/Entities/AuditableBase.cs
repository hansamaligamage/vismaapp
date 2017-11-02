using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Data.Entities
{
    public class AuditableBase
    {
        public int Id { get; set; }
        [Column(TypeName = "datetime2")]
        public DateTime? CreatedDateTime { get; set; }
        [Column(TypeName = "datetime2")]
        public DateTime? LastUpdatedDateTime { get; set; }
        public string CreatedBy { get; set; }
        public string LastUpdatedBy { get; set; }
    }
}

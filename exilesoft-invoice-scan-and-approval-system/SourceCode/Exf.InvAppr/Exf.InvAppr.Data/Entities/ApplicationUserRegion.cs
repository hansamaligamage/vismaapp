using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Data.Entities
{
    public class ApplicationUserRegion
    {
        public string ApplicationUserId { get; set; }

        public int RegionId { get; set; }

        public bool IsDefault { get; set; }
    }
}

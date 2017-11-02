using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Common.Email.EmailTemplateDto
{
    public class AccountApproveTemplate:BaseTemplate
    {
        public string DisplayName { get; set; }
        public string UserId { get; set; }
        public string UserRole { get; set; }
    }
}

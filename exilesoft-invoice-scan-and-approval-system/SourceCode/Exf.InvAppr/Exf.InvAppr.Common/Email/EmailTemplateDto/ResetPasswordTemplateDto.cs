using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Common.Email.EmailTemplateDto
{
    public class ResetPasswordTemplateDto:BaseTemplate
    {
        public string Username { get; set; }
        public string PasswordResetToken { get; set; }
    }
}

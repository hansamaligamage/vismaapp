using Exf.InvAppr.Common.Email;
using Exf.InvAppr.Common.Email.EmailTemplateDto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Common
{
    class Program
    {
        static void Main(string[] args)
        {
            string jsonText = "{ \"id\":\"23\",\"name\":\"amal shalika\",\"templateType\":\"VerifyCompleted\"}";

            EmailDto mailDto = new EmailDto()
            {
                EmailSubject = "New Invoice Waiting for Approval",
                MailRecipientsTo = new string[] { "aat@exilesoft.com" },
                TemplateType = TemplateType.VerifyCompleted
            };

            new EmailClient().SendMail(mailDto);
        }
    }
}

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Common.Email.EmailTemplateDto
{
    public class EmailDto
    {
        public string EmailSubject { get; set; }
        public string[] MailRecipientsTo { get; set; }
        public string[] MailRecipientsCc { get; set; }
        public string MailContent { get; set; }
        public TemplateType TemplateType { get; set; }
        public BaseTemplate EmailTemplate { get; set; }
        public string Attachment { get; set; }
        //used to get invoice image stored in blob storage
        public MemoryStream BlobAttachment { get; set; }

    }
}

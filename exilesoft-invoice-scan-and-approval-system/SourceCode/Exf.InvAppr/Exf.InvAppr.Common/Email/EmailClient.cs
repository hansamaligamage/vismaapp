using Exf.InvAppr.Common.Email.EmailTemplateDto;
using System;
using System.Configuration;
using System.IO;
using System.Net.Mail;
using System.Reflection;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Hosting;

namespace Exf.InvAppr.Common.Email
{
    public class EmailClient
    {
        string emailServer = String.Empty;
        int emailPort = 0;
        string emailCredentialUserName = string.Empty;
        string emailCredentialPassword = string.Empty;
        string fromAddress = string.Empty;
        string displayName = string.Empty;


        public EmailClient()
        {
            emailServer = ConfigurationManager.AppSettings.EmailServer();
            emailPort = ConfigurationManager.AppSettings.EmailPort();
            emailCredentialUserName = ConfigurationManager.AppSettings["EmailUsername"];
            emailCredentialPassword = ConfigurationManager.AppSettings["EmailPassword"];
            fromAddress = ConfigurationManager.AppSettings["EmailFromAddress"];
            displayName = ConfigurationManager.AppSettings["EmailDisplayName"];

        }

        public void SendMail(EmailDto mailDto)
        {
            try
            {
                SmtpClient smtpClient = EmailClientBuilder();
                var emailMessage = MessageBuilder(mailDto.EmailTemplate, mailDto);
                Task.Run(() => smtpClient.Send(emailMessage));
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        private SmtpClient EmailClientBuilder()
        {
            SmtpClient smtpClient = new SmtpClient(emailServer, emailPort);
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new System.Net.NetworkCredential(emailCredentialUserName, emailCredentialPassword);
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = true;
            return smtpClient;
        }

        public MailMessage MessageBuilder(BaseTemplate templateDto, EmailDto mailDto)
        {
            MailMessage mail = new MailMessage();
            string mailBody = string.Empty;
            //Setting From , To and CC
            mail.From = new MailAddress(fromAddress, displayName);
            if (templateDto == null)
            {
                mailBody = mailDto.MailContent;
            }
            else
            {
                mailBody = LoadTemplateData(mailDto.TemplateType, templateDto);
            }

            mail.Body = mailBody;
            mail.Subject = mailDto.EmailSubject;
            mail.IsBodyHtml = true;

            if (!String.IsNullOrEmpty(mailDto.Attachment))
            {
                Attachment attachment = new Attachment(mailDto.Attachment);
                mail.Attachments.Add(attachment);
            }

            if(mailDto.BlobAttachment != null && mailDto.BlobAttachment.Length != 0)
            {
                mail.Attachments.Add(new Attachment(mailDto.BlobAttachment, "invoice"));
            }

            foreach (var mailRecipient in mailDto.MailRecipientsTo ?? new string[0])
            {
                mail.To.Add(new MailAddress(mailRecipient));
            }

            foreach (var mailRecipient in mailDto.MailRecipientsCc ?? new string[0])
            {
                mail.CC.Add(new MailAddress(mailRecipient));
            }

            return mail;
        }


        public string LoadTemplateData(TemplateType templateType, BaseTemplate _templateDto)
        {
            var templateSubFolder = "Release";
            #if DEBUG
            templateSubFolder = "Debug";
            #endif


            string templateText = string.Empty;
            PropertyInfo[] listOfProperties = null;

            switch (templateType)
            {

                case TemplateType.VerifyCompleted:
                    templateText = File.ReadAllText(GetTemplatePath("VerifyTemplate.html", templateSubFolder));
                    listOfProperties = typeof(VerifyTemplateDto).GetProperties();
                    break;
                case TemplateType.UserAccountApprove:
                    templateText =
                        File.ReadAllText(GetTemplatePath("UserAccountApproverTemplate.html", templateSubFolder));
                    listOfProperties = typeof(AccountApproveTemplate).GetProperties();
                    break;
                case TemplateType.NewUserApproved:
                    templateText = File.ReadAllText(GetTemplatePath("NewUserApprovedTemplate.html", templateSubFolder));
                    listOfProperties = typeof(AccountApproveTemplate).GetProperties();
                    break;
                case TemplateType.ResetPassword:
                    templateText = File.ReadAllText(GetTemplatePath("ResetPasswordRequest.html", templateSubFolder));
                    listOfProperties = typeof(ResetPasswordTemplateDto).GetProperties();
                    break;

            }

            if (_templateDto != null)
            {

                foreach (var prop in listOfProperties)
                {
                    var propValue = prop.GetValue(_templateDto) != null ? prop.GetValue(_templateDto).ToString() : String.Empty;
                    templateText = templateText.Replace("{{" + prop.Name.ToLower() + "}}", propValue);

                }
            }

            return templateText;
        }

        private static string GetTemplatePath(string templateName, string subFolder)
        {
            return HostingEnvironment.MapPath(@"~\bin\Email\MailTemplate\" + subFolder + @"\" + templateName);
        }
    }
}

using Exf.InvAppr.Common.Email.EmailTemplateDto;
using Newtonsoft.Json.Linq;
using System;

namespace Exf.InvAppr.Common.Email
{
    public class EmailUtility
    {
        public static BaseTemplate InitializeTemplateDto(string jsonText)
        {
            BaseTemplate _templateDto = null;
            dynamic templateData = JObject.Parse(jsonText);
            TemplateType incommingTemplateType = (TemplateType)Enum.Parse(typeof(TemplateType), templateData.templateType.ToString());

            switch (incommingTemplateType)
            {
                case TemplateType.VerifyCompleted:
                    _templateDto = new VerifyTemplateDto();
                    break;
                case TemplateType.UserAccountApprove:
                    _templateDto = new AccountApproveTemplate();
                    break;
                default:
                    break;
            }

            return _templateDto;
        }
    }
}

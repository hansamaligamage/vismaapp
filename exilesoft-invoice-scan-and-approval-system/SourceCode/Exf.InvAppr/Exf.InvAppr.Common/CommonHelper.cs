using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Common
{
    public class CommonHelper
    {
        public static string GetEnumDescription(Enum value)
        {
            FieldInfo fi = value.GetType().GetField(value.ToString());

            DescriptionAttribute[] attributes =
                (DescriptionAttribute[])fi.GetCustomAttributes(typeof(DescriptionAttribute), false);

            if (attributes != null && attributes.Length > 0)
                return attributes[0].Description;
            else
                return value.ToString();
        }

        public static IEnumerable<string> GetDescriptions(Type type)
        {
            var descriptions = new List<string>();

            FieldInfo[] fields = type.GetType().GetFields();

            foreach (var field in fields)
            {
                DescriptionAttribute[] attributes =
                    (DescriptionAttribute[])field.GetCustomAttributes(typeof(DescriptionAttribute), false);

                if (attributes != null && attributes.Length > 0)
                    descriptions.Add(attributes[0].Description);
                else
                    descriptions.Add(field.Name.ToString());
            }
            return descriptions;
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Exf.InvAppr.Service.API.CustomValidation
{
    public class EmailAddressNotRequired:ValidationAttribute
    {
       
        public override bool IsValid(object value)
        {
            var foo = new EmailAddressAttribute();

            if (String.IsNullOrEmpty("") || foo.IsValid(value))
                return true;

            return false;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;

namespace Exf.InvAppr.Service.API.Models
{
    public class UserIdentity 
    {
        private ClaimsIdentity claimsIdentity;
        public UserIdentity(ClaimsIdentity _claimsIdentity)
        {
            this.claimsIdentity = _claimsIdentity;
        }
        public string Email
        {
            get
            {
                return claimsIdentity.Claims.Where(c => c.Type == ClaimTypes.Email).Single().Value;
            }
        }

        public string UserName
        {
            get
            {
                return claimsIdentity.Claims.Where(c => c.Type == ClaimTypes.Name).Single().Value;
            }
        }

        public string UserRole
        {
            get
            {
                return claimsIdentity.Claims.Where(c => c.Type == ClaimTypes.Role).Single().Value;
            }
        }
    }
}
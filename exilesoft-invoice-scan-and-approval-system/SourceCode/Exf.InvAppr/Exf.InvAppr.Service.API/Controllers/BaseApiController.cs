using Exf.InvAppr.Data.Context;
using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Service.API.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security.DataProtection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Text;
using System.Web.Http;

namespace Exf.InvAppr.Service.API.Controllers
{

    public abstract class BaseApiController : ApiController
    {
        internal IAuthContext context;
        public UserIdentity UserIdentity { get; set; }

        public UserManager<ApplicationUser> AppUserManager;

        public RoleManager<IdentityRole> AppRoleManager;

        public BaseApiController()
        {
            this.context = new AuthContext(User.Identity);
            UserIdentity = new UserIdentity((ClaimsIdentity)User.Identity);

            var provider = new DpapiDataProtectionProvider("ExfInvApp");
            

            AppUserManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new AuthContext(User.Identity)));
            AppUserManager.UserTokenProvider = new DataProtectorTokenProvider<ApplicationUser>(provider.Create("UserToken"));
               
            AppRoleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(new AuthContext(User.Identity)));
        }

        public BaseApiController(IAuthContext context)
        {
            this.context = context;
        }

        internal HttpResponseMessage GetSucessResponce(string data, string type = null)
        {
            HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(data, Encoding.UTF8, type);
            return response;
        }

        internal HttpResponseMessage GetFailResponce(HttpStatusCode statusCode, string content)
        {
            HttpResponseMessage response = Request.CreateResponse(statusCode);
            response.Content = new StringContent(content, Encoding.UTF8, "application/text");
            return response;
        }
    }
}

using Exf.InvAppr.Common.Email;
using Exf.InvAppr.Common.Email.EmailTemplateDto;
using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Data.Models;
using Exf.InvAppr.Data.Repository;
using Exf.InvAppr.Service.API.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNetCore.WebUtilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Script.Serialization;

namespace Exf.InvAppr.Service.API.Controllers
{
    [RoutePrefix("api/Account")]
    public class AccountController : BaseApiController
    {
        private AuthRepository _repo = null;

        public AccountController() : base()
        {
            _repo = new AuthRepository();
        }

        // POST api/Account/Register
        [AllowAnonymous]
        [Route("Register")]
        [HttpPost]
        public async Task<IHttpActionResult> Register(UserModel userModel)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }


            try
            {
                IdentityResult result = await _repo.RegisterUser(userModel);

                IHttpActionResult errorResult = GetErrorResult(result);

                if (errorResult != null)
                {
                    return errorResult;
                }
                else
                {
                    var newlyAddedUser = AppUserManager.FindByName(userModel.EmailAddress);

                    new EmailClient().SendMail(new EmailDto()
                    {
                        EmailSubject = "User Account Approval Reqeust",
                        EmailTemplate = new AccountApproveTemplate()
                        {
                            DisplayName = userModel.DisplayName,
                            UserRole = userModel.Role,
                            UserId = newlyAddedUser.Id
                        },
                        MailRecipientsTo = new string[] { userModel.AccountApprover.Email },
                        TemplateType = TemplateType.UserAccountApprove
                    });


                    //Email send to acknowledge to admin new user is registered.
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Ok();
        }

        [Route("roles")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Roles()
        {
            HttpResponseMessage responseMessage;
            JavaScriptSerializer jss = new JavaScriptSerializer();

            try
            {
                IList<String> result = _repo.GetRoles().Select(role => role.Name).ToList<String>();

                responseMessage = new HttpResponseMessage(System.Net.HttpStatusCode.OK);
                responseMessage.Content = new StringContent(jss.Serialize(result), Encoding.UTF8, "application/json");
            }
            catch (Exception ex)
            {
                responseMessage = new HttpResponseMessage(System.Net.HttpStatusCode.InternalServerError);
                responseMessage.Content = new StringContent(jss.Serialize(ex.ToString()), Encoding.UTF8, "application/json");
            }

            return responseMessage;
        }

        [Route("getadmin")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage GetAdmins()
        {
            HttpResponseMessage responseMessage;
            JavaScriptSerializer jss = new JavaScriptSerializer();

            try
            {
                var adminRoleId = AppRoleManager.Roles.Where(role => role.Name == "Admin").SingleOrDefault<IdentityRole>().Id;
                IList<ApplicationUser> adminUsers = AppUserManager.Users.Where(user => user.Roles.Any(role => role.RoleId == adminRoleId)).ToList<ApplicationUser>();

                responseMessage = new HttpResponseMessage(System.Net.HttpStatusCode.OK);
                responseMessage.Content = new StringContent(jss.Serialize(adminUsers.Select(user => new
                {
                    Id = user.Id,
                    UserName = user.UserName,
                    Email = user.Email
                })), Encoding.UTF8, "application/json");
            }
            catch (Exception ex)
            {
                responseMessage = new HttpResponseMessage(System.Net.HttpStatusCode.InternalServerError);
                responseMessage.Content = new StringContent(jss.Serialize(ex.ToString()), Encoding.UTF8, "application/json");
            }

            return responseMessage;
        }

        [Route("getregions")]
        [HttpGet]
        public HttpResponseMessage GetAllRegions()
        {
            HttpResponseMessage responseMessage;
            JavaScriptSerializer jss = new JavaScriptSerializer();

            try
            {
                var listOfRegions = context.Regions.Select(rg => new { Id = rg.Id, RegionCode = rg.RegionCode }).ToList();


                responseMessage = new HttpResponseMessage()
                {
                    StatusCode = HttpStatusCode.OK,
                    Content = new StringContent(jss.Serialize(listOfRegions), Encoding.UTF8, "application/json")
                };
            }
            catch (Exception ex)
            {
                responseMessage = new HttpResponseMessage(System.Net.HttpStatusCode.InternalServerError);
                responseMessage.Content = new StringContent(jss.Serialize(ex.ToString()), Encoding.UTF8, "application/json");
            }

            return responseMessage;
        }

        /// <summary>
        /// Update user information with user approval
        /// </summary>
        /// <param name="userModel"></param>
        /// <returns></returns>
        /// 
        [Route("user/approved")]
        [HttpPost]
        [Authorize]
        public HttpResponseMessage ApproveNewUser(UserModel userModel)
        {

            HttpResponseMessage responseMessage;
            JavaScriptSerializer jss = new JavaScriptSerializer();

            try
            {
                var result = _repo.ApproveNewUser(userModel);

                if (result)
                {

                    new EmailClient().SendMail(new EmailDto()
                    {
                        EmailSubject = "New User Registration Approved",
                        EmailTemplate = new AccountApproveTemplate()
                        {
                            DisplayName = userModel.DisplayName
                        },
                        MailRecipientsTo = new string[] { userModel.EmailAddress },
                        TemplateType = TemplateType.NewUserApproved
                    });

                    responseMessage = new HttpResponseMessage()
                    {
                        StatusCode = HttpStatusCode.OK,
                        Content = new StringContent(jss.Serialize("Successfully Updated."), Encoding.UTF8, "application/json")
                    };
                }
                else
                {
                    responseMessage = new HttpResponseMessage()
                    {
                        StatusCode = HttpStatusCode.BadRequest,
                        Content = new StringContent(jss.Serialize("No data updated or error on update."), Encoding.UTF8, "application/json")
                    };
                }
            }
            catch (Exception ex)
            {
                responseMessage = new HttpResponseMessage(System.Net.HttpStatusCode.InternalServerError);
                responseMessage.Content = new StringContent(jss.Serialize(ex.Message), Encoding.UTF8, "application/json");
            }

            return responseMessage;

        }

        [Route("getuser/{userid}")]
        [HttpGet]
        [Authorize]
        public HttpResponseMessage GetUser(string userid)
        {
            HttpResponseMessage responseMessage;
            JavaScriptSerializer jss = new JavaScriptSerializer();

            try
            {
                var newUser = AppUserManager.FindById(userid);
                var userRoles = AppUserManager.GetRoles(userid).FirstOrDefault<string>();
                var exitingRegionIds = newUser.ApplicationUserRegions.Select(rg => rg.RegionId).ToArray<int>();


                var defaultRegion = newUser.ApplicationUserRegions.FirstOrDefault(aprg => aprg.IsDefault);
                var resultUser = new
                {
                    Id = newUser.Id,
                    UserName = newUser.UserName,
                    DisplayName = newUser.DisplayName,
                    Regions = context.Regions.Select(rg => new { Id = rg.Id, RegionCode = rg.RegionCode, Description = rg.Description }).
                    Where(rg => exitingRegionIds.Contains(rg.Id)),
                    UserRole = userRoles,
                    DefaultRegion = context.Regions.Select(rg => new { Id = rg.Id, RegionCode = rg.RegionCode, Description = rg.Description }).
                                FirstOrDefault(rg => defaultRegion.RegionId == rg.Id)
                };

                responseMessage = new HttpResponseMessage()
                {
                    StatusCode = HttpStatusCode.OK,
                    Content = new StringContent(jss.Serialize(resultUser), Encoding.UTF8, "application/json")
                };
            }
            catch (Exception ex)
            {
                responseMessage = new HttpResponseMessage(System.Net.HttpStatusCode.InternalServerError);
                responseMessage.Content = new StringContent(jss.Serialize(ex.Message), Encoding.UTF8, "application/json");
            }

            return responseMessage;
        }

        [Route("requestpasswordreset/{username}")]
        [HttpGet]
        public HttpResponseMessage RequestResetPassword(string username)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(username))
                {
                    return GetFailResponce(HttpStatusCode.BadRequest, "Username should not be empty.");
                }

                var requestUser = AppUserManager.FindByName(username);

                if (requestUser != null)
                {
                    //double encorded to avoid %2F in url



                    string resetPasswordToken = AppUserManager.GeneratePasswordResetToken(requestUser.Id);
                    byte[] tokenGeneratedBytes = Encoding.UTF8.GetBytes(resetPasswordToken);
                    var codeEncoded = WebEncoders.Base64UrlEncode(tokenGeneratedBytes);

                    new EmailClient().SendMail(new EmailDto()
                    {
                        EmailSubject = "Reset your password",
                        EmailTemplate = new ResetPasswordTemplateDto()
                        {
                            Username = username,
                            PasswordResetToken = codeEncoded
                        },
                        MailRecipientsTo = new string[] { requestUser.Email },
                        TemplateType = TemplateType.ResetPassword
                    });

                    return GetSucessResponce("Email will be received to reset password.");
                }
                else
                {
                    return GetFailResponce(HttpStatusCode.NotFound, "Username does not exist.");
                }
            }
            catch(Exception ex)
            {
                return GetFailResponce(HttpStatusCode.BadRequest, ex.Message + ex.StackTrace);
            }
        }


        [Route("passwordreset")]
        [HttpPost]
        public async Task<IHttpActionResult> ResetPassword(ResetPasswordModel resetPasswordModel)
        {
            if (ModelState.IsValid)
            {
                ApplicationUser appUser = AppUserManager.FindByName(resetPasswordModel.Username);

                //double decoded since double encorded
                var codeDecodedBytes = WebEncoders.Base64UrlDecode(resetPasswordModel.ResetToken);
                var codeDecoded = Encoding.UTF8.GetString(codeDecodedBytes);

                IdentityResult result = await AppUserManager.ResetPasswordAsync(appUser.Id, codeDecoded, resetPasswordModel.Password);
                if (!result.Succeeded)
                {
                    return GetErrorResult(result);
                }

                return Ok();

            }
            return BadRequest(ModelState);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _repo.Dispose();
            }

            base.Dispose(disposing);
        }

        private IHttpActionResult GetErrorResult(IdentityResult result)
        {
            if (result == null)
            {
                return InternalServerError();
            }

            if (!result.Succeeded)
            {
                if (result.Errors != null)
                {
                    foreach (string error in result.Errors)
                    {
                        ModelState.AddModelError("", error);
                    }
                }

                if (ModelState.IsValid)
                {
                    // No ModelState errors are available to send, so just return an empty BadRequest.
                    return BadRequest();
                }

                return BadRequest(ModelState);
            }

            return null;
        }
    }
}
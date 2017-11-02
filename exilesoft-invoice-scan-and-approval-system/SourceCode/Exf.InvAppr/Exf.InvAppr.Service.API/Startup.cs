using Exf.InvAppr.Data.Context;
using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Service.API.Providers;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin;
using Microsoft.Owin.Security.OAuth;
using Owin;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Http;

[assembly: OwinStartup(typeof(Exf.InvAppr.Service.API.Startup))]
namespace Exf.InvAppr.Service.API
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            HttpConfiguration config = new HttpConfiguration();

            config.Formatters.JsonFormatter.SerializerSettings.ReferenceLoopHandling 
                = Newtonsoft.Json.ReferenceLoopHandling.Ignore;
            ConfigureOAuth(app);
            WebApiConfig.Register(config);
            CreateRolesandAdminUser();
            app.UseCors(Microsoft.Owin.Cors.CorsOptions.AllowAll);
            app.UseWebApi(config);
        }

        public void ConfigureOAuth(IAppBuilder app)
        {
            OAuthAuthorizationServerOptions oAuthServerOptions = new OAuthAuthorizationServerOptions()
            {
                AllowInsecureHttp = true,
                TokenEndpointPath = new PathString("/token"),
                AccessTokenExpireTimeSpan = TimeSpan.FromDays(1),
                Provider = new SimpleAuthorizationServerProvider()
            };

            app.UseOAuthAuthorizationServer(oAuthServerOptions);
            app.UseOAuthBearerAuthentication(new OAuthBearerAuthenticationOptions());
        }

        // In this method we will create default User roles and Admin user for login   
        private void CreateRolesandAdminUser()
        {
            AuthContext context = new AuthContext();
            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
            var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));


            // In Startup iam creating first Admin Role and creating a default Admin User    
            if (!roleManager.RoleExists("Admin"))
            {

                // first we create Admin rool   
                var role = new IdentityRole()
                {
                    Name = "Admin"
                };
                roleManager.Create(role);

                //Here we create a Admin super user who will maintain the website                  

                var adminUser = new ApplicationUser()
                {
                    UserName = "aat@exilesoft.com",
                    Email = "aat@exilesoft.com",
                    DisplayName = "Amal"
                };

                string userPWD = "eXile1234";

                var chkUser = userManager.Create(adminUser, userPWD);

                //Add default User to Role Admin   
                if (chkUser.Succeeded)
                {
                    adminUser.ApplicationUserRegions = new List<ApplicationUserRegion>();

                    adminUser.ApplicationUserRegions.Add(new ApplicationUserRegion()
                    {
                        RegionId = context.Regions.Single(rg => rg.RegionCode.ToLower() == "lk").Id,
                        IsDefault = true
                    });

                    adminUser.ApplicationUserRegions.Add(new ApplicationUserRegion()
                    {
                        RegionId = context.Regions.Single(rg => rg.RegionCode.ToLower() == "aus").Id,
                        IsDefault = false
                    });

                    adminUser.ApplicationUserRegions.Add(new ApplicationUserRegion()
                    {
                        RegionId = context.Regions.Single(rg => rg.RegionCode.ToLower() == "sin").Id,
                        IsDefault = false
                    });

                    //context.Regions.Single(rg => rg.RegionCode.ToLower() == "lk").ApplicationUsers.Add(adminUser);
                    //context.Regions.Single(rg => rg.RegionCode.ToLower() == "aus").ApplicationUsers.Add(adminUser);
                    //context.Regions.Single(rg => rg.RegionCode.ToLower() == "sin").ApplicationUsers.Add(adminUser);
                    context.SaveChanges();
                    var result1 = userManager.AddToRole(adminUser.Id, "Admin");

                }
            }

            // creating Creating Approver role    
            if (!roleManager.RoleExists("Admin"))
            {
                var adminRole = new IdentityRole()
                {
                    Name = "Admin"
                };
                roleManager.Create(adminRole);

            }
            else { 

                var admin = new ApplicationUser()
                {
                    UserName = "ham@exilesoft.com",
                    Email = "ham@exilesoft.com",
                    DisplayName = "Hansamali"
                };

                string userPWD = "eXile1234";

                var chkUser = userManager.Create(admin, userPWD);

                //Add default User to Role Admin   
                if (chkUser.Succeeded)
                {
                    admin.ApplicationUserRegions = new List<ApplicationUserRegion>();
                    admin.ApplicationUserRegions.Add(new ApplicationUserRegion()
                    {
                        RegionId = context.Regions.Single(rg => rg.RegionCode.ToLower() == "lk").Id,
                        IsDefault = true
                    });
                    admin.ApplicationUserRegions.Add(new ApplicationUserRegion()
                    {
                        RegionId = context.Regions.Single(rg => rg.RegionCode.ToLower() == "aus").Id,
                        IsDefault = false
                    });

                    //context.Regions.Single(rg => rg.RegionCode.ToLower() == "lk").ApplicationUsers.Add(approver);
                    context.SaveChanges();
                    var result1 = userManager.AddToRole(admin.Id, "Admin");

                }

            }

            // creating Creating Employee role    
            if (!roleManager.RoleExists("Approver"))
            {
                var approverRole = new IdentityRole()
                {
                    Name = "Approver"
                };

                roleManager.Create(approverRole);

                var approver = new ApplicationUser()
                {
                    UserName = "approver@exilesoft.com",
                    Email = "ham@tiqri.com",
                    DisplayName = "Approver"
                };

                string userPWD = "eXile1234";

                var chkUser = userManager.Create(approver, userPWD);

                //Add default User to Role Admin   
                if (chkUser.Succeeded)
                {
                    approver.ApplicationUserRegions = new List<ApplicationUserRegion>();
                    approver.ApplicationUserRegions.Add(new ApplicationUserRegion()
                    {
                        RegionId = context.Regions.Single(rg => rg.RegionCode.ToLower() == "lk").Id,
                        IsDefault = true
                    });

                    //context.Regions.Single(rg => rg.RegionCode.ToLower() == "lk").ApplicationUsers.Add(approver);
                    context.SaveChanges();
                    var result1 = userManager.AddToRole(approver.Id, "Approver");
                }
            }

            // creating Creating Employee role    
            if (!roleManager.RoleExists("Verifier"))
            {
                var verifierRole = new IdentityRole()
                {
                    Name = "Verifier"
                };

                roleManager.Create(verifierRole);

                var verifier = new ApplicationUser()
                {
                    UserName = "verifier@exilesoft.com",
                    Email = "ham@tiqri.com",
                    DisplayName = "Verifier"
                };

                string userPWD = "eXile1234";

                var chkUser = userManager.Create(verifier, userPWD);

                //Add default User to Role Admin   
                if (chkUser.Succeeded)
                {
                    verifier.ApplicationUserRegions = new List<ApplicationUserRegion>();
                    verifier.ApplicationUserRegions.Add(new ApplicationUserRegion()
                    {
                        RegionId = context.Regions.Single(rg => rg.RegionCode.ToLower() == "lk").Id,
                        IsDefault = true
                    });

                    //context.Regions.Single(rg => rg.RegionCode.ToLower() == "lk").ApplicationUsers.Add(approver);
                    context.SaveChanges();
                    var result1 = userManager.AddToRole(verifier.Id, "Verifier");


                }
            }
        }
    }
}
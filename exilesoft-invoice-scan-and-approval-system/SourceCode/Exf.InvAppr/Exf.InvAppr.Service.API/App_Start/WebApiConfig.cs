using Exf.InvAppr.Data.Context;
using Newtonsoft.Json.Serialization;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net.Http.Formatting;
using System.Web.Http;
using Exf.InvAppr.Data.Migrations;
using Newtonsoft.Json;

namespace Exf.InvAppr.Service.API
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );

            config.Routes.MapHttpRoute(
                name: "EmailRoute",
                routeTemplate: "api/{controller}/{email}/",
                defaults: new { email = RouteParameter.Optional }
            );

            Database.SetInitializer(new MigrateDatabaseToLatestVersion<AuthContext, Configuration>());

            
            JsonConvert.DefaultSettings = () => new JsonSerializerSettings
            {
                Formatting = Newtonsoft.Json.Formatting.Indented,
                PreserveReferencesHandling = Newtonsoft.Json.PreserveReferencesHandling.Objects
            };
        }
    }
}

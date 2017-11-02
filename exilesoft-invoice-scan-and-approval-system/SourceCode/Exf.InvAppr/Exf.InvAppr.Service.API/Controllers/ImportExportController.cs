using System;
using System.Net;
using System.Net.Http;
using System.Web.Mvc;

namespace Exf.InvAppr.Service.API.Controllers
{
    [RoutePrefix("api")]
    [Authorize]
    public class ImportExportController : BaseApiController
    {
        public HttpResponseMessage Import()
        {
            try
            {
                return GetSucessResponce("Invoice Updated", "text/plain");
            }
            catch (Exception ex)
            {

                return GetFailResponce(HttpStatusCode.InternalServerError, ex.ToString());
            }
        }
    }
}
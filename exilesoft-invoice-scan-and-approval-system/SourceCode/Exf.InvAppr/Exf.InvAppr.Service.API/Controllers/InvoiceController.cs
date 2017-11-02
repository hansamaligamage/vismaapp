using Exf.InvAppr.Common;
using Exf.InvAppr.Common.Email;
using Exf.InvAppr.Common.Email.EmailTemplateDto;
using Exf.InvAppr.Data.Context;
using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Service.API.Models;
using Microsoft.AspNet.Identity;
using Exf.InvAppr.Service.Visma;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Linq.Expressions;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Script.Serialization;
using Microsoft.WindowsAzure.Storage.Blob;
using Microsoft.WindowsAzure.Storage;
using Exf.InvAppr.Service.API.ViewModels;
using Exf.InvAppr.Sync.Visma;
using Exf.InvAppr.Service.Visma.Dto;

namespace Exf.InvAppr.Service.API.Controllers
{
    [RoutePrefix("api")]
    [Authorize]
    public class InvoiceController : BaseApiController
    {

        public InvoiceController()
            : base()
        {
            var result = AppUserManager.FindByNameAsync("sadf");
        }
        public InvoiceController(IAuthContext context)
            : base(context)
        {
        }

        private IVismaConnector GetVismaConnection()
        {
            if (ConfigurationManager.AppSettings.IsVismaApiAccess())
                return new VismaApiConnector();
            return new VismaMasterDataConnector();
        }

        [Route("bulkApprove"), HttpPut]
        public HttpResponseMessage BulkApprove(HttpRequestMessage request)
        {
            JavaScriptSerializer jss = new JavaScriptSerializer();
            var content = request.Content.ReadAsStringAsync().Result;
            var listOfVouches = JsonConvert.DeserializeObject<List<Voucher>>(content);
            Dictionary<string, string> verifierCollection = new Dictionary<string, string>();

            try
            {
                foreach (var voucher in listOfVouches)
                {
                    context.Vouchers.Attach(voucher);
                    voucher.Status = CommonHelper.GetEnumDescription(VoucherStatus.Approved);
                }

                context.SaveChanges();

                NotifyToVerifier(listOfVouches);

            }
            catch (Exception ex)
            {

                return GetFailResponce(HttpStatusCode.InternalServerError, jss.Serialize(ex.ToString()));
            }

            return GetSucessResponce("Invoices successfully updated.", "text/plain");
        }

        [Route("bulkApproveNew"), HttpPut]
        public HttpResponseMessage BulkApproveNew(Voucher listOfVouches)
        {
            List<Voucher> notifyVourchers = new List<Voucher>();
            JavaScriptSerializer jss = new JavaScriptSerializer();
            //var content = request.Content.ReadAsStringAsync().Result;
            //var listOfVouches = JsonConvert.DeserializeObject<List<Voucher>>(content);
            Dictionary<string, string> verifierCollection = new Dictionary<string, string>();

            try
            {
                //foreach (var voucher in listOfVouches)
                //{
                context.Vouchers.Attach(listOfVouches);
                listOfVouches.Status = CommonHelper.GetEnumDescription(VoucherStatus.Approved);
                notifyVourchers.Add(listOfVouches);
                //}

                context.SaveChanges();

                NotifyToVerifier(notifyVourchers);

            }
            catch (Exception ex)
            {

                return GetFailResponce(HttpStatusCode.InternalServerError, jss.Serialize(ex.ToString()));
            }

            return GetSucessResponce("Invoices successfully updated.", "text/plain");
        }

        private void NotifyToVerifier(List<Voucher> listOfVouches)
        {

            Dictionary<string, List<string>> vouchersByVerifer = (from voucher in listOfVouches
                                                                  where voucher.VoucherVerifierId != null
                                                                  group voucher.InvoiceNo by voucher.Verifier.Email into g
                                                                  select new { VerifierEmail = g.Key, Invoices = g.ToList() }).
                                                     ToDictionary(dic => dic.VerifierEmail, dic => dic.Invoices);

            EmailDto mailDto = new EmailDto();
            mailDto.EmailSubject = "Invoices Approved";

            foreach (KeyValuePair<string, List<string>> entry in vouchersByVerifer)
            {
                mailDto.MailRecipientsTo = new string[1] { entry.Key };
                string mailContent = "Approved Invoice Numbers are; " + string.Join(",", entry.Value);
                mailDto.EmailTemplate = new VerifyTemplateDto() { Content = mailContent };
                new EmailClient().SendMail(mailDto);
            }
        }

        [Route("GetInvoices")]
        public HttpResponseMessage GetInvoices(string searchOptions)
        {
            HttpResponseMessage httpResponse;

            try
            {
                var searchOptionsDTO = JsonConvert.DeserializeObject<SearchOptionsDTO>(searchOptions);
                var toSkip = (searchOptionsDTO.PageNumber - 1) * searchOptionsDTO.PageSize;
                VoucherListDTO voucherListDTO = new VoucherListDTO();

                var query = BuildSearchQuery(searchOptionsDTO);
                var orderdQuery = BuildSorting(query.AsQueryable(), searchOptionsDTO.SortColumn, searchOptionsDTO.SortOrder);
                var page = orderdQuery.Select(e => e)
                                .Skip(toSkip).Take(searchOptionsDTO.PageSize)
                                .GroupBy(e => new { Total = query.Count() })
                                .FirstOrDefault();

                if (page != null)
                {
                    voucherListDTO.totalCount = (int)page.Key.Total;
                    voucherListDTO.voucherList = page.Select(e => e).ToList();
                }

                if (searchOptionsDTO.SortColumn != null)
                {
                    if (searchOptionsDTO.SortColumn.Equals("InvoiceNo"))
                    {
                        if (searchOptionsDTO.SortOrder.Equals("asc"))
                        {
                            voucherListDTO.voucherList = voucherListDTO.voucherList.OrderBy(x => x.InvoiceNo, new MixedNumbersAndStringsComparer()).ToList();
                        }
                        else
                        {
                            voucherListDTO.voucherList = voucherListDTO.voucherList.OrderByDescending(x => x.InvoiceNo, new MixedNumbersAndStringsComparer()).ToList();
                        }
                    }
                }

                // Serializer settings
                JsonSerializerSettings settings = new JsonSerializerSettings();
                settings.ContractResolver = new JsonCustomResolver();
                settings.PreserveReferencesHandling = PreserveReferencesHandling.None;
                settings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;
                settings.Formatting = Formatting.Indented;

                var serializedList = JsonConvert.SerializeObject(voucherListDTO, settings);
                httpResponse = GetSucessResponce(serializedList, "application/json");
            }
            catch (Exception ex)
            {

                httpResponse = GetFailResponce(HttpStatusCode.InternalServerError, ex.ToString());
            }

            return httpResponse;
        }

        [Route("GetInvoice/{invoiceId}")]
        public HttpResponseMessage GetInvoiceDTO(int invoiceId)
        {
            Voucher voucher = context.Vouchers.Find(invoiceId);

            voucher.Supplier = GetSupplier(voucher.Supplier);

            //String[] currencyCodes = context.Regions.Select(r => r.CurrencyCode).ToArray();

            var approverUserIds = (context.Roles.Where(rg => rg.Name == UserRoles.Approver.ToString()).FirstOrDefault()).Id;

            List<ApplicationUser> regionApprovers =
                context.Users.Where(x => x.Roles.Select(y => y.RoleId).Contains(approverUserIds) && x.LockoutEnabled.Equals(false) && x.ApplicationUserRegions.Select(ax => ax.RegionId).
                Contains(voucher.Region.Id)).AsEnumerable().
                Select(x => new ApplicationUser() { Email = x.Email, UserName = x.UserName, Id = x.Id, DisplayName = x.DisplayName }).ToList();



            var imageUrl = GetImageUrl(voucher.Region.InvoiceFolderName, voucher.FileName);



            InvoiceDetailsDTO invoiceDto = new InvoiceDetailsDTO
            {
                Voucher = voucher,
                Suppliers = null,
                CurrencyCodes = null,
                Approvers = regionApprovers,
                ImageUrl = imageUrl
            };

            return GetSucessResponce(JsonConvert.SerializeObject(invoiceDto), "application/json");
        }

        //[Route("GetSupliersfromVisma")]
        //public HttpResponseMessage GetSupliers(int regionId)
        //{
        //    VismaApiConnector vismaConnect = new VismaApiConnector();
        //    var supplier = vismaConnect.GetSuppliers();
        //    var serializedList = JsonConvert.SerializeObject(supplier, Formatting.None);
        //    return GetSucessResponce(serializedList, "text/plain");

        //}

        //[Route("SaveVouchertoVisma"), HttpGet]
        //public HttpResponseMessage SaveVoucher()
        //{
        //    VismaApiConnector vismaConnect = new VismaApiConnector();
        //    var batch = vismaConnect.SaveVoucher();
        //    var serializedList = JsonConvert.SerializeObject(batch, Formatting.None);
        //    return GetSucessResponce(serializedList, "text/plain");

        //}

        [Route("SaveInvoice"), HttpPost]
        public HttpResponseMessage SaveInvoice(Voucher voucher)
        {
            try
            {
                UpdateInvoice(voucher);
                return GetSucessResponce("Invoice Updated", "text/plain");
            }
            catch (Exception ex)
            {

                return GetFailResponce(HttpStatusCode.InternalServerError, ex.ToString());
            }
        }

        [Route("ChangeInvoiceStatus"), HttpPost]
        public HttpResponseMessage ChangeInvoiceStatus(Voucher voucher)
        {
            try
            {
                string verifiedStatus = CommonHelper.GetEnumDescription(VoucherStatus.Verified);
                if (voucher.Status == verifiedStatus)
                {
                    //voucher.Verifier = AppUserManager.FindByName(User.Identity.Name);
                    SendMailToApprover(voucher);
                }
                UpdateInvoice(voucher);
                context.SaveChanges();
                return GetSucessResponce("Invoice Updated", "text/plain");
            }
            catch (Exception ex)
            {

                return GetFailResponce(HttpStatusCode.InternalServerError, ex.ToString());
            }
        }


        [Route("GetInvoiceCount/{regionId}"), HttpGet]
        public HttpResponseMessage GetInvoiceCount(int regionId)
        {
            int regionCount;
            string currentUserID = User.Identity.GetUserId();
            bool isCurrentUserAdmin = User.IsInRole("Admin");
            var invoiceCountDataDic = new Dictionary<string, int>();

            var voucherStatuses = Enum.GetValues(typeof(VoucherStatus));

            foreach (Enum status in voucherStatuses)
            {
                string statusDescription = CommonHelper.GetEnumDescription(status);
                if (!isCurrentUserAdmin)
                {
                    regionCount = context.Vouchers.Where(vou => vou.Region.Id == regionId && statusDescription.ToLower() == vou.Status.ToLower() && vou.VoucherApproverId == currentUserID).Count();
                }
                else
                {
                    regionCount = context.Vouchers.Where(vou => vou.Region.Id == regionId && statusDescription.ToLower() == vou.Status.ToLower()).Count();
                }
                invoiceCountDataDic.Add(status.ToString(), regionCount);
            }

            return GetSucessResponce(JsonConvert.SerializeObject(invoiceCountDataDic), "application/json");


        }

        [Route("invoice/nextApprovedVoucher/{voucherid}/{regionId}")]
        public IHttpActionResult GetNextApprovedVoucher(int voucherId, int regionId)
        {
            var approvedStatus = CommonHelper.GetEnumDescription(VoucherStatus.Approved);
            var nextVoucherId = (from x in context.Vouchers
                                 where x.AccountStatus != AccountStatus.Completed
                                    && x.Region.Id == regionId
                                    && x.Status == approvedStatus
                                 orderby x.Id ascending
                                 select x.Id).FirstOrDefault();
            if (nextVoucherId > 0)
            {
                return Ok(nextVoucherId);
            }
            else
            {
                return NotFound();
            }
        }

        [Route("invoice/requestmoreinfo"), HttpPost]
        public IHttpActionResult RequestMoreInfo(RequestMoreInfoDto requestMoreInfoDto)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    var invoiceData = context.Vouchers.Include(vou => vou.Comments).FirstOrDefault<Voucher>(vou => vou.Id == requestMoreInfoDto.InvoiceId);
                    invoiceData.Status = requestMoreInfoDto.InvoiceStatus;
                    invoiceData.Comments.Add(new Comment() { Text = requestMoreInfoDto.EmailBody });
                    int result = context.SaveChanges();

                    if (result > 0)
                    {
                        //Automatically add requesting user's email to the CC list
                        if (string.IsNullOrEmpty(requestMoreInfoDto.CcAddress))
                            requestMoreInfoDto.CcAddress = UserIdentity.Email;
                        else
                            requestMoreInfoDto.CcAddress += string.Format(";{0}", UserIdentity.Email);

                        EmailDto mailDto = new EmailDto();

                        if (!String.IsNullOrWhiteSpace(requestMoreInfoDto.ToAddress))
                        {
                            mailDto.MailRecipientsTo = requestMoreInfoDto.ToAddress.Split(';');
                        }
                        if (!String.IsNullOrWhiteSpace(requestMoreInfoDto.CcAddress))
                        {
                            mailDto.MailRecipientsCc = requestMoreInfoDto.CcAddress.Split(';');
                        }

                        mailDto.EmailSubject = requestMoreInfoDto.Subject;
                        mailDto.MailContent = requestMoreInfoDto.EmailBody + "<br/><br/>";

                        if (requestMoreInfoDto.InvoiceAsAttachment)
                        {
                            if (ConfigurationManager.AppSettings.IsDeployedInAzure())
                            {

                                CloudStorageAccount storageAccount = CloudStorageAccount.Parse(ConfigurationManager.AppSettings.Get("StorageConnectionString"));
                                CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();
                                CloudBlobContainer container = blobClient.GetContainerReference(invoiceData.Region.InvoiceFolderName);
                                CloudBlockBlob blob = container.GetBlockBlobReference(invoiceData.FileName);

                                var stream = new MemoryStream();
                                blob.DownloadToStream(stream);
                                stream.Seek(0, SeekOrigin.Begin);
                                mailDto.BlobAttachment = stream;
                            }
                        }


                        new EmailClient().SendMail(mailDto);
                        return Ok("Successfully requested");
                    }
                    else
                    {
                        return Content(HttpStatusCode.BadRequest, "Could not be able to update status of voucher.");
                    }
                }
                return BadRequest("invalid model state");
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
            }



        }

        [HttpPost]
        [Route("invoice/toPendingApproval")]
        public IHttpActionResult toPendingApproval(List<int> voucherIdList)
        {
            try
            {
                List<Voucher> voucherList = context.Vouchers.Where(v => voucherIdList.Contains(v.Id)).ToList();
                foreach (Voucher voucher in voucherList) {
                    voucher.Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified);
                    context.Vouchers.Attach(voucher);
                    context.Entry(voucher).State = System.Data.Entity.EntityState.Modified;                    
                }
                int result = context.SaveChanges();
                return Ok("Successfully moved to Pending Approval");
                                
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

        [Route("SendeMail"), HttpPost]
        public void sendMail(Dictionary<string, string> verifierCollection)
        {
            foreach (KeyValuePair<string, string> entry in verifierCollection)
            {
                EmailDto mailDto = new EmailDto();
                mailDto.MailRecipientsTo = new string[1] { entry.Key };
                mailDto.EmailSubject = "Invoices Approved";
                string mailContent = "Approved Invoice Numbers are; " + entry.Value;
                mailDto.EmailTemplate = new VerifyTemplateDto() { Content = mailContent };
                new EmailClient().SendMail(mailDto);
            }

        }

        [Route("invoice/{invoiceId}/getverifier"), HttpGet]
        public IHttpActionResult GetVerifier(long invoiceId)
        {
            var verifier = context.Vouchers.Where(vou => vou.Id == invoiceId).Select(vou => vou.Verifier).FirstOrDefault<ApplicationUser>();

            return Ok<ApplicationUser>(verifier);
        }

        [Route("invoice/{invoiceId}/comment"), HttpPost]
        public IHttpActionResult AddComment(int invoiceId, Comment newComment)
        {
            if (invoiceId < 1)
            {
                return BadRequest("Invalid invoice id");
            }

            try
            {
                var voucher = new Voucher() { Id = invoiceId };
                context.Vouchers.Attach(voucher);
                newComment.Voucher = voucher;
                newComment.CreatedBy = User.Identity.Name;
                context.Comments.Add(newComment);

                int result = context.SaveChanges();
                if (result > 0)
                {
                    return Ok<Comment>(newComment);
                }
                else
                {
                    return BadRequest("New comment hasn't saved.");
                }
            }
            catch (Exception ex)
            {

                return InternalServerError(ex);
            }
        }


        [Route("invoice/getImageUrl/{invoiceId}"), HttpGet]
        public string GetImageUrl(int invoiceId)
        {
            var voucher = context.Vouchers.Find(invoiceId);
            return GetImageUrl(voucher.Region.InvoiceFolderName, voucher.FileName);
        }

        public string GetImageUrl(string invoiceFolder, string fileName)
        {
            var isInAzure = ConfigurationManager.AppSettings.IsDeployedInAzure();
            var imageUrl = string.Empty;

            if (isInAzure)
            {
                CloudStorageAccount storageAccount = CloudStorageAccount.Parse(ConfigurationManager.AppSettings.Get("StorageConnectionString"));
                CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();
                CloudBlobContainer container = blobClient.GetContainerReference(invoiceFolder);
                CloudBlockBlob blob = container.GetBlockBlobReference(fileName);

                SharedAccessBlobPolicy sasConstraints = new SharedAccessBlobPolicy();
                sasConstraints.SharedAccessStartTime = DateTime.UtcNow.AddMinutes(-5);
                sasConstraints.SharedAccessExpiryTime = DateTime.UtcNow.AddHours(24);
                sasConstraints.Permissions = SharedAccessBlobPermissions.Read | SharedAccessBlobPermissions.Write;

                //Generate the shared access signature on the blob, setting the constraints directly on the signature.
                string sasBlobToken = blob.GetSharedAccessSignature(sasConstraints);

                imageUrl = blob.Uri + sasBlobToken;
                //imageUrl = blob.Uri.ToString();
            }
            else
            {
                var invoicePath = ConfigurationManager.AppSettings.LocalInvoicePath();
                imageUrl = string.Format("/{0}/{1}/{2}", invoicePath, invoiceFolder, fileName);
            }
            return imageUrl;

        }

        public void SendMailToApprover(Voucher voucher)
        {
            EmailDto mailDto = new EmailDto();
            mailDto.MailRecipientsTo = new string[1] { voucher.Approver.Email };
            mailDto.EmailSubject = "Invoices pending Approval";
            string mailContent = "Invoice Number " + voucher.InvoiceNo + " is ready for approval.";
            mailDto.EmailTemplate = new VerifyTemplateDto() { Content = mailContent };
            new EmailClient().SendMail(mailDto);
        }

        #region private methods
        private void UpdateInvoice(Voucher voucher)
        {
            if (voucher.Approver != null &&
                !context.Vouchers.Where(vou => vou.Id == voucher.Id).Select(vou => vou.VoucherApproverId).ToList().Contains(voucher.Approver.Id))
            {
                voucher.VoucherApproverId = voucher.Approver.Id;
                voucher.Approver = null;

            }

            if (User.IsInRole(UserRoles.Verifier.ToString()) &&
                !context.Vouchers.Where(vou => vou.Id == voucher.Id).Select(vou => vou.VoucherVerifierId).ToList().Contains(User.Identity.GetUserId()))
            {
                voucher.VoucherVerifierId = User.Identity.GetUserId();
            }

            if (voucher.Comments != null && voucher.Comments.Where(com => com.Id == 0).Count() == 1)
            {
                context.Comments.Add(voucher.Comments.FirstOrDefault());
            }

            context.Vouchers.Attach(voucher);
            context.Entry(voucher).State = System.Data.Entity.EntityState.Modified;
            var result = context.SaveChanges();
        }

        //private Dictionary<string, string> UpdateVerifiers(Dictionary<string, string> existingCollection, Voucher voucher)
        //{
        //    string invoiceNo;
        //    if (string.IsNullOrEmpty(voucher.Verifier))
        //    {
        //        return existingCollection;
        //    }

        //    if (existingCollection.TryGetValue(voucher.Verifier, out invoiceNo))
        //    {
        //        existingCollection[voucher.Verifier] = existingCollection[voucher.Verifier] + ", " + voucher.InvoiceNo;

        //    }
        //    else
        //    {
        //        existingCollection.Add(voucher.Verifier, voucher.InvoiceNo);
        //    }
        //    return existingCollection;
        //}

        private IOrderedQueryable<VoucherViewModel> BuildSorting(IQueryable<VoucherViewModel> query, string sortBy, string sortOrder)
        {
            if (string.IsNullOrEmpty(sortBy) || sortBy == "null")
            {
                return OrderingHelper(query, "LastUpdatedDateTime", true, false);
            }
            if (sortOrder == "desc")
            {
                return OrderingHelper(query, sortBy, true, false);
            }
            else
            {
                return OrderingHelper(query, sortBy, false, false);
            }
        }

        private static IOrderedQueryable<T> OrderingHelper<T>(IQueryable<T> source, string propertyName, bool descending, bool anotherLevel)
        {
            ParameterExpression param = Expression.Parameter(typeof(T), string.Empty); // I don't care about some naming
            MemberExpression property = Expression.PropertyOrField(param, propertyName);
            LambdaExpression sort = Expression.Lambda(property, param);
            MethodCallExpression call = Expression.Call(
                typeof(Queryable),
                (!anotherLevel ? "OrderBy" : "ThenBy") + (descending ? "Descending" : string.Empty),
                new[] { typeof(T), property.Type },
                source.Expression,
                Expression.Quote(sort));
            return (IOrderedQueryable<T>)source.Provider.CreateQuery<T>(call);
        }

        private List<VoucherViewModel> BuildSearchQuery(SearchOptionsDTO searchOptionsDTO)
        {
            IQueryable<Voucher> query = this.context.Vouchers.Include(v => v.Approver).Include(v => v.Verifier).Where(v => v.VoucherType == VoucherType.Invoice.ToString());


            //IQueryable query = this.context.Vouchers.Where(v => v.VoucherType == VoucherType.Invoice.ToString()).Select(vou => new {
            //    InvoiceNo = vou.InvoiceNo,
            //    VoucherType = vou.VoucherType,
            //    InvoiceDate = vou.AccountStatus,
            //    DueDate = vou.DueDate,
            //    Supplier = vou.Supplier,
            //    Status = vou.Status,
            //    Amount = vou.Amount,

            //});

            VoucherListDTO voucherListDTO = new VoucherListDTO();
            string[] format = { "yyyy-MM-dd", "yyyy/MM/dd" };

            //Filtering
            switch (searchOptionsDTO.Status)
            {
                case "To be Verified":
                    string toBeVerifiedStatus = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified);
                    string verifierMoreInfoRequestedStatus = CommonHelper.GetEnumDescription(VoucherStatus.VerifierMoreInfoRequested);

                    query = this.context.Vouchers.Where(vc => vc.Status == toBeVerifiedStatus ||
                                                   vc.Status == verifierMoreInfoRequestedStatus);
                    break;

                case "To be Approved":
                    string currentUser = User.Identity.GetUserId();
                    bool isCurrentUserAdmin = User.IsInRole("Admin");

                    string verifiedStatus = CommonHelper.GetEnumDescription(VoucherStatus.Verified);
                    string approverMoreInfoRequestedStatus = CommonHelper.GetEnumDescription(VoucherStatus.ApproverMoreInfoRequested);

                    if (!isCurrentUserAdmin)
                    {
                        query = query.Where(vc => ((vc.Status == verifiedStatus && vc.VoucherApproverId == currentUser) ||
                        (vc.Status == approverMoreInfoRequestedStatus && vc.VoucherApproverId == currentUser)));
                    }
                    else
                    {
                        query = query.Where(vc => ((vc.Status == verifiedStatus) ||
                        (vc.Status == approverMoreInfoRequestedStatus)));
                    }

                    query = query.Include(x => x.Verifier);
                    break;

                case "Approved":
                    string approvedStatus = CommonHelper.GetEnumDescription(VoucherStatus.Approved);
                    query = query.Where(vc => vc.Status == approvedStatus);
                    break;

                case "Rejected":
                    string approverRejectedStatus = CommonHelper.GetEnumDescription(VoucherStatus.ApproverRejected);
                    string verifierRejectedStatus = CommonHelper.GetEnumDescription(VoucherStatus.VerifierRejected);                  

                    // requirement as of 04/25/2017
                    // Admin and Approver can view all rejected Vouchers
                    // Verifier can view verifier rejected Vouchers

                    bool isUserAdmin = User.IsInRole("Admin");
                    bool isUserApprover = User.IsInRole("Approver");
                    bool idUserVerifier = User.IsInRole("Verifier");

                    if (isUserAdmin || isUserApprover) {
                        query = query.Where(vc => vc.Status == approverRejectedStatus || vc.Status == verifierRejectedStatus);
                    }

                    if (idUserVerifier) {
                        query = query.Where(vc => vc.Status == verifierRejectedStatus);
                    }                   
                    break;

                case "Transferred":
                    string transferredStatus = CommonHelper.GetEnumDescription(VoucherStatus.Transferred);
                    query = query.Where(vc => vc.Status == transferredStatus);
                    break;
                default:
                    break;
            }
            if (!string.IsNullOrEmpty(searchOptionsDTO.StatusFilter))
            {
                query = query.Where(vc => vc.Status.Contains(searchOptionsDTO.StatusFilter));
            }
            if (searchOptionsDTO.RegionId > 0)
            {
                query = query.Where(v => v.Region.Id == searchOptionsDTO.RegionId);
            }
            if (!string.IsNullOrEmpty(searchOptionsDTO.InvoiceNo))
            {
                query = query.Where(v => v.InvoiceNo.Contains(searchOptionsDTO.InvoiceNo));
            }
            if (!string.IsNullOrEmpty(searchOptionsDTO.Supplier))
            {
                query = query.Where(v => v.Supplier.Contains(searchOptionsDTO.Supplier));
            }
            if (searchOptionsDTO.DueDate != null)
            {
                DateTime dateValue;

                if (DateTime.TryParseExact(searchOptionsDTO.DueDate,
                           format,
                           System.Globalization.CultureInfo.InvariantCulture,
                           System.Globalization.DateTimeStyles.None,
                           out dateValue))
                {
                    query = query.Where(v => v.DueDate.Value.Year == dateValue.Year &&
                      v.DueDate.Value.Month == dateValue.Month &&
                      v.DueDate.Value.Day == dateValue.Day);
                }
            }
            if (searchOptionsDTO.InvoiceDate != null)
            {
                DateTime dateValue;

                if (DateTime.TryParseExact(searchOptionsDTO.InvoiceDate,
                           format,
                           System.Globalization.CultureInfo.InvariantCulture,
                           System.Globalization.DateTimeStyles.None,
                           out dateValue))
                {
                    query = query.Where(v => v.InvoiceDate.Value.Year == dateValue.Year &&
                      v.InvoiceDate.Value.Month == dateValue.Month &&
                      v.InvoiceDate.Value.Day == dateValue.Day);
                }

            }
            if (searchOptionsDTO.Amount != null)
            {
                query = query.Where(v => v.Amount == searchOptionsDTO.Amount);
            }
            if (!string.IsNullOrEmpty(searchOptionsDTO.Verifier))
            {
                query = query.Where(v => v.Verifier.UserName.Contains(searchOptionsDTO.Verifier));
            }
            var vouchers = query.Select(s => new
            {
                Id = s.Id,
                InvoiceNo = s.InvoiceNo,
                Supplier = s.Supplier,
                DueDate = s.DueDate,
                InvoiceDate = s.InvoiceDate,
                Amount = s.Amount,
                Status = s.Status,
                LastUpdatedDateTime = s.LastUpdatedDateTime,
                Verifier = s.Verifier,
                Approver = s.Approver,
                AccountStatus = s.AccountStatus,
                Currency = s.Currency
            }).AsEnumerable().Select(x => new VoucherViewModel
            {
                Id = x.Id,
                InvoiceNo = x.InvoiceNo,
                Supplier = GetSupplier(x.Supplier),
                DueDate = x.DueDate,
                InvoiceDate = x.InvoiceDate,
                Amount = x.Amount,
                Status = x.Status,
                LastUpdatedDateTime = x.LastUpdatedDateTime,
                Verifier = x.Verifier == null ? string.Empty : x.Verifier.DisplayName,
                Approver = x.Approver == null ? string.Empty : x.Approver.DisplayName,
                AccountStatus = x.AccountStatus,
                Currency = x.Currency
            }).ToList();
            return vouchers;
        }

        private string GetSupplier(string accountNo)
        {
            if (accountNo != string.Empty)
            {
                string supplier = string.Empty;
                IVismaConnector vismaConnector = GetVismaConnection();
                List<Account> suppliers = vismaConnector.GetSuppliers();
                Account account = suppliers.FirstOrDefault(a => a.No == Convert.ToInt32(accountNo));
                if (account != null)
                    return account.Name;
            }
            return string.Empty;
        }
        #endregion private methods


    }
}

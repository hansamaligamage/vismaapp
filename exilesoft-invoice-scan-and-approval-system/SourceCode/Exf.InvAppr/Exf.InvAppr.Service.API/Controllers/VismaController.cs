using Exf.InvAppr.Common;
using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Service.Visma;
using Exf.InvAppr.Sync.Visma;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;

namespace Exf.InvAppr.Service.API.Controllers
{
    [RoutePrefix("api")]
    //[Authorize]
    public class VismaController : BaseApiController
    {
        private readonly ImportService _importService;

        private readonly ExportService _exportService;
        public VismaController()
        {
            _importService = new ImportService();
            _exportService = new ExportService();
        }

        private IVismaConnector GetVismaConnection()
        {
            if (ConfigurationManager.AppSettings.IsVismaApiAccess())
                return new VismaApiConnector();
            return new VismaMasterDataConnector();
        }

        [Route("visma/suppliers/{companyId}")]
        public IHttpActionResult GetSuppliers(int companyId)
        {
            IVismaConnector vismaConnector = GetVismaConnection();
            var suppliers = vismaConnector.GetSuppliers();

            if(suppliers != null && suppliers.Count > 0)
            {
                return Ok(suppliers);
            }
            else
            {
                return Ok();
            }
        }

        [Route("visma/customers/{companyId}")]
        public IHttpActionResult GetCustomers(int companyId)
        {
            VismaApiConnector vismaApiConnector = new VismaApiConnector(companyId);
            var accountList = vismaApiConnector.GetCustomers();

            if (accountList != null && accountList.Count > 0)
            {
                return Ok(accountList);
            }
            else
            {
                return Ok();
            }
        }

        [Route("visma/generalledgers/{companyId}")]
        public IHttpActionResult GetGeneralLedger(int companyId)
        {
            VismaApiConnector vismaApiConnector = new VismaApiConnector(companyId);
            var accountList = vismaApiConnector.GetGeneralLedgers();

            if (accountList != null && accountList.Count > 0)
            {
                return Ok(accountList);
            }
            else
            {
                return Ok();
            }
        }

        [Route("visma/accounts/{companyId}")]
        //Retuns suppliers, customers and general ledgers
        public IHttpActionResult GetAccounts(int companyId)
        {
            IVismaConnector vismaConnector = GetVismaConnection();
            var accountList = vismaConnector.GetAccounts();

            if (accountList != null && accountList.Count > 0)
            {
                return Ok(accountList);
            }
            else
            {
                return Ok();
            }
        }

        [Route("visma/departments/{companyId}")]
        public IHttpActionResult GetDepartments(int companyId)
        {
            IVismaConnector vismaConnector = GetVismaConnection();
            var orgUnits = vismaConnector.GetDepartments();

            if (orgUnits != null && orgUnits.Count > 0)
            {
                return Ok(orgUnits);
            }
            else
            {
                return Ok();
            }
        }

        [Route("visma/projects/{companyId}")]
        public IHttpActionResult GetProjects(int companyId)
        {
            IVismaConnector vismaConnector = GetVismaConnection();
            var orgUnits = vismaConnector.GetProjects();

            if (orgUnits != null && orgUnits.Count > 0)
            {
                return Ok(orgUnits);
            }
            else
            {
                return Ok();
            }
        }

        [Route("visma/staff/{companyId}")]
        public IHttpActionResult GetStaff(int companyId)
        {
            IVismaConnector vismaConnector = GetVismaConnection();
            var orgUnits = vismaConnector.GetStaff();

            if (orgUnits != null && orgUnits.Count > 0)
            {
                return Ok(orgUnits);
            }
            else
            {
                return Ok();
            }
        }

        [Route("visma/costallocation")]
        public IHttpActionResult GetCostAllocation ()
        {
            IVismaConnector vismaConnector = GetVismaConnection();
            var orgUnits = vismaConnector.GetCostAllocation();

            if (orgUnits != null && orgUnits.Count > 0)
            {
                return Ok(orgUnits);
            }
            else
            {
                return Ok();
            }
        }

        [Route("visma/taxCodes/{companyId}")]
        public IHttpActionResult GetTaxCodes(int companyId)
        {
            IVismaConnector vismaConnector = GetVismaConnection();
            var result = vismaConnector.GetTaxCodes();

            if (result != null && result.Count > 0)
            {
                return Ok(result);
            }
            else
            {
                return Ok();
            }
        }

        [Route("visma/currency/{companyId}")]
        public IHttpActionResult GetcurrencyList(int companyId)
        {
            IVismaConnector vismaConnector = GetVismaConnection();
            var result = vismaConnector.GetcurrencyList();
            if (result != null && result.Count > 0)
            {
                return Ok(result);
            }
            else
            {
                return Ok();
            }
        }

        [HttpPost]
        [Route("visma/accounts/transfer/{companyId}")]
        public IHttpActionResult TransferVoucherAccounts(int[] accountIds, int companyId)
        {

            //string filePath = @"c:\visma\VismaVouchers.txt";

            try
            {
                // Update Voucher Status
                List<Voucher> vouchers = context.Vouchers.Where(v => accountIds.Contains(v.Id)).ToList();
                foreach (var voucher in vouchers)
                {
                    context.Vouchers.Attach(voucher);
                    voucher.Status = VoucherStatus.Transferred.ToString();
                }

                context.SaveChanges();

                IncomingInvoiceExporter incomingInvoiceExporter = new IncomingInvoiceExporter();
                string fileContent = incomingInvoiceExporter.Export(vouchers);

                //StreamWriter sw = new StreamWriter(filePath);
                //sw.WriteLine(fileContent);
                //sw.Close();

                return Content<string>(HttpStatusCode.OK, fileContent);

            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }


        [Route("invoice/accounts/{voucherid}")]
        public IHttpActionResult GetInvoiceAccounts(int voucherId)
        {
            IList<AccountMapping> invoiceAccounts = new List<AccountMapping>();
            //check to see any save account exist if so return those.
            invoiceAccounts = context.AccountMappings.Where(acm => acm.VoucherId == voucherId).ToList();

            if (invoiceAccounts.Count > 0)
                return Ok(invoiceAccounts);

            var invoiceData = context.Vouchers.SingleOrDefault(vou => vou.Id == voucherId);
            invoiceAccounts.Add(new AccountMapping()
            {
                Voucher = invoiceData,
                VoucherId = invoiceData.Id,
                InvoiceNo = invoiceData.InvoiceNo,
                VoucherDate = invoiceData.InvoiceDate,
                DueDate = invoiceData.DueDate,
                AmountInDefaultCurrency = invoiceData.Amount,
                IsDraftVersion = true

            });

            return Ok(invoiceAccounts);
        }

        [HttpPost]
        [Route("voucher/saveaccount/{isDraftSave}")]
        public IHttpActionResult SaveVoucherAccount(AccountMapping[] accountMapping, bool isDraftSave)
        {

            var existingAcc = accountMapping.Where(am => am.Id > 0).FirstOrDefault();
            //AccountMapping accountMappingInDb = null;


            //if (existingAcc != null)
            //{
                //accountMappingInDb = context.AccountMappings.SingleOrDefault(am => am.Id == existingAcc.Id);                
            //}

            //This will be null for newly create account from voucher mean still not any account exists for voucher
            if (existingAcc == null)
            {
                existingAcc = accountMapping.FirstOrDefault();
            }

            Voucher voucher = null;

            try
            {
                if (existingAcc.Voucher != null)
                {
                    voucher = existingAcc.Voucher;
                    voucher.Approver = null;
                    voucher.Verifier = null;

                    //context.Vouchers.Attach(existingAcc.Voucher);


                    if (!isDraftSave)
                    {
                        voucher.AccountStatus = AccountStatus.Completed;
                        //context.Entry(existingAcc.Voucher).State = System.Data.Entity.EntityState.Modified;

                    }
                    else
                    {
                        voucher.AccountStatus = AccountStatus.InProgerss;
                        //context.Entry(existingAcc.Voucher).State = System.Data.Entity.EntityState.Modified;
                    }
                    //Voucher existingVoucher = context.Vouchers.Find(existingAcc.VoucherId);
                    //context.Entry(existingVoucher).CurrentValues.SetValues(voucher);
                    //context.Entry(existingVoucher).State = EntityState.Modified;

                    context.Entry(voucher).State = EntityState.Modified;

                }
                foreach (var account in accountMapping)
                {
                    account.IsDraftVersion = isDraftSave;
                    account.Currency1Code = voucher != null ? voucher.Currency : string.Empty;
                    if (account.Id > 0)
                    {
                        //if (account.Id == accountMappingInDb.Id)
                        //{
                        //    context.Entry(accountMappingInDb).CurrentValues.SetValues(account);
                        //    context.Entry(accountMappingInDb).State = EntityState.Modified;
                        //}
                        //else
                        //{
                        //    context.AccountMappings.Attach(account);
                        //    context.Entry(account).State = System.Data.Entity.EntityState.Modified;
                        //}
                        AccountMapping mapping = context.AccountMappings.Find(account.Id);
                        context.Entry(mapping).CurrentValues.SetValues(account);
                        context.Entry(mapping).State = EntityState.Modified;
                    }
                    else
                    {
                        context.AccountMappings.Add(account);

                    }
                }

               

                int result = context.SaveChanges();

                if (result > 0)
                {
                    return Ok(accountMapping);
                }
                else
                {
                    return BadRequest("No data were saved.");
                }

            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }



        }

        [HttpDelete]
        [Route("voucher/accounts/{id}/delete")]
        public IHttpActionResult DeleteAccountMapping(int id)
        {
            try
            {
                var accountToBeDelete = new AccountMapping() { Id = id };
                context.AccountMappings.Attach(accountToBeDelete);
                context.AccountMappings.Remove(accountToBeDelete);
                int result = context.SaveChanges();

                if (result > 0)
                {
                    return Ok();
                }
                else
                {
                    return BadRequest("No data were removed.");
                }
            }
            catch (Exception ex)
            {

                return InternalServerError(ex);
            }
        }

        [HttpPost]
        [Route("voucher/accounts/deleteList")]
        public IHttpActionResult deleteAccountList(AccountMapping[] accountMappingList)
        {
            try
            {
                foreach (AccountMapping aMap in accountMappingList) {
                    var accountToBeDelete = new AccountMapping() { Id = aMap.Id };
                    context.AccountMappings.Attach(accountToBeDelete);
                    context.AccountMappings.Remove(accountToBeDelete);
                }
                int result = context.SaveChanges();
                return Ok();
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }

        }

        [HttpPost]
        [Route("Visma/ImportMasterData")]
        public async Task<HttpResponseMessage> ImportMasterData()
        {
            if (!Request.Content.IsMimeMultipartContent())
            {
                Request.CreateResponse(HttpStatusCode.UnsupportedMediaType);
            }

            var result = await Request.Content.ReadAsMultipartAsync();

            foreach (var stream in result.Contents)
            {
                var fileBytes = await stream.ReadAsByteArrayAsync();
                ////var fileData = System.Text.Encoding.UTF8.GetString(fileBytes);
                var fileData = System.Text.Encoding.Default.GetString(fileBytes);
                _importService.Run(fileData, ConfigurationManager.AppSettings.MasterDataFileList(), null);
            }

            return Request.CreateResponse(HttpStatusCode.OK);
        }

        [HttpPost]
        [Route("Visma/ImportTransactionData")]
        public async Task<HttpResponseMessage> ImportTransactionData()
        {
            if (!Request.Content.IsMimeMultipartContent())
            {
                Request.CreateResponse(HttpStatusCode.UnsupportedMediaType);
            }

            var result = await Request.Content.ReadAsMultipartAsync();

            foreach (var stream in result.Contents)
            {
                var fileBytes = await stream.ReadAsByteArrayAsync();
                //var fileData = System.Text.Encoding.UTF8.GetString(fileBytes);
                var fileData = System.Text.Encoding.Default.GetString(fileBytes);
                _importService.Run(fileData, ConfigurationManager.AppSettings.TransactionDataFileList(), ConfigurationManager.AppSettings.TransactionDataExportTableList());
            }

            return Request.CreateResponse(HttpStatusCode.OK);
        }

        [HttpGet]
        [Route("Visma/ExportTransactionData")]
        public async Task<HttpResponseMessage> ExportTransactionData()
        {

            string filePath = await Task.FromResult<string>(_exportService.Run(ConfigurationManager.AppSettings.TransactionDataFileList()));        

            return Request.CreateResponse(HttpStatusCode.OK, filePath);
        }

        [HttpPost]
        [Route("visma/rollbackVouchers")]
        public IHttpActionResult rollbackVouchers(int[] voucherIds)
        {
            try
            {
                // Update Voucher Status - Transferred -> 
                List<Voucher> vouchers = context.Vouchers.Where(v => voucherIds.Contains(v.Id)).ToList();
                foreach (var voucher in vouchers)
                {
                    context.Vouchers.Attach(voucher);
                    voucher.Status = CommonHelper.GetEnumDescription(VoucherStatus.Approved);
                }

                context.SaveChanges();

                return Ok();

            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

    }
}

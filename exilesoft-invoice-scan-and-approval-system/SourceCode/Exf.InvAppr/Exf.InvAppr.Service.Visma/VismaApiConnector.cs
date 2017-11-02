using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Service.Visma.Dto;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Visma.BusinessModel;
using Visma.BusinessServices.Client;
using Visma.BusinessServices.Generic;
using Visma.BusinessServices.Wrapper;

namespace Exf.InvAppr.Service.Visma
{
    public class VismaApiConnector : IVismaConnector
    {
        private string User { get; set; }

        private string Password { get; set; }

        private int CompanyNo { get; set; }

        public VismaApiConnector(int companyNo = 9999)
        {
            CompanyNo = companyNo;
            User = ConfigurationManager.AppSettings["VismaUser"];
            Password = ConfigurationManager.AppSettings["VismaPassword"];
        }

        public void ChangeCompany(int companyNo)
        {
            CompanyNo = companyNo;
        }

        public List<Account> GetSuppliers()
        {
            List<Account> accountList = new List<Account>();
            using (GenericServiceClient client = GetServiceClient())
            {
                var request = new RequestBuilder();
                Context context = GetVismaContext(request);
                TableHandler associateTable = context.UseTable((long)T.Associate);
                RowsSelection rowsSelection = associateTable.SelectRows();
                rowsSelection.IntegerColumnValue((long)C.Associate.SupplierNo, ComparisonOperator.GreaterThan,
                    0);
                Rows rowsSupplier = rowsSelection.Rows;

                Projection customerProjection = rowsSupplier.ProjectColumns();
                customerProjection.AddColumn((long)C.Associate.SupplierNo);
                customerProjection.AddColumn((long)C.Associate.Name);

                int lastOperationNo = request.LastOperationNo;

                ResponseReader response = request.Dispatch(client);
                if (response.AllSucceeded)
                {
                    OperationResult oprRes;
                    if (response.OperationResultDictionary.TryGetValue(lastOperationNo, out oprRes))
                    {
                        var projRes = (ProjectionResult)oprRes;

                        foreach (var resultRow in projRes.ResultSet.ResultRows)
                        {
                            Account account = new Account();
                            account.No = resultRow.GetIntegerValue((long)C.Associate.SupplierNo);
                            account.Name = resultRow.GetStringValue((long)C.Associate.Name);
                            accountList.Add(account);
                        }
                    }
                }
            }
            return accountList;
        }

        public List<Account> GetCustomers()
        {
            List<Account> accountList = new List<Account>();
            using (GenericServiceClient client = GetServiceClient())
            {
                var request = new RequestBuilder();
                Context context = GetVismaContext(request);
                TableHandler associateTable = context.UseTable((long)T.Associate);
                RowsSelection rowsSelection = associateTable.SelectRows();
                rowsSelection.IntegerColumnValue((long)C.Associate.CustomerNo, ComparisonOperator.GreaterThan,
                    0);
                Rows rowsSupplier = rowsSelection.Rows;

                Projection customerProjection = rowsSupplier.ProjectColumns();
                customerProjection.AddColumn((long)C.Associate.CustomerNo);
                customerProjection.AddColumn((long)C.Associate.Name);

                int lastOperationNo = request.LastOperationNo;

                ResponseReader response = request.Dispatch(client);
                if (response.AllSucceeded)
                {
                    OperationResult oprRes;
                    if (response.OperationResultDictionary.TryGetValue(lastOperationNo, out oprRes))
                    {
                        var projRes = (ProjectionResult)oprRes;

                        foreach (var resultRow in projRes.ResultSet.ResultRows)
                        {
                            Account account = new Account();
                            account.No = resultRow.GetIntegerValue((long)C.Associate.CustomerNo);
                            account.Name = resultRow.GetStringValue((long)C.Associate.Name);
                            accountList.Add(account);
                        }
                    }
                }
            }
            return accountList;
        }

        public List<Account> GetGeneralLedgers()
        {
            List<Account> accountList = new List<Account>();
            using (GenericServiceClient client = GetServiceClient())
            {
                var request = new RequestBuilder();
                Context context = GetVismaContext(request);
                TableHandler associateTable = context.UseTable((long)T.GeneralLedgerAccount);
                RowsSelection rowsSelection = associateTable.SelectRows();
                rowsSelection.IntegerColumnValue((long)C.GeneralLedgerAccount.AccountNo, ComparisonOperator.GreaterThan,
                    0);
                Rows rowsSupplier = rowsSelection.Rows;

                Projection customerProjection = rowsSupplier.ProjectColumns();
                customerProjection.AddColumn((long)C.GeneralLedgerAccount.AccountNo);
                customerProjection.AddColumn((long)C.GeneralLedgerAccount.Name);

                int lastOperationNo = request.LastOperationNo;

                ResponseReader response = request.Dispatch(client);
                if (response.AllSucceeded)
                {
                    OperationResult oprRes;
                    if (response.OperationResultDictionary.TryGetValue(lastOperationNo, out oprRes))
                    {
                        var projRes = (ProjectionResult)oprRes;

                        foreach (var resultRow in projRes.ResultSet.ResultRows)
                        {
                            Account account = new Account();
                            account.No = resultRow.GetIntegerValue((long)C.GeneralLedgerAccount.AccountNo);
                            account.Name = resultRow.GetStringValue((long)C.GeneralLedgerAccount.Name);
                            accountList.Add(account);
                        }
                    }
                }
            }
            return accountList;
        }

        public List<Account> GetAccounts()
        {
            List<Account> accountList = new List<Account>();
            using (GenericServiceClient client = GetServiceClient())
            {
                var request = new RequestBuilder();
                Context context = GetVismaContext(request);
                TableHandler associateTable = context.UseTable((long)T.AllAccounts);
                RowsSelection rowsSelection = associateTable.SelectRows();
                rowsSelection.IntegerColumnValue((long)C.AllAccounts.AccountType, ComparisonOperator.LessThanOrEqualTo,
                    (int)AccountType.GeneralLedgerAccount);
                Rows rowsSupplier = rowsSelection.Rows;

                Projection customerProjection = rowsSupplier.ProjectColumns();
                customerProjection.AddColumn((long)C.AllAccounts.AccountNo);
                customerProjection.AddColumn((long)C.AllAccounts.Name);
                customerProjection.AddColumn((int)C.AllAccounts.AccountType);

                int lastOperationNo = request.LastOperationNo;

                ResponseReader response = request.Dispatch(client);
                if (response.AllSucceeded)
                {
                    OperationResult oprRes;
                    if (response.OperationResultDictionary.TryGetValue(lastOperationNo, out oprRes))
                    {
                        var projRes = (ProjectionResult)oprRes;

                        foreach (var resultRow in projRes.ResultSet.ResultRows)
                        {
                            Account account = new Account();
                            account.No = resultRow.GetIntegerValue((long)C.AllAccounts.AccountNo);
                            account.Name = resultRow.GetStringValue((long)C.AllAccounts.Name);
                            account.AccountType = resultRow.GetIntegerValue((int)C.AllAccounts.AccountType);
                            accountList.Add(account);
                        }
                    }
                }
            }
            return accountList;
        }

        public List<EntityBase> GetCostAllocation()
        {
            return new List<EntityBase>();
        }


        public List<EntityBase> GetDepartments()
        {
            IList<KeyValuePair<string, long>> columns = new List<KeyValuePair<string, long>>();
            columns.Add(new KeyValuePair<string, long>("UnitNo", (long)C.OrgUnit1.OrgUnit1No));
            columns.Add(new KeyValuePair<string, long>("Name", (long)C.OrgUnit1.Name));
            return GetOrganizationUnits((long)T.OrgUnit1, columns);
        }

        public List<EntityBase> GetProjects()
        {
            IList<KeyValuePair<string, long>> columns = new List<KeyValuePair<string, long>>();
            columns.Add(new KeyValuePair<string, long>("UnitNo", (long)C.OrgUnit2.OrgUnit2No));
            columns.Add(new KeyValuePair<string, long>("Name", (long)C.OrgUnit2.Name));
            return GetOrganizationUnits((long)T.OrgUnit2, columns);
        }

        public List<EntityBase> GetStaff()
        {
            IList<KeyValuePair<string, long>> columns = new List<KeyValuePair<string, long>>();
            columns.Add(new KeyValuePair<string, long>("UnitNo", (long)C.OrgUnit3.OrgUnit3No));
            columns.Add(new KeyValuePair<string, long>("Name", (long)C.OrgUnit3.Name));
            return GetOrganizationUnits((long)T.OrgUnit3, columns);
        }

        public List<EntityBase> GetTaxCodes()
        {
            List<EntityBase> resultList = new List<EntityBase>();
            using (GenericServiceClient client = GetServiceClient())
            {
                var request = new RequestBuilder();
                Context context = GetVismaContext(request);
                TableHandler associateTable = context.UseTable((long)T.TaxCode);
                RowsSelection rowsSelection = associateTable.SelectRows();
                Rows rowsSupplier = rowsSelection.Rows;

                Projection customerProjection = rowsSupplier.ProjectColumns();
                customerProjection.AddColumn((long)C.TaxCode.TaxCode);
                customerProjection.AddColumn((long)C.TaxCode.Description);

                int lastOperationNo = request.LastOperationNo;

                ResponseReader response = request.Dispatch(client);
                if (response.AllSucceeded)
                {
                    OperationResult oprRes;
                    if (response.OperationResultDictionary.TryGetValue(lastOperationNo, out oprRes))
                    {
                        var projRes = (ProjectionResult)oprRes;

                        foreach (var resultRow in projRes.ResultSet.ResultRows)
                        {
                            EntityBase taxCode = new EntityBase();
                            taxCode.No = resultRow.GetIntegerValue((long)C.TaxCode.TaxCode);
                            taxCode.Name = resultRow.GetStringValue((long)C.TaxCode.Description);
                            resultList.Add(taxCode);
                        }
                    }
                }
            }

            return resultList;
        }

        public List<EntityBase> GetcurrencyList()
        {
            List<EntityBase> resultList = new List<EntityBase>();
            using (GenericServiceClient client = GetServiceClient())
            {
                var request = new RequestBuilder();
                Context context = GetVismaContext(request);
                TableHandler associateTable = context.UseTable((long)T.Currency);
                RowsSelection rowsSelection = associateTable.SelectRows();
                Rows rowsSupplier = rowsSelection.Rows;

                Projection customerProjection = rowsSupplier.ProjectColumns();
                customerProjection.AddColumn((long)C.Currency.CurrencyNo);
                customerProjection.AddColumn((long)C.Currency.Name);
                customerProjection.AddColumn((long)C.Currency.IsoCode);

                int lastOperationNo = request.LastOperationNo;

                ResponseReader response = request.Dispatch(client);
                if (response.AllSucceeded)
                {
                    OperationResult oprRes;
                    if (response.OperationResultDictionary.TryGetValue(lastOperationNo, out oprRes))
                    {
                        var projRes = (ProjectionResult)oprRes;

                        foreach (var resultRow in projRes.ResultSet.ResultRows)
                        {
                            TaxCode taxCode = new TaxCode();
                            taxCode.No = resultRow.GetIntegerValue((long)C.Currency.CurrencyNo);
                            taxCode.Name = resultRow.GetStringValue((long)C.Currency.Name);
                            taxCode.Code = resultRow.GetStringValue((long)C.Currency.IsoCode);
                            resultList.Add(taxCode);
                        }
                    }
                }
            }

            return resultList;
        }

        public bool SaveVoucher(ICollection<AccountMapping> mappingList)
        {
            using (GenericServiceClient genericServiceClient = GetServiceClient())
            {
                var request = new RequestBuilder();
                Context context = GetVismaContext(request);

                foreach (var mappingsForVoucher in mappingList.GroupBy(x => x.VoucherId))
                {
                    // Add a new batch.
                    TableHandler batchTable = context.UseTable((long)T.Batch);
                    Row batchRow = batchTable.AddRow();
                    batchRow.SuggestValue((long)C.Batch.BatchNo);
                    batchRow.SuggestValue((long)C.Batch.ValueDate);
                    batchRow.SetIntegerValue((long)C.Batch.Origin, (long)V.Origin.ExternalApplication);
                    batchRow.SetStringValue((long)C.Batch.Description, "Exilesoft Generated");

                    //Add vouchers
                    TableHandler voucherTable = batchRow.JoinTable((long)Fk.Voucher.Batch);

                    foreach (var accountMapping in mappingsForVoucher)
                    {
                        Row voucherLineRow = voucherTable.AddRow();
                        //Change the types to dynamic types on later stages
                        voucherLineRow.SetIntegerValue((long)C.Voucher.VoucherType, (int)VoucherType.IncomingInvoice);
                        voucherLineRow.SetStringValue((long)C.Voucher.InvoiceNo, accountMapping.InvoiceNo);
                        voucherLineRow.SetIntegerValue((long)C.Voucher.VoucherNo, accountMapping.VoucherId);
                        voucherLineRow.SetIntegerValue((long)C.Voucher.DebitAccountNo, Convert.ToInt32(accountMapping.DebitAccountId));
                        voucherLineRow.SetIntegerValue((long)C.Voucher.DebitTaxCode, accountMapping.DebitVatId ?? 0);
                        voucherLineRow.SetIntegerValue((long)C.Voucher.CreditAccountNo, Convert.ToInt32(accountMapping.CreditAccountId));
                        voucherLineRow.SetIntegerValue((long)C.Voucher.CreditTaxCode, accountMapping.CreditVatId ?? 0);
                        voucherLineRow.SetDecimalValue((long)C.Voucher.AmountDomestic, accountMapping.AmountInDefaultCurrency);
                       // voucherLineRow.SetDecimalValue((long)C.Voucher.AmountInCurrency, (decimal)accountMapping.AmountInCurrency1);
                        voucherLineRow.SetDecimalValue((long)C.Voucher.ExchangeRate, accountMapping.ExchangeRate1 ?? 0);
                        voucherLineRow.SetIntegerValue((long)C.Voucher.VoucherDate, ConvertDate(accountMapping.VoucherDate));
                        voucherLineRow.SetIntegerValue((long)C.Voucher.DueDate, ConvertDate(accountMapping.DueDate));
                        voucherLineRow.SetIntegerValue((long)C.Voucher.ValueDate, ConvertDate(accountMapping.ValueDate));
                        voucherLineRow.SetIntegerValue((long)C.Voucher.OrgUnit1, accountMapping.DepartmentId ?? 0);
                        //project and stafff is not available in demo version, uncommnet this later
                        // voucherLineRow.SetIntegerValue((long)C.Voucher.OrgUnit2, accountMapping.ProjectId);
                        //
                        // voucherLineRow.SetIntegerValue((long)C.Voucher.OrgUnit3, accountMapping.StaffId);
                        //
                        voucherLineRow.SetStringValue((long)C.Voucher.Text, accountMapping.Text);
                    }
                }

                int lastOperationNo = request.LastOperationNo;
                ResponseReader responseReader = request.Dispatch(genericServiceClient);

                return responseReader.AllSucceeded;
            }

        }


        #region private methods
        private int ConvertDate(DateTime? dateInput)
        {
            var retVal = 0;
            if (dateInput != null)
            {
                DateTime date = dateInput ?? DateTime.Now;
                retVal = date.Year * 10000 + date.Month * 100 + date.Day;
            }
            return retVal;
        }

        private List<EntityBase> GetOrganizationUnits(long tableId, IList<KeyValuePair<string, long>> columns)
        {
            List<EntityBase> organizationUnitList = new List<EntityBase>();
            using (GenericServiceClient client = GetServiceClient())
            {
                var request = new RequestBuilder();
                Context context = GetVismaContext(request);
                TableHandler associateTable = context.UseTable(tableId);
                RowsSelection rowsSelection = associateTable.SelectRows();
                Rows rowsSupplier = rowsSelection.Rows;

                Projection customerProjection = rowsSupplier.ProjectColumns();
                foreach (KeyValuePair<string, long> column in columns)
                {
                    customerProjection.AddColumn(column.Value);
                }

                int lastOperationNo = request.LastOperationNo;

                ResponseReader response = request.Dispatch(client);
                if (response.AllSucceeded)
                {
                    OperationResult oprRes;
                    if (response.OperationResultDictionary.TryGetValue(lastOperationNo, out oprRes))
                    {
                        var projRes = (ProjectionResult)oprRes;

                        foreach (var resultRow in projRes.ResultSet.ResultRows)
                        {
                            EntityBase unit = new EntityBase();
                            unit.No = resultRow.GetIntegerValue(columns.First(kvp => kvp.Key == "UnitNo").Value);
                            unit.Name = resultRow.GetStringValue(columns.First(kvp => kvp.Key == "Name").Value);

                            organizationUnitList.Add(unit);
                        }
                    }
                }
            }
            return organizationUnitList;
        }

        private GenericServiceClient GetServiceClient()
        {
            var genericServiceClient = new GenericServiceClient();

            var credentials = new Credentials("standard", User, Password);
            credentials.Apply(genericServiceClient.ClientCredentials);
            return genericServiceClient;
        }

        private Context GetVismaContext(RequestBuilder request)
        {
            Context context;
            context = request.AddContext();
            context.UserName = User;
            context.CompanyNo = CompanyNo;
            context.CultureId = CultureId.English__UnitedKingdom;
            return context;
        }
        #endregion




    }
}

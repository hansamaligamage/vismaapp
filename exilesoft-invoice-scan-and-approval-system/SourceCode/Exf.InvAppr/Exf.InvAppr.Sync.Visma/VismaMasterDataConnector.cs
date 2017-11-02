using System;
using System.Collections.Generic;
using System.Linq;
using Exf.InvAppr.Service.Visma;
using Exf.InvAppr.Service.Visma.Dto;
using Exf.InvAppr.Sync.Visma.context;
using Exf.InvAppr.Data.Entities;
using System.Data.Entity.Validation;
using Exf.InvAppr.Data.Context;
using System.Configuration;
using Exf.InvAppr.Common;

namespace Exf.InvAppr.Sync.Visma
{
    public class VismaMasterDataConnector : IVismaConnector
    {

        VismaEntities vismaEntities;

        public VismaMasterDataConnector()
        {
            vismaEntities = new VismaEntities();
        }

        public List<Account> GetGeneralLedgers()
        {
            return new List<Account>();
        }

        public List<Account> GetAccounts()
        {
            var accounts =
                vismaEntities.Acs.Select(s => new Account {No = s.AcNo, Name = s.Nm, AccountType = 3}).ToList();
            var suppliers =
                vismaEntities.Actors.Where(s => s.SupNo != 0)
                    .Select(s => new Account {No = s.SupNo, Name = s.Nm, AccountType = 2}).ToList();
            accounts.AddRange(suppliers);
            return accounts;
        }

        public List<EntityBase> GetDepartments()
        {
            return vismaEntities.R1.Select(r => new EntityBase { No = r.RNo, Name = r.Nm }).ToList();
        }

        public List<EntityBase> GetProjects()
        {
            return vismaEntities.R2.Select(r => new EntityBase { No = r.RNo, Name = r.Nm }).ToList();
        }

        public List<EntityBase> GetStaff()
        {
            return vismaEntities.R3.Select(r => new EntityBase { No = r.RNo, Name = r.Nm }).ToList();
        }

        public List<EntityBase> GetTaxCodes()
        {
            return vismaEntities.TxCds.Select(t => new EntityBase { No = t.TxCdNo, Name = t.Descr }).ToList();
        }

        public List<EntityBase> GetCostAllocation()
        {
            return vismaEntities.R4.Select(r => new EntityBase { No = r.RNo, Name = r.Nm }).ToList();
        }


        public List<EntityBase> GetcurrencyList()
        {
            return vismaEntities.Curs.Select(c => new EntityBase { No = c.CurNo, Name = c.ISO }).ToList();
        }

        public List<Account> GetSuppliers()
        {
            List<Actor> suppliers = vismaEntities.Actors.Where(a => a.SupNo > 0).ToList();
            List<Account> accounts = suppliers.Select(s => new Account { No = s.SupNo, Name = s.SupNo + " - " + s.Nm }).ToList();
            return accounts;
        }

        public bool SaveVoucher(ICollection<AccountMapping> mappingList)
        {
            bool success = false;
            AuthContext context = new AuthContext();
            foreach (int voucherId in mappingList.Select(m => m.VoucherId).Distinct().ToList())
            {
                #region AcTr
                int entryNo = 1;
                string currencycode = "LKR";
                Cur currency = vismaEntities.Curs.FirstOrDefault(c => c.ISO == currencycode);
                Voucher voucher = context.Vouchers.Find(voucherId);
                int jNo = vismaEntities.AcTrs.Count() != 0 ? vismaEntities.AcTrs.Max(a => a.JNo) + 1 : 1;
                int vNo = vismaEntities.AcTrs.Count() != 0 ? vismaEntities.AcTrs.Max(a => a.VoNo) + 1 : 1;
                int voucherDate = mappingList.First(m => m.VoucherId == voucherId).VoucherDate.HasValue ?
                                  Convert.ToInt32(mappingList.First(m => m.VoucherId == voucherId).VoucherDate.Value.Year + "" + mappingList.First(m => m.VoucherId == voucherId).VoucherDate.Value.Month.ToString().PadLeft(2, '0')
                                  + "" + mappingList.First(m => m.VoucherId == voucherId).VoucherDate.Value.Day.ToString().PadLeft(2, '0')) : 0;
                short voucherDateYear = mappingList.First(m => m.VoucherId == voucherId).VoucherDate.HasValue ? (short)mappingList.First(m => m.VoucherId == voucherId).VoucherDate.Value.Year : (short)0;
                string supplierAccount = ConfigurationManager.AppSettings.GetSupplierAccount();
                List<AccountMapping> accountMappings = mappingList.Where(m => m.VoucherId == voucherId).ToList();
                int valueDate = 0;
                short valueDateYear = 0;
                short valueDateMonth = 0;
                int valueDateYearMonth = 0;
                foreach (AccountMapping mapping in accountMappings)
                {
                    valueDate = mapping.ValueDate.HasValue ?
                            Convert.ToInt32(mapping.ValueDate.Value.Year + "" + mapping.ValueDate.Value.Month.ToString().PadLeft(2, '0') + "" + mapping.ValueDate.Value.Day.ToString().PadLeft(2, '0')) : 0;
                    valueDateYear = mapping.ValueDate.HasValue ? (short)mapping.ValueDate.Value.Year : (short)0;
                    valueDateMonth = mapping.ValueDate.HasValue ? (short)mapping.ValueDate.Value.Month : (short)0;
                    valueDateYearMonth = mapping.ValueDate.HasValue ? Convert.ToInt32(mapping.ValueDate.Value.Year + "" + mapping.ValueDate.Value.Month.ToString().PadLeft(2, '0')) : 0;
                    decimal debitVat = 0;
                    #region debit entry
                    int txtrmvod = 0;
                    if (mapping.DebitAccountId != null)
                    {
                        Vat vat = null;
                        if (mapping.DebitVatId != null)
                        {
                            TxCd txcd = vismaEntities.TxCds.Find(mapping.DebitVatId);
                            if (txcd != null)
                            {
                                vat = vismaEntities.Vats.Find(txcd.VatNo);
                                if (vat != null)
                                    debitVat = Math.Round(mapping.AmountInDefaultCurrency * vat.Rt / (vat.Rt + 100));
                            }

                        }
                        AcTr acTr = new AcTr { JNo = jNo, EntNo = entryNo, AcNo = Convert.ToInt32(mapping.DebitAccountId), VoNo = vNo, VoDt = voucherDate, ValDt = valueDate, AcYr = valueDateYear, AcPr = valueDateMonth, VoTp = 0, Txt = "",
                            Cur = currency.CurNo, ExRt = currency.SalesRt, CurAm = mapping.AmountInDefaultCurrency - debitVat, AcAm = mapping.AmountInDefaultCurrency - debitVat, Qty = 0, R1 = Convert.ToInt32(mapping.DepartmentId),
                            R2 = Convert.ToInt32(mapping.ProjectId), R3 = Convert.ToInt32(mapping.StaffId), R4 = 0, R5 = 0, R6 = 0, TxYr = valueDateYear, TxTrm = 1, EntAm = mapping.AmountInDefaultCurrency,
                            Bas = mapping.AmountInDefaultCurrency - debitVat, VatAm = debitVat, InvTxAm = 0, TxCd = vat != null ? vat.VatNo : 0, VatRt = vat != null ? vat.Rt : 0, InvTxRt = 0, Task = 0, Cust = 0, Emp = 0, Act = string.Empty,
                            SrcTp = 1, SrcJNo = 0, Err = 0, AgAcCl = 2, AgAcNo = voucher != null ? Convert.ToInt32(voucher.Supplier) : 0, Ctrl = 0, NoteNm = string.Empty, InvoNo = string.Empty, Cr = 0, WthRt = 0, WthAm = 0, CstP = 0,
                            CstAm = 0, Sup = Convert.ToInt32(supplierAccount), PropNo = 0, ExAut = 0, Txt2 = string.Empty, VoGr1 = 0, VoGr2 = 0,
                            PrevVoNo = 0,
                            TransSt = 0,
                            TxCl = 4,
                            TmpTr = 0,
                            TxYrVoD = voucherDateYear,
                            TxTrmVoD = (short)txtrmvod,
                            TxStNo = 0,
                            PictNo = string.Empty,
                            WebPg = string.Empty,
                            Free1 = 0,
                            Free2 = 0,
                            Free3 = 0,
                            Free4 = 0,
                            R7 = string.Empty,
                            R8 = string.Empty,
                            R9 = string.Empty,
                            R10 = string.Empty,
                            R11 = string.Empty,
                            R12 = string.Empty,
                            Un = 0,
                            PrBt = 0,
                            UpdBndNo = 1,
                            UpdLnNo = 0,
                            AcYrPr = valueDateYearMonth,
                            WfId = 0,
                            PLDNo = 0,
                            PLDFlow = 0,
                            CurCExRt = vat != null ? vat.Rt : 0,
                            CurCAm = mapping.AmountInDefaultCurrency,
                            CurCDt = valueDate,
                            CurCRNo = 0,
                            LastCAm = 0,
                            ExtRef1 = string.Empty,
                            ExtRef2 = string.Empty,
                            Dt1 = 0,
                            Dt2 = 0,
                            ExtRef3 = string.Empty,
                            Cur2 = 0,
                            ExRt2 = 0,
                            CurAm2 = 0,
                            CalcVAm = debitVat,
                            VATDiff = 0,
                            RealJNo = 0,
                            RealLnNo = 0,
                            Ctry = 0,
                            EsTxTrm = 0,
                            EsTxStNo = 0,
                            ChUsr = "TISAS",
                            CreUsr = "TISAS"
                        };

                        vismaEntities.AcTrs.Add(acTr);
                        entryNo += 1;
                    }
                    #endregion
                    #region VAT
                    if (mapping.DebitVatId != null)
                    {
                        int vatAccount = 0;
                        TxCd txcd = vismaEntities.TxCds.Find(mapping.DebitVatId);
                        if (txcd != null)
                        {
                            Vat vat = vismaEntities.Vats.Find(txcd.VatNo);
                            if (vat != null)
                                vatAccount = vat.IncAcNo;
                        }
                        AcTr acTr = new AcTr
                        {
                            JNo = jNo,
                            EntNo = entryNo,
                            AcNo = vatAccount,
                            VoNo = vNo,
                            VoDt = voucherDate,
                            ValDt = valueDate,
                            AcYr = valueDateYear,
                            AcPr = valueDateMonth,
                            VoTp = 0,
                            Txt = "",
                            Cur = currency.CurNo,
                            ExRt = 1,
                            CurAm = debitVat,
                            AcAm = debitVat,
                            Qty = 0,
                            R1 = Convert.ToInt32(mapping.DepartmentId),
                            R2 = Convert.ToInt32(mapping.ProjectId),
                            R3 = Convert.ToInt32(mapping.StaffId),
                            R4 = 0,
                            R5 = 0,
                            R6 = 0,
                            TxYr = valueDateYear,
                            TxTrm = 1,
                            EntAm = 0,
                            Bas = 0,
                            VatAm = 0,
                            InvTxAm = 0,
                            TxCd = 0,
                            VatRt = 0,
                            InvTxRt = 0,
                            Task = 0,
                            Cust = 0,
                            Emp = 0,
                            Act = string.Empty,
                            SrcTp = 2,
                            SrcJNo = 0,
                            Err = 0,
                            AgAcCl = 2,
                            AgAcNo = voucher != null ? Convert.ToInt32(voucher.Supplier) : 0,
                            Ctrl = 0,
                            NoteNm = string.Empty,
                            InvoNo = string.Empty,
                            Cr = 0,
                            WthRt = 0,
                            WthAm = 0,
                            CstP = 0,
                            CstAm = 0,
                            Sup = Convert.ToInt32(supplierAccount),
                            PropNo = 0,
                            ExAut = 0,
                            Txt2 = string.Empty,
                            VoGr1 = 0,
                            VoGr2 = 0,
                            PrevVoNo = 0,
                            TransSt = 0,
                            TxCl = 0,
                            TmpTr = 0,
                            TxYrVoD = voucherDateYear,
                            TxTrmVoD = (short)txtrmvod,
                            TxStNo = 0,
                            PictNo = string.Empty,
                            WebPg = string.Empty,
                            Free1 = 0,
                            Free2 = 0,
                            Free3 = 0,
                            Free4 = 0,
                            R7 = string.Empty,
                            R8 = string.Empty,
                            R9 = string.Empty,
                            R10 = string.Empty,
                            R11 = string.Empty,
                            R12 = string.Empty,
                            Un = 0,
                            PrBt = 0,
                            UpdBndNo = 1,
                            UpdLnNo = 0,
                            AcYrPr = valueDateYearMonth,
                            WfId = 0,
                            PLDNo = 0,
                            PLDFlow = 0,
                            CurCExRt = 1,
                            CurCAm = debitVat,
                            CurCDt = valueDate,
                            CurCRNo = 0,
                            LastCAm = 0,
                            ExtRef1 = string.Empty,
                            ExtRef2 = string.Empty,
                            Dt1 = 0,
                            Dt2 = 0,
                            ExtRef3 = string.Empty,
                            Cur2 = 0,
                            ExRt2 = 0,
                            CurAm2 = 0,
                            CalcVAm = debitVat,
                            VATDiff = 0,
                            RealJNo = 0,
                            RealLnNo = 0,
                            Ctry = 0,
                            EsTxTrm = 0,
                            EsTxStNo = 0,
                            ChUsr = "TISAS",
                            CreUsr = "TISAS"
                        };

                        vismaEntities.AcTrs.Add(acTr);
                        entryNo += 1;
                    }
                    #endregion
                    #region credit entry
                    if (mapping.CreditAccountId != null)
                    {
                        Vat vat = null;
                        if (mapping.DebitVatId != null)
                        {
                            TxCd txcd = vismaEntities.TxCds.Find(mapping.DebitVatId);
                            if (txcd != null)
                            {
                                vat = vismaEntities.Vats.Find(txcd.VatNo);
                            }

                        }
                        int debitAccount = mapping.DebitAccountId != null ? Convert.ToInt32(mapping.DebitAccountId)
                            : accountMappings.FirstOrDefault(a => a.DebitAccountId != null) != null ? Convert.ToInt32(accountMappings.First(a => a.DebitAccountId != null).DebitAccountId) : 0;
                        AcTr acTr = new AcTr
                        {
                            JNo = jNo,
                            EntNo = entryNo,
                            AcNo = Convert.ToInt32(mapping.CreditAccountId),
                            VoNo = vNo,
                            VoDt = voucherDate,
                            ValDt = valueDate,
                            AcYr = valueDateYear,
                            AcPr = valueDateMonth,
                            VoTp = 0,
                            Txt = "",
                            Cur = currency.CurNo,
                            ExRt = currency.SalesRt,
                            CurAm = -mapping.AmountInDefaultCurrency,
                            AcAm = -mapping.AmountInDefaultCurrency,
                            Qty = 0,
                            R1 = Convert.ToInt32(mapping.DepartmentId),
                            R2 = Convert.ToInt32(mapping.ProjectId),
                            R3 = Convert.ToInt32(mapping.StaffId),
                            R4 = 0,
                            R5 = 0,
                            R6 = 0,
                            TxYr = valueDateYear,
                            TxTrm = 1,
                            EntAm = -mapping.AmountInDefaultCurrency,
                            Bas = 0,
                            VatAm = 0,
                            InvTxAm = 0,
                            TxCd = 0,
                            VatRt = 0,
                            InvTxRt = 0,
                            Task = 0,
                            Cust = 0,
                            Emp = 0,
                            Act = string.Empty,
                            SrcTp = 2,
                            SrcJNo = 0,
                            Err = 0,
                            AgAcCl = 3,
                            AgAcNo = debitAccount,
                            Ctrl = 0,
                            NoteNm = string.Empty,
                            InvoNo = vNo.ToString(),
                            Cr = 1,
                            WthRt = 0,
                            WthAm = 0,
                            CstP = 0,
                            CstAm = 0,
                            Sup = Convert.ToInt32(supplierAccount),
                            PropNo = 0,
                            ExAut = 0,
                            Txt2 = string.Empty,
                            VoGr1 = 0,
                            VoGr2 = 0,
                            PrevVoNo = 0,
                            TransSt = 0,
                            TxCl = 0,
                            TmpTr = 0,
                            TxYrVoD = voucherDateYear,
                            TxTrmVoD = (short)txtrmvod,
                            TxStNo = 0,
                            PictNo = string.Empty,
                            WebPg = string.Empty,
                            Free1 = 0,
                            Free2 = 0,
                            Free3 = 0,
                            Free4 = 0,
                            R7 = string.Empty,
                            R8 = string.Empty,
                            R9 = string.Empty,
                            R10 = string.Empty,
                            R11 = string.Empty,
                            R12 = string.Empty,
                            Un = 0,
                            PrBt = 0,
                            UpdBndNo = 1,
                            UpdLnNo = 0,
                            AcYrPr = valueDateYearMonth,
                            WfId = 0,
                            PLDNo = 0,
                            PLDFlow = 0,
                            CurCExRt = vat != null ? vat.Rt : 0,
                            CurCAm = -mapping.AmountInDefaultCurrency,
                            CurCDt = valueDate,
                            CurCRNo = 0,
                            LastCAm = 0,
                            ExtRef1 = string.Empty,
                            ExtRef2 = string.Empty,
                            Dt1 = 0,
                            Dt2 = 0,
                            ExtRef3 = string.Empty,
                            Cur2 = 0,
                            ExRt2 = 0,
                            CurAm2 = 0,
                            CalcVAm = 0,
                            VATDiff = 0,
                            RealJNo = 0,
                            RealLnNo = 0,
                            Ctry = 0,
                            EsTxTrm = 0,
                            EsTxStNo = 0,
                            ChUsr = "TISAS",
                            CreUsr = "TISAS"
                        };

                        vismaEntities.AcTrs.Add(acTr);
                        entryNo += 1;
                    }
                    #endregion
                }
                try
                {
                    success = vismaEntities.SaveChanges() > 0;
                }
                catch (DbEntityValidationException e)
                {
                    foreach (var eve in e.EntityValidationErrors)
                    {
                        Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                            eve.Entry.Entity.GetType().Name, eve.Entry.State);
                        foreach (var ve in eve.ValidationErrors)
                        {
                            Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                                ve.PropertyName, ve.ErrorMessage);
                        }
                    }
                    throw;
                }
                #endregion
                #region OpSupTr
                // jNo = vismaEntities.OpSupTrs.Count() != 0 ? vismaEntities.OpSupTrs.Max(a => a.JNo) + 1 : 1;
                vNo = vismaEntities.OpSupTrs.Count() != 0 ? vismaEntities.OpSupTrs.Max(a => a.VoNo) + 1 : 1;
                valueDate = 0;
                valueDateYear = 0;
                valueDateMonth = 0;
                int dueDate = 0;
                int department = 0;
                int project = 0;
                int staff = 0;
                int debitAcc = 0;
                int invoiceLineCount = 0;
                if (accountMappings.Count() == 1)
                {
                    department = Convert.ToInt32(accountMappings.First().DepartmentId);
                    project = Convert.ToInt32(accountMappings.First().ProjectId);
                    staff = Convert.ToInt32(accountMappings.First().StaffId);
                    debitAcc = Convert.ToInt32(accountMappings.First().DebitAccountId);
                    invoiceLineCount = 1;
                }
                else
                    invoiceLineCount = accountMappings.Count();
                AccountMapping accountMappingValDate = accountMappings.FirstOrDefault(s => s.ValueDate != null);
                if (accountMappingValDate != null)
                {
                    valueDate = Convert.ToInt32(accountMappingValDate.ValueDate.Value.Year + "" + accountMappingValDate.ValueDate.Value.Month.ToString().PadLeft(2, '0') + "" + accountMappingValDate.ValueDate.Value.Day.ToString().PadLeft(2, '0'));
                    valueDateYear = accountMappingValDate.ValueDate.HasValue ? (short)accountMappingValDate.ValueDate.Value.Year : (short)0;
                    valueDateMonth = accountMappingValDate.ValueDate.HasValue ? (short)accountMappingValDate.ValueDate.Value.Month : (short)0;
                }
                AccountMapping accountMappingDueDate = accountMappings.FirstOrDefault(s => s.DueDate != null);
                if (accountMappingDueDate != null)
                    dueDate = Convert.ToInt32(accountMappingDueDate.ValueDate.Value.Year + "" + accountMappingDueDate.ValueDate.Value.Month.ToString().PadLeft(2, '0') + "" + accountMappingDueDate.ValueDate.Value.Day.ToString().PadLeft(2, '0'));
                OpSupTr opSupTr = new OpSupTr
                {
                    JNo = jNo,
                    EntNo = 1,
                    SupNo = voucher != null ? Convert.ToInt32(voucher.Supplier) : 0,
                    VoNo = vNo,
                    VoDt = voucherDate,
                    ValDt = valueDate,
                    AcYr = valueDateYear,
                    AcPr = valueDateMonth,
                    VoTp = 0,
                    Txt = "",
                    Cur = currency.CurNo,
                    ExRt = currency.SalesRt,
                    CurAm = -accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    RCurAm = -accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    Am = -accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    RAm = -accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    DueDt = dueDate,
                    PayedDt = 0,
                    OrdNo = 0,
                    InvoNo = string.Empty,
                    Ref = vNo.ToString(),
                    AgRef = string.Empty,
                    Purc = 0,
                    St = 1,
                    Pri = 0,
                    CID = string.Empty,
                    Att = 0,
                    AttDt1 = 0,
                    AttDt2 = 0,
                    ExcRmt = 0,
                    EstPayDt = dueDate,
                    RmtRnNo = 0,
                    GenAcNo = Convert.ToInt32(supplierAccount),
                    Qty = 0,
                    R1 = department,
                    R2 = project,
                    R3 = staff,
                    R4 = 0,
                    R5 = 0,
                    R6 = 0,
                    SrcTp = 1,
                    SrcJNo = 0,
                    Err = 0,
                    AgAcCl = 0,
                    AgAcNo = debitAcc,
                    Ctrl = 0,
                    NoteNm = string.Empty,
                    Cr = 1,
                    PmtTrm = 0,
                    CshDueDt = dueDate,
                    CshCurAm = 0,
                    CshAm = 0,
                    PrtCurAm = 0,
                    PrtAm = 0,
                    Txt2 = string.Empty,
                    BankG = string.Empty,
                    VoGr1 = 0,
                    VoGr2 = 0,
                    FixCurAm = 0,
                    FixAm = 0,
                    PrevVoNo = 0,
                    AttVoNo = 0,
                    TransSt = 0,
                    EFT1 = 0,
                    EFT2 = 0,
                    EFT3 = 0,
                    EFT4 = 0,
                    VatAm = 0,
                    BPmtNo = 0,
                    TmpTr = 0,
                    CNAm = 0,
                    DelActNo = 0,
                    PictNo = string.Empty,
                    WebPg = string.Empty,
                    Free1 = 0,
                    Free2 = 0,
                    Free3 = 0,
                    Free4 = 0,
                    R7 = string.Empty,
                    R8 = string.Empty,
                    R9 = string.Empty,
                    R10 = string.Empty,
                    R11 = string.Empty,
                    R12 = string.Empty,
                    GiroChSm = 0,
                    PmtMt = 0,
                    Un = 0,
                    PrBt = 0,
                    UpdBndNo = 1,
                    UpdLnNo = invoiceLineCount,
                    AcYrPr = valueDateYearMonth,
                    WfId = 0,
                    PLDNo = 0,
                    PLDFlow = 0,
                    BankCon = 0,
                    BankAcLn = 0,
                    PmtCur = 0,
                    TrfExRt = 0,
                    CurCExRt = currency.SalesRt,
                    CurCAm = -accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    CurCDt = valueDate,
                    CurCRNo = 0,
                    LastCAm = 0,
                    RemCAm = 0,
                    ExtRef1 = string.Empty,
                    ExtRef2 = string.Empty,
                    Dt1 = 0,
                    Dt2 = 0,
                    ExtRef3 = string.Empty,
                    Cur2 = 0,
                    ExRt2 = 0,
                    CurAm2 = 0,
                    CRCshAm = 0,
                    RCshAm = 0,
                    EftFrmTp = 0,
                    Ctry = 0,
                    ChUsr = "TISAS",
                    CreUsr = "TISAS"
                };
                vismaEntities.OpSupTrs.Add(opSupTr);
                #endregion
                #region SupTr
                vNo = vismaEntities.SupTrs.Count() != 0 ? vismaEntities.SupTrs.Max(a => a.VoNo) + 1 : 1;
                SupTr supTr = new SupTr
                {
                    JNo = jNo,
                    EntNo = 1,
                    SupNo = voucher != null ? Convert.ToInt32(voucher.Supplier) : 0,
                    VoNo = vNo,
                    VoDt = voucherDate,
                    ValDt = valueDate,
                    AcYr = valueDateYear,
                    AcPr = valueDateMonth,
                    VoTp = 0,
                    Txt = "",
                    Cur = currency.CurNo,
                    ExRt = currency.SalesRt,
                    CurAm = -accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    RCurAm = -accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    Am = -accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    RAm = -accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    DueDt = dueDate,
                    PayedDt = 0,
                    OrdNo = 0,
                    InvoNo = string.Empty,
                    Ref = vNo.ToString(),
                    AgRef = string.Empty,
                    Purc = 0,
                    St = 1,
                    Pri = 0,
                    CID = string.Empty,
                    Att = 0,
                    AttDt1 = 0,
                    AttDt2 = 0,
                    ExcRmt = 0,
                    EstPayDt = dueDate,
                    RmtRnNo = 0,
                    GenAcNo = Convert.ToInt32(supplierAccount),
                    Qty = 0,
                    R1 = department,
                    R2 = project,
                    R3 = staff,
                    R4 = 0,
                    R5 = 0,
                    R6 = 0,
                    SrcTp = 1,
                    SrcJNo = 0,
                    Err = 0,
                    AgAcCl = 0,
                    AgAcNo = debitAcc,
                    Ctrl = 0,
                    NoteNm = string.Empty,
                    Cr = 1,
                    PmtTrm = 0,
                    CshDueDt = dueDate,
                    CshCurAm = 0,
                    CshAm = 0,
                    PrtCurAm = 0,
                    PrtAm = 0,
                    Txt2 = string.Empty,
                    BankG = string.Empty,
                    VoGr1 = 0,
                    VoGr2 = 0,
                    FixCurAm = 0,
                    FixAm = 0,
                    PrevVoNo = 0,
                    AttVoNo = 0,
                    TransSt = 0,
                    EFT1 = 0,
                    EFT2 = 0,
                    EFT3 = 0,
                    EFT4 = 0,
                    VatAm = 0,
                    BPmtNo = 0,
                    TmpTr = 0,
                    CNAm = 0,
                    DelActNo = 0,
                    PictNo = string.Empty,
                    WebPg = string.Empty,
                    Free1 = 0,
                    Free2 = 0,
                    Free3 = 0,
                    Free4 = 0,
                    R7 = string.Empty,
                    R8 = string.Empty,
                    R9 = string.Empty,
                    R10 = string.Empty,
                    R11 = string.Empty,
                    R12 = string.Empty,
                    GiroChSm = 0,
                    PmtMt = 0,
                    Un = 0,
                    PrBt = 0,
                    UpdBndNo = 1,
                    UpdLnNo = invoiceLineCount,
                    AcYrPr = valueDateYearMonth,
                    WfId = 0,
                    PLDNo = 0,
                    PLDFlow = 0,
                    BankCon = 0,
                    BankAcLn = 0,
                    PmtCur = 0,
                    TrfExRt = 0,
                    CurCExRt = currency.SalesRt,
                    CurCAm = -accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    CurCDt = valueDate,
                    CurCRNo = 0,
                    LastCAm = 0,
                    RemCAm = 0,
                    ExtRef1 = string.Empty,
                    ExtRef2 = string.Empty,
                    Dt1 = 0,
                    Dt2 = 0,
                    ExtRef3 = string.Empty,
                    Cur2 = 0,
                    ExRt2 = 0,
                    CurAm2 = 0,
                    CRCshAm = 0,
                    RCshAm = 0,
                    EftFrmTp = 0,
                    Ctry = 0,
                    ChUsr = "TISAS",
                    CreUsr = "TISAS"
                };
                vismaEntities.SupTrs.Add(supTr);
                #endregion
                #region Upd
                Upd upd = new Upd {
                    JNo = jNo,
                    MinVoNo = 0,
                    MaxVoNo = 0,
                    CustTr = 0,
                    SupTr = 1,
                    AcTr = vismaEntities.AcTrs.Count(a => a.JNo == jNo),
                    TotTr = vismaEntities.AcTrs.Count(a => a.JNo == jNo) + 1,
                    ErrCnt = 0,
                    NewBal = 0,
                    CustCh = 0,
                    SupCh = -accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    SmDb = accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    SmCr = accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    InvTx = 0,
                    PropTr = 0,
                    PropCh = 0,
                    ChUsr = "TISAS",
                    CreUsr = "TISAS"
                };
                vismaEntities.Upds.Add(upd);
                #endregion
                #region UpdBnd
                UpdBnd updBnd = new UpdBnd {
                    JNo = jNo,
                    BndNo = 1,
                    Descr = string.Empty,
                    ValDt = valueDate,
                    AcYr = valueDateYear,
                    AcPr = valueDateMonth,
                    TxYr = valueDateYear,
                    TxTrm = 0,
                    SrNo = 0,
                    MinVoNo = 0,
                    MaxVoNo = 0,
                    R1 = 0,
                    R2 = 0,
                    R3 = 0,
                    R4 = 0,
                    R5 = 0,
                    R6 = 0,
                    CustTr = 0,
                    SupTr = 1,
                    AcTr = vismaEntities.AcTrs.Count(a => a.JNo == jNo),
                    TotTr = vismaEntities.AcTrs.Count(a => a.JNo == jNo) + 1,
                    ErrCnt = 0,
                    NewBal = 0,
                    CustCh = 0,
                    SupCh = - accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    SmDb = accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    SmCr = accountMappings.Where(a => a.CreditAccountId != null).Sum(s => s.AmountInDefaultCurrency),
                    InvTx = 0,
                    SrcTp = 1,
                    SrcJNo = 0,
                    PropTr = 0,
                    PropCh = 0,
                    UpdBSt = 0,
                    BtPro = 0,
                    RevDt = 0,
                    RevAcYr =0,
                    RevAcPr = 0,
                    RevTxYr = 0,
                    RevTxTrm = 0,
                    R7 = string.Empty,
                    R8 = string.Empty,
                    R9 = string.Empty,
                    R10 = string.Empty,
                    R11 = string.Empty,
                    R12 = string.Empty,
                    PrBt = 0,
                    CustNo = 0,
                    Seller = 0,
                    Att = 0,
                    BankAcNo = 0,
                    Cur = 0,
                    CSmDb = 0,
                    CSmCr = 0,
                    AcNo = 0,
                    Cur2 = 0,
                    PrvJNo = 0,
                    PrvBndNo = 0,
                    CSmDb2 = 0,
                    CSmCr2 = 0,
                    SmDbExVat = 0,
                    SmCrExVat = 0,
                    EsTxTrm = 0,
                    RevEsTxTrm = 0,
                    ChUsr = "TISAS",
                    CreUsr = "TISAS"
                };
                vismaEntities.UpdBnds.Add(updBnd);
                #endregion
                try
                {
                    success = vismaEntities.SaveChanges() > 0;
                }
                catch (DbEntityValidationException e)
                {
                    foreach (var eve in e.EntityValidationErrors)
                    {
                        Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                            eve.Entry.Entity.GetType().Name, eve.Entry.State);
                        foreach (var ve in eve.ValidationErrors)
                        {
                            Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                                ve.PropertyName, ve.ErrorMessage);
                        }
                    }
                    throw;
                }
            }
            return success;
        }

    }
}

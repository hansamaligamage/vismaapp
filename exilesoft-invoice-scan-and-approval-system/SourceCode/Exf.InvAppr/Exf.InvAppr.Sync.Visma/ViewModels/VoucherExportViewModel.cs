using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Sync.Visma.context;
using Exf.InvAppr.Data.Context;
using System.Configuration;
using Exf.InvAppr.Common;

namespace Exf.InvAppr.Sync.Visma.ViewModels
{
    public class VoucherExportViewModel
    {
        public string BndNo { get; set; }
        public string LnNo { get; set; }
        public string VoNo { get; set; }
        public string VoDt { get; set; }
        public string ValDt { get; set; }
        public string AcYr { get; set; }
        public string AcPr { get; set; }
        public string TxYr { get; set; }
        public string TxTrm { get; set; }
        public string VoTp { get; set; }
        public string Txt { get; set; }
        public string DbAcCl { get; set; }
        public string DbAcNo { get; set; }
        public string DbTxCd { get; set; }
        public string CrAcCl { get; set; }
        public string CrAcNo { get; set; }
        public string CrTxCd { get; set; }
        public string Cur { get; set; }
        public string ExRt { get; set; }
        public string CurAm { get; set; }
        public string Am { get; set; }
        public string Qty { get; set; }
        public string DstGr { get; set; }
        public string R1 { get; set; }
        public string R2 { get; set; }
        public string R3 { get; set; }
        public string R4 { get; set; }
        public string R5 { get; set; }
        public string R6 { get; set; }
        public string InvoNo { get; set; }
        public string Ref { get; set; }
        public string AgRef { get; set; }
        public string PmtTrm { get; set; }
        public string DueDt { get; set; }
        public string IntRt { get; set; }
        public string Pri { get; set; }
        public string Exc { get; set; }
        public string Att { get; set; }
        public string Task { get; set; }
        public string Cust { get; set; }
        public string Sup { get; set; }
        public string Emp { get; set; }
        public string Act { get; set; }
        public string CID { get; set; }
        public string DbAutSt { get; set; }
        public string CrAutSt { get; set; }
        public string NoteNm { get; set; }
        public string VoTpFl { get; set; }
        public string DbAcFl { get; set; }
        public string CrAcFl { get; set; }
        public string Dupl { get; set; }
        public string Srt { get; set; }
        public string Obl { get; set; }
        public string PropPrc { get; set; }
        public string PropNo { get; set; }
        public string ExAut { get; set; }
        public string Txt2 { get; set; }
        public string BankG { get; set; }
        public string VoGr1 { get; set; }
        public string VoGr2 { get; set; }
        public string VatAm { get; set; }
        public string FixCurAm { get; set; }
        public string FixAm { get; set; }
        public string CshDueDt { get; set; }
        public string CshCurAm { get; set; }
        public string CshAm { get; set; }
        public string PrevVoNo { get; set; }
        public string TransSt { get; set; }
        public string EFT1 { get; set; }
        public string EFT2 { get; set; }
        public string EFT3 { get; set; }
        public string EFT4 { get; set; }
        public string DbTrnCl { get; set; }
        public string CrTrnCl { get; set; }
        public string TmpTr { get; set; }
        public string PrtCurAm { get; set; }
        public string PrtAm { get; set; }
        public string ClPrc { get; set; }
        public string AmExVAT { get; set; }
        public string DelActNo { get; set; }
        public string CstAm { get; set; }
        public string PictNo { get; set; }
        public string WebPg { get; set; }
        public string Free1 { get; set; }
        public string Free2 { get; set; }
        public string Free3 { get; set; }
        public string Free4 { get; set; }
        public string DbAcFl2 { get; set; }
        public string CrAcFl2 { get; set; }
        public string R7 { get; set; }
        public string R8 { get; set; }
        public string R9 { get; set; }
        public string R10 { get; set; }
        public string R11 { get; set; }
        public string R12 { get; set; }
        public string GiroChSm { get; set; }
        public string PmtMt { get; set; }
        public string Un { get; set; }
        public string PrBt { get; set; }
        public string JNo { get; set; }
        public string UpdBndNo { get; set; }
        public string UpdLnNo { get; set; }
        public string PmVaCAm { get; set; }
        public string PmVaAm { get; set; }
        public string DbTxCdP { get; set; }
        public string DbTrnClP { get; set; }
        public string CrTxCdP { get; set; }
        public string CrTrnClP { get; set; }
        public string WfId { get; set; }
        public string PLDNo { get; set; }
        public string PLDFlow { get; set; }
        public string ExtRef1 { get; set; }
        public string ExtRef2 { get; set; }
        public string Dt1 { get; set; }
        public string Dt2 { get; set; }
        public string BankCon { get; set; }
        public string BankAcLn { get; set; }
        public string PmVaAmCD { get; set; }
        public string FreeAm { get; set; }
        public string FreeCurA { get; set; }
        public string PStYrPr { get; set; }
        public string PEnYrPr { get; set; }
        public string SmDb { get; set; }
        public string SmCr { get; set; }
        public string BankAm { get; set; }
        public string ExtRef3 { get; set; }
        public string Cur2 { get; set; }
        public string ExRt2 { get; set; }
        public string CurAm2 { get; set; }
        public string RealJNo { get; set; }
        public string ValSt1 { get; set; }
        public string ValSt2 { get; set; }
        public string ValSt3 { get; set; }
        public string ValSt4 { get; set; }
        public string EftFrmTp { get; set; }
        public string PrK { get; set; }
        public string StrtPer { get; set; }
        public string RealLnNo { get; set; }
        public string Ctry { get; set; }
        public string EsTxTrm { get; set; }

        public VoucherExportViewModel(string batchNo, string lineNo, string webPage, AccountMapping accountMapping)
        {
            SetDefaultValues();
            AssignValues(batchNo, lineNo, webPage, accountMapping);
        }

        private void SetDefaultValues()
        {
            BndNo = "";
            LnNo = "";
            VoNo = "";
            VoDt = "";
            ValDt = "0";
            AcYr = "0";
            AcPr = "0";
            TxYr = "0";
            TxTrm = "0";
            VoTp = "1";
            Txt = "";
            DbAcCl = "3";
            DbAcNo = "";
            DbTxCd = "0";
            CrAcCl = "2";
            CrAcNo = "";
            CrTxCd = "0";
            Cur = "";
            ExRt = "";
            CurAm = "";
            Am = "";
            Qty = "0.000000";
            DstGr = "0";
            R1 = "";
            R2 = "";
            R3 = "";
            R4 = "";
            R5 = "0";
            R6 = "0";
            InvoNo = "";
            Ref = "";
            AgRef = "";
            PmtTrm = "30";
            DueDt = "";
            IntRt = "0.000000";
            Pri = "0";
            Exc = "0";
            Att = "0";
            Task = "0";
            Cust = "0";
            Sup = "";
            Emp = "0";
            Act = "";
            CID = "";
            DbAutSt = "1";
            CrAutSt = "1";
            NoteNm = "";
            VoTpFl = "";
            DbAcFl = "";
            CrAcFl = "";
            Dupl = "0";
            Srt = "1";
            Obl = "";
            PropPrc = "0";
            PropNo = "0";
            ExAut = "0";
            Txt2 = "";
            BankG = "";
            VoGr1 = "0";
            VoGr2 = "0";
            VatAm = "0.000000";
            FixCurAm = "0.000000";
            FixAm = "0.000000";
            CshDueDt = "0";
            CshCurAm = "";
            CshAm = "";
            PrevVoNo = "0";
            TransSt = "0";
            EFT1 = "0";
            EFT2 = "0";
            EFT3 = "0";
            EFT4 = "0";
            DbTrnCl = "0";
            CrTrnCl = "0";
            TmpTr = "0";
            PrtCurAm = "0.000000";
            PrtAm = "0.000000";
            ClPrc = "0";
            AmExVAT = "";
            DelActNo = "0";
            CstAm = "0.000000";
            PictNo = "";
            WebPg = "";
            Free1 = "0.000000";
            Free2 = "";
            Free3 = "";
            Free4 = "";
            DbAcFl2 = "";
            CrAcFl2 = "";
            R7 = "";
            R8 = "";
            R9 = "";
            R10 = "";
            R11 = "";
            R12 = "";
            GiroChSm = "0";
            PmtMt = "0";
            Un = "0";
            PrBt = "0";
            JNo = "0";
            UpdBndNo = "0";
            UpdLnNo = "0";
            PmVaCAm = "0.000000";
            PmVaAm = "0.000000";
            DbTxCdP = "0";
            DbTrnClP = "0";
            CrTxCdP = "0";
            CrTrnClP = "0";
            WfId = "0";
            PLDNo = "0";
            PLDFlow = "0";
            ExtRef1 = "";
            ExtRef2 = "";
            Dt1 = "0";
            Dt2 = "0";
            BankCon = "0";
            BankAcLn = "0";
            PmVaAmCD = "0.000000";
            FreeAm = "0.000000";
            FreeCurA = "0.000000";
            PStYrPr = "0";
            PEnYrPr = "0";
            SmDb = "0.000000";
            SmCr = "0.000000";
            BankAm = "0.000000";
            ExtRef3 = "";
            Cur2 = "0";
            ExRt2 = "0.000000";
            CurAm2 = "0.000000";
            RealJNo = "0";
            ValSt1 = "0";
            ValSt2 = "0";
            ValSt3 = "0";
            ValSt4 = "0";
            EftFrmTp = "0";
            PrK = "0";
            StrtPer = "0";
            RealLnNo = "0";
            Ctry = "0";
            EsTxTrm = "0";
        }

        private void AssignValues(string batchNo, string lineNo, string webPage, AccountMapping accountMapping)
        {
            VismaEntities vismaEntities = new VismaEntities();
            AuthContext context = new AuthContext();
            BndNo = batchNo;
            int batch = Convert.ToInt32(batchNo);
            WaVo voucher = vismaEntities.WaVoes.FirstOrDefault(w => w.BndNo == batch);
            LnNo = lineNo.ToString();
            string voucherSeries = ConfigurationManager.AppSettings.GetVoucherSeries();
            VoSr vosr = vismaEntities.VoSrs.FirstOrDefault(v => v.Nm == voucherSeries);
            if (vosr != null)
            {
                VoNo = vosr.NxtVoNo.ToString();
                vosr.NxtVoNo = vosr.NxtVoNo + 1;
                vismaEntities.SaveChanges();
            }
            VoDt = accountMapping.VoucherDate.HasValue ? accountMapping.VoucherDate.Value.Year + "" + accountMapping.VoucherDate.Value.Month.ToString().PadLeft(2, '0') + "" + accountMapping.VoucherDate.Value.Day.ToString().PadLeft(2, '0')
                : string.Empty;
            Txt = accountMapping.Text;
            DbAcNo = accountMapping.DebitAccountId == null ? string.Empty : accountMapping.DebitAccountId.ToString();
            CrAcNo = accountMapping.CreditAccountId == null ? string.Empty : accountMapping.CreditAccountId.ToString();
            //Cur = accountMapping.Currency1.ToString();
            //ExRt = accountMapping.ExchangeRate1.ToString();
            CurAm = accountMapping.AmountInDefaultCurrency.ToString();
            Am = accountMapping.AmountInDefaultCurrency.ToString();
            R1 = accountMapping.DepartmentId.ToString();
            R2 = accountMapping.ProjectId.ToString();
            R3 = accountMapping.StaffId.ToString();
            R4 = accountMapping.CostAllocationId.ToString();
            DueDt = accountMapping.DueDate.HasValue ? accountMapping.DueDate.Value.Year + "" + accountMapping.DueDate.Value.Month.ToString().PadLeft(2, '0') + "" + accountMapping.DueDate.Value.Day.ToString().PadLeft(2, '0') : string.Empty;
            string supplier = context.Vouchers.Find(accountMapping.VoucherId) == null ? string.Empty : context.Vouchers.Find(accountMapping.VoucherId).Supplier;
            Sup = supplier;
            CshCurAm = accountMapping.AmountInDefaultCurrency.ToString();
            CshAm = accountMapping.AmountInDefaultCurrency.ToString();
            AmExVAT = accountMapping.AmountInDefaultCurrency.ToString();
            //string currencycode = "LKR";
            Cur currency = vismaEntities.Curs.FirstOrDefault(c => c.ISO == accountMapping.Currency1Code);
            if (currency != null)
            {
                Cur = currency.CurNo.ToString();
                ExRt = currency.SalesRt.ToString();
                Am = (accountMapping.AmountInDefaultCurrency * currency.SalesRt).ToString();
            }
            ValDt = accountMapping.ValueDate.HasValue ? accountMapping.ValueDate.Value.Year + "" + accountMapping.ValueDate.Value.Month.ToString().PadLeft(2, '0') + "" + accountMapping.ValueDate.Value.Day.ToString().PadLeft(2, '0')
                : string.Empty;
            AcYr = accountMapping.ValueDate.HasValue ? accountMapping.ValueDate.Value.Year.ToString() : string.Empty;

            List<AcPr> periods = accountMapping.ValueDate.HasValue ? vismaEntities.AcPrs.Where(p => p.Yr == (short)accountMapping.ValueDate.Value.Year).ToList() : null;
            int valuedate = ValDt != string.Empty ? Convert.ToInt32(ValDt) : 0;
            AcPr period = periods.Where(p => p.FrDt <= valuedate && p.ToDt >= valuedate).FirstOrDefault();
            AcPr = period != null ? period.Pr.ToString() : string.Empty;
            WebPg = webPage;
            DbTxCd = accountMapping.DebitVatId.ToString();
        }
    }
}

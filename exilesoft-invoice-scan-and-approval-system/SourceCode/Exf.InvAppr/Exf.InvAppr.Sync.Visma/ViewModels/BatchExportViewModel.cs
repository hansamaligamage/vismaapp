using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Sync.Visma.context;

namespace Exf.InvAppr.Sync.Visma.ViewModels
{
    public class BatchExportViewModel
    {
        public string BndNo { get; set; }

        public string Descr { get; set; }

        public string ValDt { get; set; }

        public string AcYr { get; set; }

        public string AcPr { get; set; }

        public string TxYr { get; set; }

        public string TxTrm { get; set; }

        public string SrNo { get; set; }

        public string R1 { get; set; }

        public string R2 { get; set; }

        public string R3 { get; set; }

        public string R4 { get; set; }

        public string R5 { get; set; }

        public string R6 { get; set; }

        public string SmDb { get; set; }

        public string SmCr { get; set; }

        public string CtrlSm { get; set; }

        public string SrcTp { get; set; }

        public string SrcJNo { get; set; }

        public string Keep { get; set; }

        public string Att { get; set; }

        public string Susp { get; set; }

        public string Dupl { get; set; }

        public string BankAcNo { get; set; }

        public string BankIB { get; set; }

        public string BankOB { get; set; }

        public string CpBankCh { get; set; }

        public string BtPro { get; set; }

        public string RevDt { get; set; }

        public string RevAcYr { get; set; }

        public string RevAcPr { get; set; }

        public string RevTxYr { get; set; }

        public string RevTxTrm { get; set; }

        public string R7 { get; set; }

        public string R8 { get; set; }

        public string R9 { get; set; }

        public string R10 { get; set; }

        public string R11 { get; set; }

        public string R12 { get; set; }

        public string PrBt { get; set; }

        public string Cur { get; set; }

        public string CSmDb { get; set; }

        public string CSmCr { get; set; }

        public string AcNo { get; set; }

        public string CustNo { get; set; }

        public string Seller { get; set; }

        public string Cur2 { get; set; }

        public string PrvJNo { get; set; }

        public string PrvBndNo { get; set; }

        public string CSmDb2 { get; set; }

        public string CSmCr2 { get; set; }

        public string SmDbExVat { get; set; }

        public string SmCrExVat { get; set; }

        public string EsTxTrm { get; set; }

        public string RevEsTxTrm { get; set; }

        public BatchExportViewModel(Voucher voucher, string batchNo)
        {
            SetDefaultValues();
            AssignValues(voucher, batchNo);
        }

        private void SetDefaultValues()
        {
            BndNo = "1";
            Descr = "";
            ValDt = "20170402";
            AcYr = "0";
            AcPr = "0";
            TxYr = "0";
            TxTrm = "0";
            SrNo = "0";
            R1 = "0";
            R2 = "0";
            R3 = "0";
            R4 = "0";
            R5 = "0";
            R6 = "0";
            SmDb = "0.000000";
            SmCr = "0.000000";
            CtrlSm = "0.000000";
            SrcTp = "1";
            SrcJNo = "0";
            Keep = "0";
            Att = "0";
            Susp = "0";
            Dupl = "0";
            BankAcNo = "0";
            BankIB = "0.000000";
            BankOB = "0.000000";
            CpBankCh = "0.000000";
            BtPro = "0";
            RevDt = "0";
            RevAcYr = "0";
            RevAcPr = "0";
            RevTxYr = "0";
            RevTxTrm = "0";
            R7 = "";
            R8 = "";
            R9 = "";
            R10 = "";
            R11 = "";
            R12 = "";
            PrBt = "0";
            Cur = "0";
            CSmDb = "0.000000";
            CSmCr = "0.000000";
            AcNo = "0";
            CustNo = "0";
            Seller = "0";
            Cur2 = "0";
            PrvJNo = "0";
            PrvBndNo = "0";
            CSmDb2 = "0.000000";
            CSmCr2 = "0.000000";
            SmDbExVat = "0.000000";
            SmCrExVat = "0.000000";
            EsTxTrm = "0";
            RevEsTxTrm = "0";
        }

        private void AssignValues(Voucher voucher, string batchNo)
        {
            //TO DO : Need to refactor this. Should not initialize a Db Connection here. Instead the required sequeuce numbers need to be passed to the method.
            VismaEntities vismaEntities = new VismaEntities();
            BndNo = batchNo;
            ValDt = voucher.InvoiceDate.HasValue ? voucher.InvoiceDate.Value.Year + "" + voucher.InvoiceDate.Value.Month.ToString().PadLeft(2, '0') + "" + voucher.InvoiceDate.Value.Day.ToString().PadLeft(2, '0') : string.Empty;
            AcYr = voucher.InvoiceDate.HasValue ? voucher.InvoiceDate.Value.Year.ToString() : string.Empty;
            List<AcPr> periods = voucher.InvoiceDate.HasValue ? vismaEntities.AcPrs.Where(p => p.Yr == (short)voucher.InvoiceDate.Value.Year).ToList() : null;
            int valuedate = ValDt != string.Empty ? Convert.ToInt32(ValDt) : 0;
            if (valuedate != 0)
            {
                AcPr period = periods.Where(p => p.FrDt <= valuedate && p.ToDt >= valuedate).FirstOrDefault();
                AcPr = period != null ? period.Pr.ToString() : string.Empty;
            }
            TxYr = voucher.InvoiceDate.HasValue ? voucher.InvoiceDate.Value.Year.ToString() : string.Empty;
            TxTrm = "0";
            VoSr vosr = vismaEntities.VoSrs.FirstOrDefault(v => v.Nm == "Normal voucher");
            if(vosr != null)
                SrNo = vosr.VoSrNo.ToString();
            SmDb = "0.000000"; //
            SmCr = "0.000000"; //
            CSmDb = "0.000000"; //
            CSmCr = "0.000000"; //
            SmDbExVat = "0.000000"; //
            SmCrExVat = "0.000000"; //
            string currencycode = "LKR";
            Cur currency = vismaEntities.Curs.FirstOrDefault(c => c.ISO == currencycode);
            if (currency != null)
                Cur = currency.CurNo.ToString();
        }
    }
}

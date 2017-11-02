using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Sync.Visma.ViewModels;
using Exf.InvAppr.Sync.Visma.context;
using System.Configuration;

namespace Exf.InvAppr.Sync.Visma
{
    public class IncomingInvoiceExporter
    {
        public string Export(List<Voucher> vouchers)
        {
            int batch = 1;
            var exportString = new StringBuilder();
            VismaEntities vismaEntities = new VismaEntities();
            foreach (var voucher in vouchers)
            {
                int lineNo = 1;
                string batchNo = batch.ToString();
                GenerateBatch(batchNo, exportString, voucher);

                if (voucher.VismaAccountMappings != null)
                {
                    foreach (var vismaAccountMapping in voucher.VismaAccountMappings)
                    {
                        GenerateVoucherLine(voucher.Id, batchNo, lineNo.ToString(), exportString, vismaAccountMapping);
                        lineNo++;
                    }
                }
                exportString.Append(Environment.NewLine);
                batch++;
            }
            return exportString.ToString();
        }

        private void GenerateBatch(string batchNo, StringBuilder exportString, Voucher voucher)
        {
             var batchExportViewModel = new BatchExportViewModel(voucher, batchNo);
            var tableName = @"@WaBnd";
            var columnList =
                "BndNo, Descr, ValDt, AcYr, AcPr, TxYr, TxTrm, SrNo, R1, R2, R3, R4, R5, R6, SmDb, SmCr, CtrlSm, SrcTp, SrcJNo, Keep, Att, Susp, Dupl, BankAcNo, BankIB, BankOB, CpBankCh, BtPro, RevDt, RevAcYr, RevAcPr, RevTxYr, RevTxTrm, R7, R8, R9, R10, R11, R12, PrBt, Cur, CSmDb, CSmCr, AcNo, CustNo, Seller, Cur2, PrvJNo, PrvBndNo, CSmDb2, CSmCr2, SmDbExVat, SmCrExVat, EsTxTrm, RevEsTxTrm";
            var header = string.Format(@"{0} ({1})", tableName, columnList);
            exportString.Append(header);
            exportString.Append(Environment.NewLine);
            var columns = columnList.Split(',');
            foreach (var column in columns)
            {
                var cellValue = batchExportViewModel.GetType().GetProperty(column.Trim()).GetValue(batchExportViewModel, null);
                exportString.Append("\"" + cellValue + "\" ");
            }
            exportString.Append(Environment.NewLine);
            tableName = @"@WaVo";
            columnList =
              "BndNo, LnNo, VoNo, VoDt, ValDt, AcYr, AcPr, TxYr, TxTrm, VoTp, Txt, DbAcCl, DbAcNo, DbTxCd, CrAcCl, CrAcNo, CrTxCd, Cur, ExRt, CurAm, Am, Qty, DstGr, R1, R2, R3, R4, R5, R6, InvoNo, Ref, AgRef, PmtTrm, DueDt, IntRt, Pri, Exc, Att, Task, Cust, Sup, Emp, Act, CID, DbAutSt, CrAutSt, NoteNm, VoTpFl, DbAcFl, CrAcFl, Dupl, Srt, Obl, PropPrc, PropNo, ExAut, Txt2, BankG, VoGr1, VoGr2, VatAm, FixCurAm, FixAm, CshDueDt, CshCurAm, CshAm, PrevVoNo, TransSt, EFT1, EFT2, EFT3, EFT4, DbTrnCl, CrTrnCl, TmpTr, PrtCurAm, PrtAm, ClPrc, AmExVAT, DelActNo, CstAm, PictNo, WebPg, Free1, Free2, Free3, Free4, DbAcFl2, CrAcFl2, R7, R8, R9, R10, R11, R12, GiroChSm, PmtMt, Un, PrBt, JNo, UpdBndNo, UpdLnNo, PmVaCAm, PmVaAm, DbTxCdP, DbTrnClP, CrTxCdP, CrTrnClP, WfId, PLDNo, PLDFlow, ExtRef1, ExtRef2, Dt1, Dt2, BankCon, BankAcLn, PmVaAmCD, FreeAm, FreeCurA, PStYrPr, PEnYrPr, SmDb, SmCr, BankAm, ExtRef3, Cur2, ExRt2, CurAm2, RealJNo, ValSt1, ValSt2, ValSt3, ValSt4, EftFrmTp, PrK, StrtPer, RealLnNo, Ctry, EsTxTrm";
            header = string.Format(@"{0} ({1})", tableName, columnList);
            exportString.Append(header);
            exportString.Append(Environment.NewLine);
        }

        private void GenerateVoucherLine(int voucherId, string batchNo, string lineNo, StringBuilder exportString, AccountMapping voucherLine)
        {
            string siteUrl = ConfigurationManager.AppSettings["siteUrl"];
            string webPage = string.Empty;
            if(!string.IsNullOrEmpty(siteUrl))
                webPage = string.Format(siteUrl + "invoice/{0}/code", voucherId);
            var voucherExportViewModel = new VoucherExportViewModel(batchNo, lineNo, webPage, voucherLine);
            var columnList =
                "BndNo, LnNo, VoNo, VoDt, ValDt, AcYr, AcPr, TxYr, TxTrm, VoTp, Txt, DbAcCl, DbAcNo, DbTxCd, CrAcCl, CrAcNo, CrTxCd, Cur, ExRt, CurAm, Am, Qty, DstGr, R1, R2, R3, R4, R5, R6, InvoNo, Ref, AgRef, PmtTrm, DueDt, IntRt, Pri, Exc, Att, Task, Cust, Sup, Emp, Act, CID, DbAutSt, CrAutSt, NoteNm, VoTpFl, DbAcFl, CrAcFl, Dupl, Srt, Obl, PropPrc, PropNo, ExAut, Txt2, BankG, VoGr1, VoGr2, VatAm, FixCurAm, FixAm, CshDueDt, CshCurAm, CshAm, PrevVoNo, TransSt, EFT1, EFT2, EFT3, EFT4, DbTrnCl, CrTrnCl, TmpTr, PrtCurAm, PrtAm, ClPrc, AmExVAT, DelActNo, CstAm, PictNo, WebPg, Free1, Free2, Free3, Free4, DbAcFl2, CrAcFl2, R7, R8, R9, R10, R11, R12, GiroChSm, PmtMt, Un, PrBt, JNo, UpdBndNo, UpdLnNo, PmVaCAm, PmVaAm, DbTxCdP, DbTrnClP, CrTxCdP, CrTrnClP, WfId, PLDNo, PLDFlow, ExtRef1, ExtRef2, Dt1, Dt2, BankCon, BankAcLn, PmVaAmCD, FreeAm, FreeCurA, PStYrPr, PEnYrPr, SmDb, SmCr, BankAm, ExtRef3, Cur2, ExRt2, CurAm2, RealJNo, ValSt1, ValSt2, ValSt3, ValSt4, EftFrmTp, PrK, StrtPer, RealLnNo, Ctry, EsTxTrm";
            var columns = columnList.Split(',');
            foreach (var column in columns)
            {
                var cellValue = voucherExportViewModel.GetType().GetProperty(column.Trim()).GetValue(voucherExportViewModel, null);
                exportString.Append("\"" + cellValue + "\" ");
            }
            exportString.Append(Environment.NewLine);
        }
    }
}

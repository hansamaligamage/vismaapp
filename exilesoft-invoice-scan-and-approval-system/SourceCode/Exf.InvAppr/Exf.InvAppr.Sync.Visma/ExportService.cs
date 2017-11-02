using Exf.InvAppr.Data.Context;
using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Sync.Visma.context;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Sync.Visma
{
    public class 
        ExportService
    {
        VismaEntities vismaEntities = new VismaEntities();
        AuthContext authEntities = new AuthContext();

        public string Run(List<string> tableList)
        {

            string filePath = @"c:\temp\testWrite.txt";

            exportTransactionData(tableList, filePath);

            //exportVouchers();

            return filePath;
        }

        private void exportVouchers() {

            // NOTE: order is important here
            Dictionary<string, string> cDictionary = new Dictionary<string, string>();
            cDictionary.Add("VoNo", "InvoiceNo");   // Voucher no.
            cDictionary.Add("VoDt", "InvoiceDate"); // Voucher date
            cDictionary.Add("Votp", "VoucherType"); // Voucher type
            cDictionary.Add("DbAcNo", "");
            cDictionary.Add("DbTxCd", "");          // Debt tax code
            cDictionary.Add("DbAcCl", "");          // Debit account
            cDictionary.Add("DbTrnCl", "");         // Debit turnover class
            cDictionary.Add("CrAcNo", "");
            cDictionary.Add("CrTxCd", "");          // Credit tax code
            cDictionary.Add("CrTrnCl", "");         // Credit turnover class
            cDictionary.Add("CrAcCl", "");          // Credit account type
            cDictionary.Add("TransSt", "");
            cDictionary.Add("VatAm", "");           // VAT amount
            cDictionary.Add("Am", "");
            cDictionary.Add("InvoNo", "");
            cDictionary.Add("DueDt", "");
            cDictionary.Add("AgRef", "");

            StringBuilder strBuilder = new StringBuilder();

            strBuilder.Append("@WaBnd(ValDt)\n20040205");

            strBuilder.Append("@WaVo(VoNo,VoDt,Votp,DbAcNo,DbTxCd,DbAcCl,DbTrnCl,CrAcNo,CrTxCd,CrTrnCl,CrAcCl,TransSt,VatAm,Am,InvoNo,DueDt,AgRef)");
            strBuilder.Append(Environment.NewLine);
            strBuilder.Append(Environment.NewLine);

            string constr = ConfigurationManager.ConnectionStrings["AuthContext"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            conn.Open();

            SqlCommand sqlCmd = new SqlCommand("SELECT * FROM Vouchers", conn);
            SqlDataReader reader = sqlCmd.ExecuteReader();

            while (reader.Read()) {

                foreach (KeyValuePair<string, string> entry in cDictionary) {

                    if ("" != entry.Value) {
                        strBuilder.Append("\"" + reader[entry.Value] + "\" ");
                    }
                    strBuilder.Append(Environment.NewLine);

                }

            }

            StreamWriter sw = new StreamWriter(@"c:\temp\vouchers.txt");
            sw.WriteLine(strBuilder.ToString());

            sw.Close();
        }
      

        private int getLastJNo(string tableName)
        {
            TransactionDataTracker tracker = authEntities.TransactionDataTrackers.FirstOrDefault(tr => tr.TableName == tableName);

            if (null != tracker) {
                return (int)tracker.SequenceNumber;
            }

            return 0;           
        }

        private void exportTransactionData(List<string> tableList, string filePath)
        {

            string constr = ConfigurationManager.ConnectionStrings["VismaConnection"].ConnectionString;
            SqlConnection vismaConn = new SqlConnection(constr);
            vismaConn.Open();

            StringBuilder strBuilder = new StringBuilder();

            foreach (string tableName in tableList)
            {

                int jNo = getLastJNo(tableName);

                if (0 == jNo) {
                    continue;
                }

                SqlCommand sqlCmd = new SqlCommand("SELECT * FROM " + tableName + " WHERE JNo > " + jNo, vismaConn);
                SqlDataReader reader = sqlCmd.ExecuteReader();
                string[] columns = new string[reader.FieldCount];

                for (int i = 0; i < reader.FieldCount; i++)
                {
                    columns[i] = reader.GetName(i);
                }

                strBuilder.Append(Environment.NewLine);
                strBuilder.Append(Environment.NewLine);

                strBuilder.Append("@" + tableName);
                strBuilder.Append("(");
                strBuilder.Append(string.Join(", ", columns));
                strBuilder.Append(")");
                strBuilder.Append(Environment.NewLine);
                strBuilder.Append(Environment.NewLine);

                while (reader.Read())
                {
                    Object[] values = new Object[reader.FieldCount];
                    int fieldCount = reader.GetValues(values);

                    for (int i = 0; i < fieldCount; i++)
                    {
                        strBuilder.Append("\"" + values[i] + "\" ");
                    }

                    strBuilder.Append(Environment.NewLine);
                }

                strBuilder.Append(Environment.NewLine);
                reader.Close();
            }

            StreamWriter sw = new StreamWriter(filePath);
            sw.WriteLine(strBuilder.ToString());

            sw.Close();
            vismaConn.Close();

        }
    }
}

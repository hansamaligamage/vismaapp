using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WriteFile
{
    class Program
    {
        static void Main(string[] args)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection sqlCon = new SqlConnection(constr);
            sqlCon.Open();

            DataTable dt = sqlCon.GetSchema("Tables");

            string fileName = @"c:\temp\testWrite.txt";
            StringBuilder sbr = new StringBuilder();

            foreach (DataRow row in dt.Rows)
            {
                var tableName = row[2].ToString();
                SqlCommand sqlCmd = new SqlCommand(
                "Select * from "+ tableName, sqlCon);
                SqlDataReader reader = sqlCmd.ExecuteReader();

                string[] output = new string[reader.FieldCount];

                for (int i = 0; i < reader.FieldCount; i++)
                    output[i] = reader.GetName(i) ;

                sbr.Append("@" + tableName);
                sbr.Append("(");
                sbr.Append(string.Join(", ", output));
                sbr.Append(")");
                sbr.Append(Environment.NewLine);
                sbr.Append(Environment.NewLine);

                while (reader.Read())
                {
                    reader.GetValues(output);
                    var test = new string[output.Length];
                    int j = 0;
                    foreach (var item in output)
                    {
                        test[j] =  "\"" +output[j]+"\"";
                        j++;
                    }
                    sbr.Append(string.Join(" ", test));
                    sbr.Append(Environment.NewLine);
                }

                sbr.Append(Environment.NewLine);

                reader.Close();
            }
            StreamWriter sw = new StreamWriter(fileName);
            sw.WriteLine(sbr.ToString());

            sw.Close();
            sqlCon.Close();

            Console.WriteLine("Export DB to Csv completed successfully");
            Console.ReadKey();
        }
    }
}

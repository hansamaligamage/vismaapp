using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace ReadFile
{
    class Program
    {
        static void Main(string[] args)
        {
            string path = @"c:\temp\test.txt";
            if (File.Exists(path))
            {
                string readText = File.ReadAllText(path);
                var tableSegment = readText.Split(new char[] {'@'} ,StringSplitOptions.RemoveEmptyEntries);
                for (int i = 0; i < tableSegment.Length; i++)
                {
                    var table = tableSegment[i];
                    //var record = table.Substring(0, table.IndexOf(Environment.NewLine));
                    var record = table.Split(new string[] { "\r\n" }, StringSplitOptions.RemoveEmptyEntries);

                    var tableheader = record[0].Split(new char[] { '(', ')' });
                    var tableName = tableheader[0];
                    var columns = tableheader[1];
                    ProcessTableHeader(tableName, columns);

                    for (int j = 1; j < record.Length; j++)
                    {
                        ProcessTableData(tableName,record[j]);
                    }
                }
                Console.WriteLine("Record added successfully");
                Console.ReadKey();

              //  var test = File.ReadAllLines(path);
            }
        }

        public static void ProcessTableHeader(string tableName,string tablecolumns)
        {
            var columns = tablecolumns.Split(',');

            string query = "IF OBJECT_ID('dbo."+tableName+"', 'U') IS NULL ";
            query += "BEGIN ";
            query += "CREATE TABLE [dbo].["+ tableName +"](";
            foreach (var item in columns)
            {
                query += "["+item.Trim()+"] VARCHAR(MAX),";
            }
            query += ")";
            query += " END";

            UpdateDBTables(query);
        }

        public static void ProcessTableData(string tableName, string tabledata) {
            var reg = new Regex("\".*?\"");
            var data = reg.Matches(tabledata);
            var stringData = new string[data.Count];
            int index = 0;
            foreach (var item in data)
            {
                var text = item.ToString().Replace('\'',' ');
                stringData[index] = text.Replace('\"','\'');
                index++;
            }
            var insertVal = String.Join(",", stringData);

            string query = "INSERT INTO [dbo].[" + tableName + "]VALUES(";
            query += insertVal + ")";

            UpdateDBTables(query);
        }

        public static void UpdateDBTables(string query) {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
    }
}

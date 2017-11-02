using Exf.InvAppr.Data.Context;
using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Sync.Visma.context;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;

namespace Exf.InvAppr.Sync.Visma
{
    public class ImportService
    {

        VismaEntities vismaEntities = new VismaEntities();
        AuthContext authEntities = new AuthContext();

        public void Run(string fileData, List<string> tableList, List<string> exportTableList)
        {
            ProcessActorTable(fileData);
            var tableSegment = fileData.Split(new[] {'@'}, StringSplitOptions.RemoveEmptyEntries);
            foreach (var table in tableSegment)
            {
                var record = table.Split(new[] {"\r\n"}, StringSplitOptions.RemoveEmptyEntries);

                var tableheader = record[0].Split('(', ')');
                var tableName = tableheader[0].Trim();

                if (!tableList.Contains(tableName))
                    continue;

                var columns = tableheader[1];
                ProcessTableHeader(tableName, columns);

                if (null != exportTableList && exportTableList.Contains(tableName)) {
                    updateTrackTransactionTableSequence(tableName);
                }
                                
                ClearTable(tableName);
                for (int j = 1; j < record.Length; j++)
                {
                    ProcessTableData(tableName, columns, record[j]);
                }
            }
        }

        private void updateTrackTransactionTableSequence(string tableName) {

            int lastJNo = getJNo(tableName);

            // Assumption: JNo starts from 1
            if (0 != lastJNo)
            {
                TransactionDataTracker tracker = authEntities.TransactionDataTrackers.FirstOrDefault(tr => tr.TableName == tableName);
                if (null != tracker)
                {
                    tracker.SequenceNumber = lastJNo;
                }
                else {
                    // create record
                    TransactionDataTracker newTracker = new TransactionDataTracker();
                    newTracker.TableName = tableName;
                    newTracker.SequenceNumber = lastJNo;
                    authEntities.TransactionDataTrackers.Add(newTracker);
                }

                authEntities.SaveChanges();

            }
        }

        private void ClearTable(string tableName)
        {
            string query = "IF OBJECT_ID('dbo." + tableName + "', 'U') IS NOT NULL ";
            query += "BEGIN ";
            query += "TRUNCATE TABLE ";
            query += tableName;
            query += " END";
            UpdateDBTables(query);
        }

        private void ProcessActorTable (string fileData)
        {
            string tableName = "Actor";
            List<string> actors = new List<string>();
            var lines = fileData.Split(new[] { "\r\n@" }, StringSplitOptions.RemoveEmptyEntries);
            foreach (var line in lines)
            {
                if(line.StartsWith("Actor ("))
                {
                    var records = line.Split(new[] { "\r\n" }, StringSplitOptions.RemoveEmptyEntries);
                    string columns = records[0].Replace("(", "").Replace(")", "").Replace("Actor", "");
                    ProcessTableHeader(tableName, columns);
                    ClearTable(tableName);
                    for (int i = 1; i < records.Length; i++)
                    {
                        ProcessTableData(tableName, columns, records[i]);
                    }
                    break;
                }
            }
        }

        private void ProcessTableHeader(string tableName, string tablecolumns)
        {
            var columns = tablecolumns.Split(',');

            string query = "IF OBJECT_ID('dbo." + tableName + "', 'U') IS NULL ";
            query += "BEGIN ";
            query += "CREATE TABLE [dbo].[" + tableName + "](";
            foreach (var item in columns)
            {
                query += "[" + item.Trim() + "] VARCHAR(MAX),";
            }
            query += ")";
            query += " END";

            UpdateDBTables(query);
        }

        private void ProcessTableData(string tableName, string columnNames, string tabledata)
        {
            var reg = new Regex("\".*?\"");
            var data = reg.Matches(tabledata);
            var stringData = new string[data.Count];
            int index = 0;
            foreach (var item in data)
            {
                var text = item.ToString().Replace('\'', ' ');
                stringData[index] = text.Replace('\"', '\'');
                index++;
            }
            var insertVal = String.Join(",", stringData);

            string query = "INSERT INTO [dbo].[" + tableName + "](" + columnNames + ") VALUES(";
            query += insertVal + ")";

            UpdateDBTables(query);
        }

        private void UpdateDBTables(string query)
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["VismaConnection"].ConnectionString;
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
            catch (Exception ex)
            {
                
            }

            
        }

        private int getJNo(string tableName)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["VismaConnection"].ConnectionString;
            int jNo = 0;

            string lastSequenceNumberQuery = "SELECT TOP 1 JNo FROM  [dbo].[" + tableName + "] ORDER BY JNo DESC";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                SqlCommand command = new SqlCommand(lastSequenceNumberQuery, connection);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    jNo = (int)reader[0];
                }
            }
            return jNo;
        }

    }
}

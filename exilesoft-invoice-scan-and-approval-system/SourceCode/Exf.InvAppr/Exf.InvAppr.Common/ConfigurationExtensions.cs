using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Common
{
    public static class ConfigurationExtensions
    {
        public static bool IsDeployedInAzure(this NameValueCollection appSettings)
        {
            return bool.Parse(appSettings["IsDeployedInAzure"]);
        }

        public static long MaximunAttachmentSize(this NameValueCollection appSettings)
        {
            return long.Parse(appSettings["maximunAttachmentSize"]);
        }

        public static string EmailServer(this NameValueCollection appSettings)
        {
            return appSettings["emailServer"];
        }

        public static int EmailPort(this NameValueCollection appSettings)
        {
            return int.Parse(appSettings["emailPort"]);
        }

        public static int SchedulerInterval(this NameValueCollection appSettings)
        {
            return int.Parse(appSettings["serviceInterval"]);
        }

        public static string EmailCredentialUserName(this NameValueCollection appSettings)
        {
            return appSettings["emailCredentialUserName"];
        }

        public static string EmailCredentialPassword(this NameValueCollection appSettings)
        {
            return appSettings["emailCredentialPassword"];
        }

        public static string LocalInvoicePath(this NameValueCollection appSettings)
        {
            return appSettings["localInvoicePath"];
        }

        public static string AttachmentStorePath(this NameValueCollection appSettings)
        {
            return appSettings["attachmentStorePath"];
        }

        public static string EmailBox(this NameValueCollection appSettings)
        {
            return appSettings["emailBox"];
        }

        public static string ListOfSupportFileExtension(this NameValueCollection appSettings)
        {
            return appSettings["listOfSupportFileExtension"];
        }

        public static string AzureStorageConnectionString(this NameValueCollection appSettings)
        {
            return appSettings["StorageConnectionString"];
        }

        public static string ImportFilesPath(this NameValueCollection appSettings)
        {
            return appSettings["ImportFilesPath"];
        }

        public static string AuthConextConnectionString(this NameValueCollection appSettings)
        {
            return appSettings["AuthConextConnectionString"];
        }
        public static bool IsVismaApiAccess (this NameValueCollection appSettings)
        {
            return bool.Parse(appSettings["IsVismaApiAccess"]);
        }


        public static List<string> MasterDataFileList(this NameValueCollection appSettings)
        {
            return appSettings["MasterDataFileList"].Split(',').ToList();
        }

        public static List<string> TransactionDataFileList(this NameValueCollection appSettings)
        {
            return appSettings["TransactionDataFileList"].Split(',').ToList();
        }

        public static List<string> TransactionDataExportTableList(this NameValueCollection appSettings)
        {
            return appSettings["TransactionDataExportTableList"].Split(',').ToList();
        }

        public static string GetSupplierAccount (this NameValueCollection appsettings)
        {
            return appsettings["supplierAcc"];
        }

        public static string GetVoucherSeries (this NameValueCollection appsettings)
        {
            return appsettings["voucherSeries"];
        }

    }
}

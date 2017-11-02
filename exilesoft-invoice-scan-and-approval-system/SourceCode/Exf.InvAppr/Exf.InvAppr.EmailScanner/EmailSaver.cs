using Limilabs.Client.IMAP;
using Limilabs.Mail;
using Limilabs.Mail.Headers;
using log4net;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using Exf.InvAppr.Common;
using Microsoft.Azure;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Blob;
using Exf.InvAppr.EmailScanner.RegionConfig;

namespace Exf.InvAppr.EmailScanner
{
        public class EmailSaver : IDisposable
        {
            long maximunAttachmentSize;
            string emailServer;
            int emailPort;
            string emailCredentialUserName;
            string emailCredentialPassword;
            string attachmentStorePath;
            string emailBox;
            string listOfSupportFileExtension;
            private bool isDeployedInAzure;
            private RegionsCollection regions;
            private string authContextConnectionString;
            private string storageConnectionString;
       
            //ILog log;

            public EmailSaver(
                //ILog _log
                NameValueCollection appSettings,
                RegionsCollection regions
                )
            {
                //this.log = _log;
                maximunAttachmentSize = appSettings.MaximunAttachmentSize();
                emailServer = appSettings.EmailServer();
                emailPort = appSettings.EmailPort();
                emailCredentialUserName = appSettings.EmailCredentialUserName();
                emailCredentialPassword = appSettings.EmailCredentialPassword();
                attachmentStorePath = appSettings.AttachmentStorePath();
                emailBox = appSettings.EmailBox();
                listOfSupportFileExtension = appSettings.ListOfSupportFileExtension();
                isDeployedInAzure = appSettings.IsDeployedInAzure();
                authContextConnectionString = appSettings.AuthConextConnectionString();
                storageConnectionString = appSettings.AzureStorageConnectionString();
                this.regions = regions;
            }

            private void CreateRegions()
            {
                var regi = new RegionsCollection();
                var regNorway = new RegionConfig.Region {Name = "NOK"};
                regNorway.AddEmail(new Email {Voucher = "invoice",Address = "cdi@tiqri.com"});
                regi.AddNewRegion(regNorway);
            }

            private void EventLogWrite(string message)
            {
                //string sSource;
                //string sLog;
                //string sEvent;

                //sSource = "Exf.InvAppr.EmailSaverService";
                //sLog = "Application";
                //sEvent = "Sample Event";

                //if (!EventLog.SourceExists(sSource))
                //    EventLog.CreateEventSource(sSource, sLog);

                //EventLog.WriteEntry(sSource, message);
            }

            public void ProcessEmailLookup()
            {
                using (Imap imap = new Imap())
                {
                    try
                    {
                        imap.Connect(emailServer);
                        imap.Login(emailCredentialUserName, emailCredentialPassword);
                        imap.Select(emailBox);
                        List<long> uids = imap.Search(Flag.All);
                        if (uids.Count < 1)
                        {
                            //log.Info("New email not found.");
                            EventLogWrite("New email not found.");

                        }
                        else
                        {

                            foreach (long uid in uids)
                            {
                                byte[] eml = imap.GetMessageByUID(uid);
                                IMail email = new MailBuilder()
                                .CreateFromEml((eml));

                                var toAddress = email.To.Single<MailAddress>().GetMailboxes().Single<MailBox>().Address;

                                VoucherInfo voucherInfo = ConfigUtil.GetEmailDetailsByAddress(toAddress, regions);

                                if (voucherInfo != null)
                                {
                                    foreach (var attachment in email.Attachments)
                                    {
                                        if (IsAttachmentSizeExceed(attachment.Size))
                                        {
                                            //log.Info(string.Format("{0} attachment size {1} exceed threshold value of {2}",
                                            //attachment.SafeFileName, attachment.Size, maximunAttachmentSize));
                                            EventLogWrite(
                                                string.Format("{0} attachment size {1} exceed threshold value of {2}",
                                                    attachment.SafeFileName, attachment.Size, maximunAttachmentSize));

                                        }
                                        else if (InValidFileExtension(attachment.SafeFileName))
                                        {
                                            //log.Info(string.Format("Invalid file extension of {0}. Only support for {1} extensions.",
                                            //    attachment.SafeFileName, string.Join(",", listOfSupportFileExtension)));
                                            EventLogWrite(
                                                string.Format(
                                                    "Invalid file extension of {0}. Only support for {1} extensions.",
                                                    attachment.SafeFileName,
                                                    string.Join(",", listOfSupportFileExtension)));
                                        }
                                        else
                                        {
                                            string fileName = Guid.NewGuid() + ".png";

                                            if (isDeployedInAzure)
                                            {
                                                SaveInAzureStorage(ConvertImageBytes(attachment.Data),
                                                    fileName, storageConnectionString);
                                            }
                                            else
                                            {
                                                var resultingPath = Path.Combine(attachmentStorePath, fileName);
                                                using (Image image = Image.FromStream(new MemoryStream(attachment.Data))
                                                    )
                                                {
                                                    image.Save(resultingPath, ImageFormat.Png); // Or Png
                                                }
                                            }

                                            VoucherLogic.CreateVoucher(fileName, authContextConnectionString);

                                            //log.Info(string.Format("{0} attachment successfully saved.", attachment.SafeFileName));
                                            EventLogWrite(string.Format("{0} attachment successfully saved.",
                                                attachment.SafeFileName));
                                        }
                                    }
                                    imap.DeleteMessageByUID(uid);
                                }
                                else
                                {
                                    //log.Warn(string.Format("Received address {0} not granted to process.", toAddress));
                                    EventLogWrite(string.Format("Received address {0} not granted to process.", toAddress));
                                }
                            }
                            imap.Close();
                        }
                    }
                    catch (Exception ex)
                    {
                        EventLogWrite(ex.ToString());
                        //log.Error(ex.ToString());
                    }

                }
            }

            private void SaveInAzureStorage(byte[] data, string fileName, string connectionString)
            {
                //https://docs.microsoft.com/en-us/azure/storage/storage-dotnet-how-to-use-blobs
                //https://docs.microsoft.com/en-us/azure/storage/storage-use-emulator

                // Parse the connection string and return a reference to the storage account.
                var storageAccount =
                    CloudStorageAccount.Parse(connectionString);
                var blobClient = storageAccount.CreateCloudBlobClient();

                // Retrieve a reference to a container.
                CloudBlobContainer container = blobClient.GetContainerReference("srilanka");
                // Create the container if it doesn't already exist.
                container.CreateIfNotExists();

                // Retrieve reference to a blob with the file name
                var blockBlob = container.GetBlockBlobReference(fileName);
                using (var fileStream = new MemoryStream(data))
                {
                    blockBlob.UploadFromStream(fileStream);
                    blockBlob.Properties.ContentType = "image/png";
                    blockBlob.SetProperties();
                }
            }

        private byte[] ConvertImageBytes(byte[] imageBytes)
        {

            byte[] pngBytes;

            using (MemoryStream inStream = new MemoryStream(imageBytes))
            using (MemoryStream outStream = new MemoryStream())
            {
                Image.FromStream(inStream).Save(outStream, ImageFormat.Png);
                pngBytes = outStream.ToArray();
            }
            return pngBytes;
        }

        private bool IsAttachmentSizeExceed(long imageSize)
            {
                return imageSize > maximunAttachmentSize;
            }

            private bool InValidFileExtension(string fileName)
            {
                var sourceFileExt = Path.GetExtension(fileName);
                sourceFileExt = String.IsNullOrEmpty(sourceFileExt) ? sourceFileExt : sourceFileExt.Substring(1);
                return !listOfSupportFileExtension.Contains(sourceFileExt);
            }

            public void Dispose()
            {
            }
        }
}

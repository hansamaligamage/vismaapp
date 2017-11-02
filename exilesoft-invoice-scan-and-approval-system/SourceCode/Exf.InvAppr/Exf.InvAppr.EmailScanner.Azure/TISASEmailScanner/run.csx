
#r "Exf.InvAppr.EmailScanner.dll"

using System;
using System.Collections.Specialized;
using System.Configuration;
using Exf.InvAppr.EmailScanner;
using RegionConfig = Exf.InvAppr.EmailScanner.RegionConfig;

public static void Run(TimerInfo myTimer, TraceWriter log)
{
    //Initialize Application Settings
    //TODO : Move these into Applicaiton Settings in the Azure Function
    var appSettings = new NameValueCollection();
    appSettings.Add("StorageConnectionString", "DefaultEndpointsProtocol=https;AccountName=eisasstorage;AccountKey=+q/Js8Egh8Xmj7+lgLDrl/dldPLsTEhG+w34yG7qMw6jD8gt+qKp3OdJU4im6wJggbfHXAzHbBy+2LjQGmv3Cg==");
    appSettings.Add("AuthConextConnectionString", @"Data Source=eisis.database.windows.net;Initial Catalog=invoicedb;user id=exilesoft;password=eXile@123");
    appSettings.Add("maximunAttachmentSize", "20000000");
    appSettings.Add("emailServer", "smtp.office365.com");
    appSettings.Add("emailPort", "587");
    appSettings.Add("emailCredentialUserName", "tisas@tiqri.com");
    appSettings.Add("emailCredentialPassword", "Vula5172");
    appSettings.Add("emailBox", "ExfMessage");
    appSettings.Add("listOfSupportFileExtension", "tiff");
    appSettings.Add("serviceInterval", "60000");
    appSettings.Add("IsDeployedInAzure", "true");

    //CreateRegions();
    //TODO : Move these into Applicaiton Settings in the Azure Function
    var regions = new RegionConfig.RegionsCollection();
    var regNorway = new RegionConfig.Region { Name = "NOK" };
    regNorway.AddEmail(new RegionConfig.Email { Voucher = "invoice", Address = "tisas@tiqri.com" });
    regions.AddNewRegion(regNorway);

    //Initialize Lookup
    var emailSaver = new EmailSaver(appSettings, regions);
    emailSaver.ProcessEmailLookup();
}

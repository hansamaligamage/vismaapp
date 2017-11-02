using Exf.InvAppr.EmailSaverService;
using log4net;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Reflection;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;
using System.Timers;
using Exf.InvAppr.Common;
using Exf.InvAppr.EmailScanner;
using Exf.InvAppr.EmailScanner.RegionConfig;

namespace Exf.InvAppr.EmailSaverService
{
    public partial class EmailSaverService : ServiceBase
    {
        private Timer serviceSchduler = null;
        private static readonly ILog log =
            LogManager.GetLogger(MethodBase.GetCurrentMethod().DeclaringType);

        private RegionsCollection regions;

        public EmailSaverService()
        {
            InitializeComponent();
            ConfigurationSection sections = (ConfigurationSection) ConfigurationManager.GetSection("RegionConfig");
            if (sections != null)
            {
                regions = (sections as RegionConfigSection).Regions;
            }
        }

        protected override void OnStart(string[] args)
        {
            serviceSchduler = new Timer();
            this.serviceSchduler.Interval = ConfigurationManager.AppSettings.SchedulerInterval();
            this.serviceSchduler.Elapsed += new System.Timers.ElapsedEventHandler(this.ServiceTrigger);
            this.serviceSchduler.Enabled = true;
            log.Info("Email Saver Service started.");
            EventLogWrite("Email Service Start:Event Log");
        }

        private void ServiceTrigger(object sender, ElapsedEventArgs e)
        {
            EventLogWrite("New cycle start to seek for new email attachment..");

            log.Info("New cycle start to seek for new email attachment..");
            using (EmailSaver emailSaver = new EmailSaver(
                //log
                ConfigurationManager.AppSettings, regions
                ))
            {
                emailSaver.ProcessEmailLookup();
            }
        }

        protected override void OnStop()
        {
            log.Info("Email Saver Service stopped.");
            this.serviceSchduler.Enabled = false;

        }


        internal void Start()
        {
            OnStart(new string[0]);
        }

        private void EventLogWrite(string message)
        {
            string sSource;
            string sLog;
            string sEvent;

            sSource = "Exf.InvAppr.EmailSaverService";
            sLog = "Application";
            sEvent = "Sample Event";

            if (!EventLog.SourceExists(sSource))
                EventLog.CreateEventSource(sSource, sLog);

            EventLog.WriteEntry(sSource, message);
        }
    }
}

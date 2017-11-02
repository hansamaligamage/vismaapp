using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.EmailSaverService
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        static void Main()
        {
            ServiceBase[] ServicesToRun;

            EmailSaverService ems = new EmailSaverService();
            ServicesToRun = new ServiceBase[]
            {
                new EmailSaverService()
            };
            ServiceBase.Run(ServicesToRun);
            //EmailSaverService service = new EmailSaverService();
            //service.Start();
        }
    }
}

using System.Data.Entity.Core.EntityClient;
using Exf.InvAppr.Data.Context;
using Exf.InvAppr.Data.Entities;
using System.Data.Entity.Migrations;
using System.Linq;
using Exf.InvAppr.Common;
using System.Diagnostics;
using Region = Exf.InvAppr.Data.Entities.Region;

namespace Exf.InvAppr.EmailScanner
{
    public class VoucherLogic
    {

        private static void EventLogWrite(string message)
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

        public static int CreateVoucher (string fileName, string connectionSting)
        {

            string regionCode = "LK"; //in this sprint we focus on Sri lanka based vouchers only

            IAuthContext context = new AuthContext(connectionSting);

            Region region = context.Regions.FirstOrDefault(r => r.RegionCode == regionCode);
            if (region != null)
            {
                var voucher = new Voucher()
                {
                    InvoiceNo = "[ENTER INVOICE NO]",
                    Supplier = "",
                    Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified),
                    VoucherType = VoucherType.Invoice.ToString(),
                    FileName = fileName,
                    Region = region,
                    //Currency = region.CurrencyCode
                    // added.CreatedBy = loginUser != null ? loginUser.Name : String.Empty;
                };
                context.Vouchers.AddOrUpdate(voucher);
                return context.SaveChanges();
            }
            return 0;
        }

    }
}

using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Exf.InvAppr.Data.Entities;
using Exf.InvAppr.Sync.Visma;
using FluentAssertions;
using NUnit.Framework;

namespace Exf.InvAppr.Tests.Export
{
    [TestFixture]
    public class IncomingInvoice
    {
        [Test]
        public void TestBatch()
        {
            var vouchers = new List<Voucher>();
            var voucher = new Voucher {Amount = 5000, DueDate = new DateTime?(new DateTime(2017, 01, 01))};
            voucher.VismaAccountMappings = new List<AccountMapping>();
            voucher.VismaAccountMappings.Add(new AccountMapping());
            vouchers.Add(voucher);


            var voucher2 = new Voucher();
            voucher2.VismaAccountMappings = new List<AccountMapping>();
            voucher2.VismaAccountMappings.Add(new AccountMapping());
            voucher2.VismaAccountMappings.Add(new AccountMapping());
            voucher2.VismaAccountMappings.Add(new AccountMapping());

            vouchers.Add(voucher2);


            var incomingInvoiceExporter = new IncomingInvoiceExporter();
            var result = incomingInvoiceExporter.Export(vouchers);
            var expected = GetExpectedResult("BatchOnly.txt");
            result.Should().Be(expected);
        }

        private string GetExpectedResult(string fileName)
        {
            string sampleFilesPath = ConfigurationManager.AppSettings["SampleExportFilesPath"];
            return File.ReadAllText(Path.Combine(sampleFilesPath, fileName));
        }
    }

}

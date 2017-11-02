using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Exf.InvAppr.Service.API.Controllers;
using System.Net.Http;
using Exf.InvAppr.Data.Entities;
using System.Collections.Generic;
using Moq;
using System.Data.Entity;
using Exf.InvAppr.Data.Context;
using System.Linq;
using System.Web.Http.Hosting;
using System.Web.Http;
using Exf.InvAppr.Service.API.Models;
using Newtonsoft.Json;
using System.Threading.Tasks;
using System.IO;
using Exf.InvAppr.Common;

namespace Exf.InvAppr.Service.API.Test
{
    [TestClass]
    public class TestInvoiceController : BaseApiController
    {
        [TestMethod]
        public void GetInvoices_withNoFilter_ShouldReturnInvoices()
        {
            //Arrange
            IQueryable<Voucher> vouchers = new List<Voucher>
            {
                new Voucher {Id = 1, Amount = 234, VoucherType= "Invoice", Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified) },
                new Voucher {Id = 2, Amount = 300, VoucherType= "Invoice", Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified)}
            }.AsQueryable();

            InvoiceController invController = GetController(vouchers);

            SearchOptionsDTO searchoptions = new SearchOptionsDTO { PageNumber = 1, PageSize = 10 };
            var input = JsonConvert.SerializeObject(searchoptions);

            //Act
            var response = invController.GetInvoices(input);

            //Assert
            var voucherListDTO = GetObjectFromResponse<VoucherListDTO>(response);

            Assert.AreEqual(vouchers.Count(), voucherListDTO.voucherList.Count);
            Assert.AreEqual(vouchers.Count(), voucherListDTO.totalCount);
        }

        [TestMethod]
        public void GetInvoices_WithPagesize2_ShouldReturn2Invoices()
        {
            //Arrange
            int pageSize = 2;
            IQueryable<Voucher> vouchers = new List<Voucher>
            {
                new Voucher {Id = 1, Amount = 234, VoucherType= "Invoice", Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified) },
                new Voucher {Id = 2, Amount = 300, VoucherType= "Invoice", Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified)},
                new Voucher {Id = 3, Amount = 234, VoucherType= "Invoice", Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified) },
                new Voucher {Id = 4, Amount = 300, VoucherType= "Invoice", Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified)}
            }.AsQueryable();

            InvoiceController invController = GetController(vouchers);

            SearchOptionsDTO searchoptions = new SearchOptionsDTO { PageNumber = 1, PageSize = pageSize };
            var input = JsonConvert.SerializeObject(searchoptions);

            //Act
            var response = invController.GetInvoices(input);

            //Assert
            var voucherListDTO = GetObjectFromResponse<VoucherListDTO>(response);

            Assert.AreEqual(pageSize, voucherListDTO.voucherList.Count);
            Assert.AreEqual(vouchers.Count(), voucherListDTO.totalCount);
        }

        [TestMethod]
        public void GetInvoices_Of2ndPage_ShouldReturnOneInvoice()
        {
            //Arrange
            int pageSize = 2;
            int PageNumber = 2;
            IQueryable<Voucher> vouchers = new List<Voucher>
            {
                new Voucher {Id = 1, Amount = 234, VoucherType= "Invoice", Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified) },
                new Voucher {Id = 2, Amount = 300, VoucherType= "Invoice", Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified)},
                new Voucher {Id = 3, Amount = 234, VoucherType= "Invoice", Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified) }
               
            }.AsQueryable();

            InvoiceController invController = GetController(vouchers);

            SearchOptionsDTO searchoptions = new SearchOptionsDTO { PageNumber = PageNumber, PageSize = pageSize };
            var input = JsonConvert.SerializeObject(searchoptions);

            //Act
            var response = invController.GetInvoices(input);

            //Assert
            var voucherListDTO = GetObjectFromResponse<VoucherListDTO>(response);

            Assert.AreEqual(1, voucherListDTO.voucherList.Count);
            Assert.AreEqual(vouchers.Count(), voucherListDTO.totalCount);
        }

        [TestMethod]
        public void bulkApprove_withInvoices_shouldReturnSuccessMessage()
        {
            //Arrange
            string expected = "Invoices successfully updated.";
            IQueryable<Voucher> vouchers = new List<Voucher>
            {
                new Voucher {Id = 1, Amount = 234, VoucherType= "Invoice", Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified) },
                new Voucher {Id = 2, Amount = 300, VoucherType= "Invoice", Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified)},
                new Voucher {Id = 3, Amount = 234, VoucherType= "Invoice", Status = CommonHelper.GetEnumDescription(VoucherStatus.ToBeVerified) }
               
            }.AsQueryable();

            InvoiceController invController = GetController(vouchers);
            HttpRequestMessage request = new HttpRequestMessage();
            var voucherList = vouchers.ToList();
            var serializedList = JsonConvert.SerializeObject(voucherList, Formatting.None,
                        new JsonSerializerSettings()
                        {
                            ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                        });
            request.Content = new StringContent(serializedList, System.Text.Encoding.UTF8, "application/json");
          

            //Act
            var response = invController.BulkApprove(request);

            //Assert
            var message = GetObjectFromResponse<string>(response);

            Assert.IsTrue(message.Contains(expected));
        }

        [TestMethod]
        public void bulkApprove_withoutInvoices_shouldReturnSuccessMessage()
        {
            //Arrange
            string expected = "Invoices successfully updated.";
            IQueryable<Voucher> vouchers = new List<Voucher>
            {
            }.AsQueryable();

            InvoiceController invController = GetController(vouchers);
            HttpRequestMessage request = new HttpRequestMessage();
            var voucherList = vouchers.ToList();
            var serializedList = JsonConvert.SerializeObject(voucherList, Formatting.None,
                        new JsonSerializerSettings()
                        {
                            ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                        });
            request.Content = new StringContent(serializedList, System.Text.Encoding.UTF8, "application/json");


            //Act
            var response = invController.BulkApprove(request);

            //Assert
            var message = GetObjectFromResponse<string>(response);

            Assert.IsTrue(message.Contains(expected));
        }
        /*
        public void TestMail()
        {
            IQueryable<Voucher> vouchers = new List<Voucher>
            {
                new Voucher {Amount=234},
                new Voucher {Amount=234}
            }.AsQueryable();

            var dbSetMock = new Mock<IDbSet<Voucher>>();
            dbSetMock.Setup(m => m.Provider).Returns(vouchers.Provider);
            dbSetMock.Setup(m => m.Expression).Returns(vouchers.Expression);
            dbSetMock.Setup(m => m.ElementType).Returns(vouchers.ElementType);
            dbSetMock.Setup(m => m.GetEnumerator()).Returns(vouchers.GetEnumerator());

            var customDbContextMock = new Mock<IAuthContext>();
            customDbContextMock
                .Setup(x => x.Vouchers)
                .Returns(dbSetMock.Object);


            InvoiceController invController = new InvoiceController(customDbContextMock.Object);

            // invController.TestSendMail();

            Assert.IsTrue(true);
        }
        */

        private T GetObjectFromResponse<T>(HttpResponseMessage response)
        {
            var responseValue = string.Empty;

            Task task = response.Content.ReadAsStreamAsync().ContinueWith(t =>
            {
                var stream = t.Result;
                using (var reader = new StreamReader(stream))
                {
                    responseValue = reader.ReadToEnd();
                }
            });
            task.Wait();

            if (!typeof(T).Namespace.StartsWith("System"))
            {
                return JsonConvert.DeserializeObject<T>(responseValue);
            }
            else
            {
                return (T)Convert.ChangeType(responseValue, typeof(T));
            }
            
        }

        private InvoiceController GetController(IQueryable<Voucher> vouchers)
        {
            var dbSetMock = new Mock<IDbSet<Voucher>>();
            dbSetMock.Setup(m => m.Provider).Returns(vouchers.Provider);
            dbSetMock.Setup(m => m.Expression).Returns(vouchers.Expression);
            dbSetMock.Setup(m => m.ElementType).Returns(vouchers.ElementType);
            dbSetMock.Setup(m => m.GetEnumerator()).Returns(vouchers.GetEnumerator());

            var customDbContextMock = new Mock<IAuthContext>();
            customDbContextMock
                .Setup(x => x.Vouchers)
                .Returns(dbSetMock.Object);

            InvoiceController invController = new InvoiceController(customDbContextMock.Object);

            invController.Request = new HttpRequestMessage()
            {
                Properties = { { HttpPropertyKeys.HttpConfigurationKey, new HttpConfiguration() } }
            };

            return invController;
        }
    }
}

'use-strict'
app.controller('invoiceDetailController', ['invoiceService', '$routeParams', '$q', '$location', 'app_config', '$window', function (invoiceService, $routeParams, $q, $location, app_config, $window) {

    //private variables and functions
    var vm = this;
    var getInvoiceDetails = function () {
        invoiceService.getInvoiceDetails($routeParams.invId).then(function (data) {
            vm.invoiceDetails = data;
            vm.invoiceDetails.Voucher.DueDate = new Date(vm.invoiceDetails.Voucher.DueDate);
            vm.invoiceDetails.Voucher.InvoiceDate = new Date(vm.invoiceDetails.Voucher.InvoiceDate);
            vm.invoiceDetails.image = "/scannedInvoices/" + $routeParams.invId % 5 + ".jpg";
        })
    }
  
    //scope variables
    vm.limitedComments = {
        text: 'Show More',
        count: 1
    }
    vm.invoiceDetails = {};
    vm.invoiceDateOpened = false;
    vm.invoiceDateOptions = {
        formatYear: 'yy',
        maxDate: new Date(),
        startingDay: 1
    };
   
      vm.dueDateOptions = {
        formatYear: 'yy',
        startingDay: 1
    };
   
    vm.cancel = function () {
        $window.history.back();
    }

   
    vm.showHideComments = function () {
        if (vm.limitedComments.count == 1) {
            vm.limitedComments = {
                text: 'Show Less',
                count: vm.invoiceDetails.Voucher.Comments.length
            }
        }
        else {
            vm.limitedComments = {
                text: 'Show More',
                count: 1
            }
        }
    }
    //method calls
    getInvoiceDetails();

}]);

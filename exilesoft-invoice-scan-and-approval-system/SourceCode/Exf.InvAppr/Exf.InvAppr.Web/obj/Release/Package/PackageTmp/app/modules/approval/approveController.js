'use-strict'
app.controller('approveController', ['$rootScope', 'invoiceService', '$routeParams', '$q', '$location', 'app_config', function ($rootScope,invoiceService, $routeParams, $q, $location, app_config) {

    //private variables and functions
    var vm = this;
    var getInvoiceDetails = function () {
        invoiceService.getInvoiceDetails($routeParams.invId).then(function (data) {
            vm.invoiceDetails = data;
           // vm.invoiceDetails.Voucher.DueDate = new Date(vm.invoiceDetails.Voucher.DueDate);
            //vm.invoiceDetails.Voucher.InvoiceDate = new Date(vm.invoiceDetails.Voucher.InvoiceDate);
            //need to change this later when we have real images
           // vm.invoiceDetails.image = "/scannedInvoices/" + $routeParams.invId % 5 + ".jpg";
        })
    }
    var saveInvoice = function (invoice) {
        constructVoucher();
        invoiceService.saveInvoice(invoice).then(function (data) {
            $location.path('/pendingApproval');
        })
    }
    var constructVoucher = function () {
        if (vm.Comment.Text != '') {
            vm.invoiceDetails.Voucher.Comments = [vm.Comment];
        }
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
    vm.Comment = {
        Text: ''
    };
    vm.invoiceDateOpen = function () {
        vm.invoiceDateOpened = true;
    };

    vm.requestMoreInfo = function () {
        $location.path('/invoice/approver/' + vm.invoiceDetails.Voucher.Id + '/moreinforequest')
    };

    vm.dueDateOpened = false;
    vm.dueDateOptions = {
        formatYear: 'yy',
        startingDay: 1
    };
    vm.dueDateOpen = function () {
        vm.dueDateOpened = true;
    };
    vm.updateInvoice = function (invoice) {
        if (invoice.Supplier) {
            if (typeof (invoice.Supplier) == "string")
                invoice.Supplier = invoice.Supplier.split('-')[0];
            else
                invoice.Supplier = invoice.Supplier.No;
        }
        else
            invoice.Supplier = '';
        saveInvoice(invoice);
    }
    vm.approveInvoice = function (invoice) {
        invoice.status = app_config.VOUCHER_STATUS.APPROVED;
        constructVoucher();
        if (invoice.Supplier) {
            if (typeof (invoice.Supplier) == "string")
                invoice.Supplier = invoice.Supplier.split('-')[0];
            else
                invoice.Supplier = invoice.Supplier.No;
        }
        else
            invoice.Supplier = '';
        invoiceService.changeInvoiceStatus(invoice).then(function (data) {
            $rootScope.$broadcast('changeInvoiceCount');
            $location.path('/pendingApproval');
        })

    }
    vm.reject = function (invoice) {
        invoice.status = app_config.VOUCHER_STATUS.APPROVER_REJECTED;
        constructVoucher();
        if (invoice.Supplier) {
            if (typeof (invoice.Supplier) == "string")
                invoice.Supplier = invoice.Supplier.split('-')[0];
            else
                invoice.Supplier = invoice.Supplier.No;
        }
        else
            invoice.Supplier = '';
        invoiceService.changeInvoiceStatus(invoice).then(function (data) {
            $location.path('/pendingApproval');
        })
    }
    vm.cancel = function () {
        $location.path('/pendingApproval');
    }

    vm.requestMoreInfo = function () {
        $location.path('/invoice/approver/' + vm.invoiceDetails.Voucher.Id + '/moreinforequest')
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

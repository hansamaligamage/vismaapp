'use-strict'
app.controller('verifyController', ['$rootScope', 'invoiceService', 'authService', '$routeParams', '$q', '$location', 'app_config', function ($rootScope,invoiceService, authService, $routeParams, $q, $location, app_config) {

    //private variables and functions
    var vm = this;
    vm.authentication = authService.authentication;
    vm.message = "";
    var getInvoiceDetails = function () {
        invoiceService.getInvoiceDetails($routeParams.invId).then(function (data) {
            vm.invoiceDetails = data;
            invoiceService.getSupplierAccData($routeParams.invId).then(function (data) {
                vm.invoiceDetails.Suppliers = data;
            });
            invoiceService.getCurrencyData($routeParams.invId).then(function (data) {
                vm.invoiceDetails.CurrencyCodes = data;
            });
        })
    }
    var saveInvoice = function (invoice) {
        constructVoucher();
        invoiceService.saveInvoice(invoice).then(function (data) {
            $location.path('/pendingInvoice');
        })
    }
    var constructVoucher = function () {
        if (vm.Comment.Text != '') {
            vm.invoiceDetails.Voucher.Comments = [vm.Comment];            
        }
        
        //vm.invoiceDetails.Voucher.DueDate
        //var daytest = new Date()
        //var dt = new Date("8/15/2013 10:00");
        //var now = moment();
        //console.log(now);

        var localFormat = 'YYYY-MM-DD';
        vm.invoiceDetails.Voucher.DueDate = moment(vm.invoiceDetails.Voucher.DueDate).format(localFormat);
        vm.invoiceDetails.Voucher.InvoiceDate = moment(vm.invoiceDetails.Voucher.InvoiceDate).format(localFormat);

        //var m = moment(vm.invoiceDetails.Voucher.DueDate).format(localFormat);
        //console.log(vm.invoiceDetails.Voucher.DueDate);
        //console.log(m);
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
        startingDay: 1,
        showWeeks: false,
        initDate: new Date()
    };
    vm.Comment = {
        Text: ''
    };
    vm.invoiceDateOpen = function () {
        vm.invoiceDateOpened = true;
    };

    vm.dueDateOpened = false;
    vm.dueDateOptions = {
        formatYear: 'yy',
        startingDay: 1,
        showWeeks: false,
    };
    vm.dueDateOpen = function () {
        vm.dueDateOpened = true;
    };
    vm.updateInvoice = function (invoice) {
        setSupplier(invoice);
        setCurrency(invoice);
        saveInvoice(invoice);
    }

    function setSupplier (invoice)
    {
        if (invoice.Supplier) {
            if (typeof (invoice.Supplier) == "string")
                invoice.Supplier = invoice.Supplier.split('-')[0];
            else
                invoice.Supplier = invoice.Supplier.No;
        }
        else
            invoice.Supplier = '';
    }

    function setCurrency (invoice)
    {
        if(invoice.Currency)
        {
            if (typeof (invoice.Currency) == "object")
                invoice.Currency = invoice.Currency.Name;
        }
    }

    vm.verificationComplete = function (invoice, validInvoice, validSupplier, validAmount) {
        vm.message = "";
        if ((!validInvoice) || (invoice.InvoiceNo == '[ENTER INVOICE NO]') || (invoice.InvoiceNo == 'ENTER INVOICE NO')) {
            vm.message += "<li>Invoice No is required.</li>";
        }

        if (!validSupplier) {
            vm.message += "<li>Supplier is required.</li>";
        }

        if (!validAmount) {
            vm.message += "<li>Invoice Amount is required.</li>";
        }
        if (invoice.Amount <= 0)
        {
            vm.message += "<li>Valid invoice amount is required.</li>";
        }        
        if (invoice.Approver == null) {
            vm.message += "<li>Approver is required.</li>";
        }
        if (!vm.message) {
            invoice.status = app_config.VOUCHER_STATUS.VERIFIED;
            constructVoucher();
            setSupplier(invoice);
            setCurrency(invoice);
            invoiceService.changeInvoiceStatus(invoice).then(function (data) {
                $rootScope.$broadcast('changeInvoiceCount');
                $location.path('/pendingInvoice');
            })
        }
    }
    vm.reject = function (invoice) {
        invoice.status = app_config.VOUCHER_STATUS.VERIFIER_REJECTED;
        constructVoucher();
        setSupplier(invoice);
        setCurrency(invoice);
        invoiceService.changeInvoiceStatus(invoice).then(function (data) {
            $location.path('/pendingInvoice');
        })
    }
    vm.cancel = function () {
        $location.path('/pendingInvoice');
    }

    vm.requestMoreInfo = function () {

        $location.path('/invoice/verifying/' + vm.invoiceDetails.Voucher.Id + '/moreinforequest')



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

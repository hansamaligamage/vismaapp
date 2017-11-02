app.controller('creditDebitPopupController', ['$uibModalInstance', 'accounts', function ($uibModalInstance, accounts) {

    var vm = this;
    var selectedAcc = {
        category: '',
        account: ''
    };
    var vismaAccountType = {
        customers: 1,
        suppliers: 2,
        generalLedgerAccount: 3
    }

    vm.selectedRowIndex = ''
    Init();


    function filterAccounts(type) {
        return accounts.filter(function (i) {
            return i.AccountType == type;
        });
    }

    function Init() {
        vm.vismaAllAccounts = accounts;
        vm.vismaSuppliers = filterAccounts(vismaAccountType.suppliers);
        vm.vismaCustomers = filterAccounts(vismaAccountType.customers);
        vm.vismaGL = filterAccounts(vismaAccountType.generalLedgerAccount);
    }



    vm.tabChange = function (e) {
        if (e.target.nodeName === 'A') {
            e.preventDefault();
        }
    }

    vm.rowSelect = function (index, debitAcc, flag) {
        vm.selectedRowIndex = index;
        selectedAcc.category = flag;
        selectedAcc.account = debitAcc;
        $uibModalInstance.close(selectedAcc);

    }

    vm.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };

}]);
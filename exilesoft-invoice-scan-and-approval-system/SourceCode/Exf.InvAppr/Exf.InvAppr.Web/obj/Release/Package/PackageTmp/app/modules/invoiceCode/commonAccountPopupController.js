app.controller('commonAccountPopupController', ['$uibModalInstance', 'accounts', function ($uibModalInstance, accounts,title) {

    var vm = this;

    var selectedAcc = {
        Name: '',
        AccNo:''
    };

    vm.searchText = ''
    vm.commonAccounts = accounts;
    vm.popupTitle = title;
    vm.selectedRowIndex = -1;

    Init();

    function Init() {
    }

    vm.rowSelect = function (index, rowObject) {
        vm.selectedRowIndex = index;
        selectedAcc = rowObject;
        $uibModalInstance.close(selectedAcc);
    }

    vm.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };
}]);
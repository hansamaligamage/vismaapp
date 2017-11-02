app.controller('currencyConvertPopupController', ['$uibModalInstance', 'currencyList', '$filter', 'currencyData', '$timeout', function ($uibModalInstance, currencyList, $filter, currencyData, $timeout) {

    var vm = this;

    vm.currencyData = currencyData

    vm.currencyList = currencyList;

    Init();

    function Init() {
        //Set Currency
        if (vm.currencyData != null && vm.currencyList != null) {
           var toCurrency  = $.grep(vm.currencyList, function (v) {
                return v.Code === vm.currencyData.toCurrency.code;
           });
           vm.currencyData.toCurrency = toCurrency[0];
        }
    }

    vm.ok = function () {
        vm.currencyData.convertedAmount = vm.currencyData.baseAmount * vm.currencyData.currencyRate;
        $uibModalInstance.close(vm.currencyData);
    };

   // vm.convertToCurrancy = function () {
        //$timeout(
        //    function () {
        //        vm.currencyData.convertedAmount = actualAmount * vm.currencyData.currencyRate;
        //    }, 1000)

     //   vm.currencyData.convertedAmount = vm.currencyData.baseAmount * vm.currencyData.currencyRate;
    //};

    vm.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };
}]);
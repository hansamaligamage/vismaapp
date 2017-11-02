'use strict';
app.controller('exportController', ['$log', '$scope', '$http', 'app_config', function ($log, $scope, $http, app_config) {
    var vm = this;

    vm.exportedFilePath = "";

    vm.exportTransactionData = function () {
        $log.info('Exporting transaction data');
        exportTransactionData();
    }

    function exportTransactionData () {
        var exportServiceEnd = app_config.SERVICE_BASE + 'api/Visma/ExportTransactionData'
        $http.get(exportServiceEnd).then(function (response) {
            vm.exportedFilePath = 'Please find the exported file in ' + response.data;
        }, function () {
            vm.exportedFilePath = 'Export was not successful';
        });
    }

}
]);
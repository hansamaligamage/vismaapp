'use strict';
app.controller('importController', ['$log', 'importExportService', '$scope', function ($log, importExportService, $scope) {
    var vm = this;

    vm.dataFile = null;
    vm.progressInfo = {};

    $scope.$watch(importExportService.getProgresInfo, function (obj) {
        vm.progressInfo = obj;
    }.bind(this));

    vm.importMasterData = function () {
        $log.debug('importing master data, over to import/export service');
        if (vm.dataFile) {
            importExportService.importMasterData(vm.dataFile);
        }       
    }

    vm.importTransactionalData = function () {
        $log.debug('importing transactional data, over to import/export service');
        if (vm.dataFile) {
            importExportService.importTransactionalData(vm.dataFile);
        }
    }

    vm.resetImport = function (file) {
        if (vm.dataFile) {
            vm.dataFile = null;
        }
        importExportService.resetImport();
    }

}
]);
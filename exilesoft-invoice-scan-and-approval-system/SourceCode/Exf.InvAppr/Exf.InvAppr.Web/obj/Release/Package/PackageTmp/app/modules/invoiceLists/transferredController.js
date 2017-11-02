'use strict';
app.controller('transferredController', ['invoiceService', 'grideService', '$location', 'app_config', '$scope', 'activeMenuFlag', '$log', 'vismaService', function (invoiceService, grideService, $location, app_config, $scope, activeMenuFlag, $log, vismaService) {
    var vm = this;
    vm.imageUrl = '';

    vm.rollbackMessage = '';
    vm.isRollbackSuccess = false;

    //Search params
    var searchOptions = angular.copy(app_config.SEARCH_OPTIONS);
    searchOptions.status = app_config.INVOICE_NAVIGATION_STATUS.TRANSFERRED,

        vm.gridOptions = {
            enableFiltering: true,
            useExternalPagination: true,
            useExternalSorting: true,
            useExternalFiltering: true,
            paginationPageSizes: [10, 25, 50],
            paginationPageSize: 10,
            columnDefs: [
                { field: 'InvoiceNo', type: 'number', cellTemplate: app_config.GRID_CELL_TEMPLATE.INVOICE_NO },
                          { field: 'Supplier', cellTemplate: app_config.GRID_CELL_TEMPLATE.SUPPLIER },
                          { field: 'DueDate', cellFilter: 'date', cellTemplate: app_config.GRID_CELL_TEMPLATE.DUE_DATE },
                          { field: 'InvoiceDate', cellFilter: 'date', cellTemplate: app_config.GRID_CELL_TEMPLATE.INVOICE_DATE },
                          { field: 'Amount', type: 'number', cellTemplate: app_config.GRID_CELL_TEMPLATE.AMOUNT }],

            onRegisterApi: function (gridApi) {
                vm.gridApi = gridApi;
                //Sorting
                vm.gridApi.core.on.sortChanged(null, function (grid, sortColumns) {
                    searchOptions = grideService.ChangeSortOptions(searchOptions, sortColumns);
                    vm.getPage();
                });
                //Paging
                gridApi.pagination.on.paginationChanged(null, function (newPage, pageSize) {
                    searchOptions = grideService.changePage(searchOptions, newPage, pageSize);
                    vm.getPage();
                });
                //Filtering
                gridApi.core.on.filterChanged(null, function () {
                    var grid = this.grid;
                    searchOptions = grideService.filterChange(searchOptions, grid);
                    vm.getPage();
                });

                gridApi.selection.on.rowSelectionChanged($scope, function (row) {
                    if (row.entity.AccountStatus != 2) {
                        row.isSelected = false;
                    }
                    row.entity.markedToRollback = row.isSelected;
                });

                gridApi.selection.on.rowSelectionChangedBatch($scope, function (rows) {
                    rows.forEach(function (row) {
                        if (row.entity.AccountStatus != 2) {
                            row.isSelected = false;
                        }

                        row.entity.markedToRollback = row.isSelected;
                    });
                });
            }
        };

    vm.getPage = function () {

        invoiceService.getInvoices(searchOptions).then(function (data) {
            if (data.voucherList != null) {
                vm.gridOptions.data = data.voucherList;
                vm.gridOptions.totalItems = data.totalCount;
            }
            else {
                vm.gridOptions.data = [];
                vm.gridOptions.totalItems = 0;
            }
        });
    }

    vm.rawClick = function (invoiceId) {
        $location.path('/invoiceDetail/' + invoiceId);
    }

    $scope.$on('selectedRegionchanged', function (event, args) {
        vm.getPage();
    });

    $scope.$parent.idx.activeMenu = activeMenuFlag;

    vm.getPage();


    vm.closeAlert = function ($event) {
        $event.preventDefault();
        vm.rollbackMessage = '';
    }

    vm.rollback = function () {
        $log.info('rollback requested');

        let rollingBackIdList = [];
        for (let i = 0; i < vm.gridOptions.data.length; i++) {
            if (vm.gridOptions.data[i].markedToRollback) {
                rollingBackIdList.push(vm.gridOptions.data[i].Id)
            }
        }

        $log.info('rolling back ', rollingBackIdList);

        if (rollingBackIdList.length > 0) {
            vm.rollbackMessage = '';
            vm.isRollbackSuccess = false;
            vismaService.rollbackVouchers(rollingBackIdList).then(
                function (response) {
                    vm.rollbackMessage = "Vouchers successfully rollbacked.";
                    vm.isRollbackSuccess = true;
                    vm.getPage();
                },
                function (error) {
                    vm.rollbackMessage = "An Error occured while rollingback";
                    vm.isRollbackSuccess = false;
                });
        }

    }

}]);
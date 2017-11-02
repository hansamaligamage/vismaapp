'use strict';
app.controller('pendingVerificationController', ['invoiceService', 'grideService', '$location', 'app_config', '$scope', 'activeMenuFlag', function (invoiceService, grideService, $location, app_config, $scope, activeMenuFlag) {

    var vm = this;


    //Search params
    var searchOptions = angular.copy(app_config.SEARCH_OPTIONS);
    searchOptions.status = app_config.INVOICE_NAVIGATION_STATUS.TO_BE_VERIFIED,

    //grid
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
                      { field: 'Amount', type: 'number', cellTemplate: app_config.GRID_CELL_TEMPLATE.AMOUNT },
                      { field: 'Status', cellTemplate: app_config.GRID_CELL_TEMPLATE.STATUS }],
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
            })
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
        $location.path('/verify/' + invoiceId);
    }

    $scope.$on('selectedRegionchanged', function (event, args) {
        vm.getPage();
    });

    $scope.$parent.idx.activeMenu = activeMenuFlag;
    vm.getPage();
}]);


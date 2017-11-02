'use strict';
app.controller('rejectedController', ['invoiceService', 'grideService', '$location', 'app_config', '$scope', 'activeMenuFlag', function (invoiceService, grideService, $location, app_config, $scope, activeMenuFlag) {

    var vm = this;
    vm.imageUrl = '';

    //Search params
    var searchOptions = angular.copy(app_config.SEARCH_OPTIONS);
    searchOptions.status = app_config.INVOICE_NAVIGATION_STATUS.REJECTED,

    vm.gridOptions = {
        enableRowSelection: true,
        enableSelectAll: true,
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
            { field: 'Amount', type: 'number', cellTemplate: app_config.GRID_CELL_TEMPLATE.AMOUNT }
        ],

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

    vm.switchBool = function (value) {
        vm.showSuccessAlert = !vm.showSuccessAlert;
    };

    vm.sendBackToApproval = function () {
        vm.showSuccessAlert = false;
        var toPendingApprovalList = vm.gridApi.selection.getSelectedRows();
        var idList = [];
        angular.forEach(toPendingApprovalList, function (value, key) {
            idList.push(value.Id);
        });
        if (idList.length > 0) {
            invoiceService.sendToPendingApproval(idList).then(function (response) {
                vm.alertStyle = "col-md-12 alert alert-success";
                vm.messageAlert = "Selected invoices successfully moved back to Pending Approval";
                vm.showSuccessAlert = true;
                vm.getPage();
            }, function () {
                vm.alertStyle = "col-md-12 alert alert-danger";
                vm.messageAlert = "Failed to update invoices. " + message;
                vm.showSuccessAlert = true;
            });
        }
    }

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
}]);
'use strict';
app.controller('approvedInvListController', ['invoiceService', 'vismaService', 'grideService', '$location', 'app_config', '$q', '$scope', 'activeMenuFlag', function (invoiceService, vismaService, grideService, $location, app_config, $q, $scope, activeMenuFlag) {

    var vm = this;
    vm.message = '';
    vm.isSaveSuccess = false;

    //Search params
    var searchOptions = angular.copy(app_config.SEARCH_OPTIONS);
    searchOptions.status = app_config.INVOICE_NAVIGATION_STATUS.APPROVED,

    //grid
    vm.gridOptions = {
        enableRowSelection: true,
        enableSelectAll: true,
        selectionRowHeaderWidth: 35,
        rowHeight: 35,
        enableFiltering: true,
        useExternalPagination: true,
        useExternalSorting: true,
        enableSelectAll: true,
        useExternalFiltering: true,
        paginationPageSizes: [10, 25, 50],
        paginationPageSize: 10,
        columnDefs: [
                      //{ field: 'action', width: '50', displayName: '\'<p>Test me</p>\'', enableSorting: false, enableFiltering: false, cellTemplate: app_config.GRID_CELL_TEMPLATE.ACTION_MARK_TO_TRANSFER, headerCellTemplate: app_config.GRID_CELL_TEMPLATE.ACTION_HEADER },
                      { field: 'accStatus', width: '60', displayName: 'Status', enableSorting: false, enableFiltering: false, cellTemplate: app_config.GRID_CELL_TEMPLATE.ACCOUNT_STATUS },
                      { field: 'InvoiceNo', type: 'number', cellTemplate: app_config.GRID_CELL_TEMPLATE.INVOICE_NO },
                      { field: 'Supplier', cellTemplate: app_config.GRID_CELL_TEMPLATE.SUPPLIER },
                      { field: 'DueDate', cellFilter: 'date', cellTemplate: app_config.GRID_CELL_TEMPLATE.DUE_DATE },
                      { field: 'InvoiceDate', cellFilter: 'date', cellTemplate: app_config.GRID_CELL_TEMPLATE.INVOICE_DATE },
                      { field: 'Amount', type: 'number', cellTemplate: app_config.GRID_CELL_TEMPLATE.AMOUNT },
                      { field: 'Currency', cellTemplate: app_config.GRID_CELL_TEMPLATE.CURRENCY },
                      { field: 'Approver', cellTemplate: app_config.GRID_CELL_TEMPLATE.APPROVER }],

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

                row.entity.markToTransfer = row.isSelected;
            });

            gridApi.selection.on.rowSelectionChangedBatch($scope, function (rows) {

                rows.forEach(function (row) {
                    if (row.entity.AccountStatus != 2) {
                        row.isSelected = false;
                    }

                    row.entity.markToTransfer = row.isSelected;
                });
            });

        }
    };

    vm.gridOptions.multiSelect = true;

    vm.rawClick = function (invoiceId) {
        $location.path('/invoice/' + invoiceId + '/code');
    }

    function addMarkToTransferProperty(voucherList) {
        for (let i = 0; i < voucherList.length; i++) {
            voucherList[i].markToTransfer = false;
        }
    }

    vm.getPage = function () {

        invoiceService.getInvoices(searchOptions).then(function (data) {
            if (data.voucherList != null) {
                addMarkToTransferProperty(data.voucherList);
                vm.gridOptions.data = data.voucherList;
                vm.gridOptions.totalItems = data.totalCount;
            }
            else {
                vm.gridOptions.data = [];
                vm.gridOptions.totalItems = 0;
            }
        })
    }

    function downloadFakeFile(content, filename, contentType) {
        if (!contentType) contentType = 'application/octet-stream';
        var a = document.createElement('a');
        var blob = new Blob([content], { 'type': contentType });
        a.href = window.URL.createObjectURL(blob);
        a.download = filename;
        a.click();
    }

    vm.TransferToVisma = function () {
        let accStatus = vm.gridOptions.data;
        let VoucherIdsToPush = [];

        for (let i = 0; i < vm.gridOptions.data.length; i++) {
            if (vm.gridOptions.data[i].markToTransfer) {
                VoucherIdsToPush.push(vm.gridOptions.data[i].Id)
            }
        }

        if (VoucherIdsToPush.length > 0) {
            vm.message = '';
            vm.isSaveSuccess = false;
            vismaService.accountTransfer(VoucherIdsToPush).
                then(
                function (response) {
                    vm.message = "Accounts successfully Transferred.";
                    vm.isSaveSuccess = true;
                    vm.getPage();
                    downloadFakeFile(response.data, 'voucherList.txt');
                },
                function (error) {
                    vm.message = "An Error occured while accounts transferred to Visma.";
                    vm.isSaveSuccess = false;
                });
        }
    }

    vm.closeAlert = function ($event) {
        $event.preventDefault();
        vm.message = '';
    }

    $scope.$parent.idx.activeMenu = activeMenuFlag;

    $scope.$on('selectedRegionchanged', function (event, args) {
        vm.getPage();
    });
    vm.getPage();

    vm.selectAllAccounts = function () {
        console.log('hi my dear amal');
    }
}]);
'use strict';
app.controller('pendingApprovalController', ['invoiceService', 'grideService', '$timeout', '$location', 'app_config', '$q', '$scope', 'activeMenuFlag', function (invoiceService, grideService, $timeout, $location, app_config, $q, $scope, activeMenuFlag) {

    //private variables and functions
    var vm = this;
    var searchOptions = angular.copy(app_config.SEARCH_OPTIONS);
    searchOptions.status = app_config.INVOICE_NAVIGATION_STATUS.TO_BE_APPROVED,

    //Scope variables and functions
    //notifications
    vm.alertStyle, vm.messageAlert;
    vm.showSuccessAlert = false;

    //grid
    vm.imageUrl = '';
    vm.gridApi = '';
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
                      { field: 'Verifier', type: 'number', cellTemplate: app_config.GRID_CELL_TEMPLATE.VERIFIER }],

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

    // switch flag
    vm.switchBool = function (value) {
        vm.showSuccessAlert = !vm.showSuccessAlert;
    };

    vm.rawClick = function (invoiceId) {
        vm.imageUrl = 'https://www.redminecrm.com/attachments/download/3838/invoice_pdf.png';
    }

    vm.approveSelected = function () {

        var toBeApproved = vm.gridApi.selection.getSelectedRows();

        angular.forEach(toBeApproved, function (value, key) {
            invoiceService.getInvoiceDetails(value.Id).then(function (data) {
                vm.invoiceDetails = data;

                if (vm.invoiceDetails.Voucher.Supplier) {
                    if (typeof (vm.invoiceDetails.Voucher.Supplier) == "string")
                        vm.invoiceDetails.Voucher.Supplier = vm.invoiceDetails.Voucher.Supplier.split('-')[0];
                    else
                        vm.invoiceDetails.Voucher.Supplier = vm.invoiceDetails.Voucher.Supplier.No;
                }
                else
                    vm.invoiceDetails.Voucher.Supplier = '';

                if (toBeApproved.length > 0) {

                    invoiceService.approveInvoices(vm.invoiceDetails.Voucher).then(function (response) {
                        vm.alertStyle = "col-md-12 alert alert-success";
                        vm.messageAlert = "Selected invoices successfully approved.";
                        vm.showSuccessAlert = true;
                        vm.getPage();
                    })
                      .catch(function (message) {
                          vm.alertStyle = "col-md-12 alert alert-danger";
                          vm.messageAlert = "Failed to update invoices. " + message;
                          vm.showSuccessAlert = true;
                      })
                    $timeout(function () {
                        vm.showSuccessAlert = false;
                        vm.messageAlert = "";
                    }, 5000);
                }

            })
        });

    };


    vm.rawClick = function (invoiceId) {
        $location.path('/approve/' + invoiceId);
    }

    $scope.$parent.idx.activeMenu = activeMenuFlag;

    $scope.$on('selectedRegionchanged', function (event, args) {
        vm.getPage();
    });

    vm.getPage();

}]);
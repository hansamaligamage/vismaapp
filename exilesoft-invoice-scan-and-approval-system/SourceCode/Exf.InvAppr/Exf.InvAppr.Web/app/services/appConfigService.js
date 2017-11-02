(function () {
    angular.module('AngularAuthApp').constant('app_config', {
        //To Do : Need to change this to support publish options
        SERVICE_BASE: 'http://localhost:1212/',
        //SERVICE_BASE: 'http://eisis.azurewebsites.net/',

        GRID_CELL_TEMPLATE: {
            //ACTION_HEADER: '<div class="ui-grid-vertical-bar">&nbsp;</div><div class="ui-grid-cell-contents" style=align:center><input style="margin: 0; vertical-align: middle" type="checkbox" ng-click="vm.selectAllAccounts()"></div>',
            ACTION_MARK_TO_TRANSFER:'<input ng-if="row.entity.AccountStatus==2" type="checkbox" ng-model="row.entity.markToTransfer">',
            ACCOUNT_STATUS: '<div class="ui-grid-cell-contents">'+
                '<a ng-if="row.entity.AccountStatus==0" class="btn btn-circle-micro btn-info"><span class="glyphicon glyphicon-thumbs-up" title="New"></span> </a>' +
                '<a ng-if="row.entity.AccountStatus==1" class="btn btn-circle-micro btn-warning"><span class="glyphicon glyphicon-thumbs-up" title="Draft Saved"></span> </a>' +
                '<a ng-if="row.entity.AccountStatus==2" class="btn btn-circle-micro btn-success"><span class="glyphicon glyphicon-thumbs-up" title="Ready to Transfer"></span> </a>' +
                '</div>',
            INVOICE_NO: '<div class="ui-grid-cell-contents clickble-raw" ng-click="grid.appScope.vm.rawClick(row.entity.Id)">{{row.entity.InvoiceNo}}</div>',
            SUPPLIER: '<div class="ui-grid-cell-contents  clickble-raw" ng-click="grid.appScope.vm.rawClick(row.entity.Id)">{{row.entity.Supplier}}</div>',
            DUE_DATE:'<div class="ui-grid-cell-contents  clickble-raw" ng-click="grid.appScope.vm.rawClick(row.entity.Id)">{{row.entity.DueDate | date:"yyyy-MM-dd"}}</div>',
            INVOICE_DATE: '<div class="ui-grid-cell-contents  clickble-raw" ng-click="grid.appScope.vm.rawClick(row.entity.Id)">{{row.entity.InvoiceDate | date:"yyyy-MM-dd"}}</div>',
            AMOUNT: '<div align="right" class="ui-grid-cell-contents  clickble-raw"  ng-click="grid.appScope.vm.rawClick(row.entity.Id)">{{row.entity.Amount}}</div>',
            CURRENCY: '<div class="ui-grid-cell-contents  clickble-raw" ng-click="grid.appScope.vm.rawClick(row.entity.Id)">{{row.entity.Currency}}</div>',
            STATUS: '<div class="ui-grid-cell-contents  clickble-raw" ng-click="grid.appScope.vm.rawClick(row.entity.Id)">{{row.entity.Status}}</div>',
            VERIFIER: '<div class="ui-grid-cell-contents  clickble-raw" ng-click="grid.appScope.vm.rawClick(row.entity.Id)">{{row.entity.Verifier}}</div>',
            APPROVER: '<div class="ui-grid-cell-contents  clickble-raw" ng-click="grid.appScope.vm.rawClick(row.entity.Id)">{{row.entity.Approver}}</div>'
        },

        VOUCHER_STATUS: {
            TO_BE_VERIFIED: 'To Be Verified',
            VERIFIED: 'Verified',
            VERIFIER_REJECTED: 'Verifier Rejected',
            VERIFIER_MORE_INFO: 'Verifier More Info Requested',
            APPROVED: 'Approved',
            APPROVER_REJECTED: 'Approver Rejected',
            APPROVER_MORE_INFO: 'Approver More Info Requested'
        },

        INVOICE_NAVIGATION_STATUS:{
            TO_BE_VERIFIED: 'To be Verified',
            TO_BE_APPROVED: 'To be Approved',
            APPROVED: 'Approved',
            REJECTED: 'Rejected',
            TRANSFERRED: 'Transferred'
        },

        SEARCH_OPTIONS : {
            status: '',
            statusFilter: '',
            regionId: 0,
            PageNumber: 1,
            pageSize: 10,
            sortColumn: null,
            sortOrder: 'ASC',
            invoiceNo: '',
            supplier: '',
            dueDate: '',
            invoiceDate: '',
            amount: '',
            verifier: '',
        },

        USER_ROLES: {
            Admin: "admin",
            Approver: "approver",
            Verifier: "verifier"
        },

        LOCAL_STORE: {
            AuthorizationData: "authorizationData",
            WorkingRegion: "workingRegion",
            RedirectToUrlAfterLogin: "redirectToUrlAfterLogin"
        }
})
}())

app.config(function ($routeProvider) {

    $routeProvider.when("/home", {
        controller: "homeController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/userManagement/home.html"
    });

    $routeProvider.when("/login", {
        controller: "loginController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/userManagement/login.html"
    });

    $routeProvider.when("/signup", {
        controller: "signupController",
        controllerAs: "vm",
        templateUrl: "/app/modules/userManagement/signup.html"
    });

    $routeProvider.when("/user/approval/:userid", {
        controller: "userApproveController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/userManagement/userapproval.html"
    });

    $routeProvider.when("/user/resetpassword/:username/:resettoken", {
        controller: "passwordResetController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/userManagement/resetPassword.html"
    });

    $routeProvider.when("/invoice/verifying/:invoiceId/moreinforequest", {
        controller: "moreInfoRequestController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/requestMoreInfo/requestMoreInfoVerifier.html",
        resolve: {
            hideFlag: function () {
                return '1'
            }
        }
    });

    $routeProvider.when("/invoice/approver/:invoiceId/moreinforequest", {
        controller: "moreInfoRequestController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/requestMoreInfo/requestMoreInfoVerifier.html",
        resolve: {
            hideFlag: function () {
                return '0';
            }
        }
    });

    $routeProvider.when("/pendingInvoice", {
        controller: "pendingVerificationController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/invoiceLists/pendingVerification.html",
        resolve: {
            activeMenuFlag: function () {
                return 'pv';
            }
        }
    });

    $routeProvider.when("/pendingApproval", {
        controller: "pendingApprovalController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/invoiceLists/pendingApproval.html",
        resolve: {
            activeMenuFlag: function () {
                return 'pa';
            }
        }
    });

    $routeProvider.when("/approved", {
        controller: "approvedInvListController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/invoiceLists/approvedInvList.html",
        resolve: {
            activeMenuFlag: function () {
                return 'appr';
            }
        }
    });

    $routeProvider.when("/rejected", {
        controller: "rejectedController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/invoiceLists/rejected.html",
        resolve: {
            activeMenuFlag: function () {
                return 'rej';
            }
        }
    });

    $routeProvider.when("/transferred", {
        controller: "transferredController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/invoiceLists/transferred.html",
        resolve: {
            activeMenuFlag: function () {
                return 'trf';
            }
        }
    });

    $routeProvider.when("/invoiceDetail/:invId", {
        controller: "invoiceDetailController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/invoiceDetail/invoiceDetail.html",
    });

    $routeProvider.when("/verify/:invId", {
        controller: "verifyController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/verification/verify.html",
    });

    $routeProvider.when("/approve/:invId", {
        controller: "approveController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/approval/approve.html",

    });

    $routeProvider.when("/invoice/:invoiceId/code", {
        controller: "invoiceCodeController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/invoiceCode/invoiceCode.html"
    });

    $routeProvider.when("/import", {
        controller: "importController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/importExport/import.html"
    });

    $routeProvider.when("/export", {
        controller: "exportController",
        controllerAs: 'vm',
        templateUrl: "/app/modules/export/export.html"
    });


    $routeProvider.otherwise({ redirectTo: "/home" });
});
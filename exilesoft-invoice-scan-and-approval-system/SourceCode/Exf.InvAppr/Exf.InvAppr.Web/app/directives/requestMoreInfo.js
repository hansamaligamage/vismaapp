/// <reference path="../views/Invoice/requestMoreInfoTemplate.html" />
/// <reference path="../views/Invoice/requestMoreInfo.html" />

app.controller("moreInfoDirectiveCtrl", ['invoiceService', 'authService', '$routeParams', '$location', 'app_config', '$timeout', function (invoiceService, authService, $routeParams, $location, app_config, $timeout) {
    var vm = this;
    vm.message = "";
    vm.savedSuccessfully = false;
    vm.authentication = authService.authentication;

    console.log(vm.hflag);

    vm.routePath = $location.path();

    vm.requestMoreInfo = {
        toAddress: "",
        ccAddress: "",
        subject: "",
        invoiceasattachment: false,
        emailbody: "",
        invoiceId: $routeParams.invoiceId,
        verifierName: "",
        verifierEmail: "",
        invoiceStatus: ""
    }

    

    Init();

    function Init() {
        if (vm.hflag == '0') {
            getInvoiceVerifier();
        }
    }

    function getInvoiceVerifier() {
        invoiceService.getInvoiceVerifier(vm.requestMoreInfo.invoiceId)
            .then(function (data) {
                vm.requestMoreInfo.verifierName = data.DisplayName,
                vm.requestMoreInfo.verifierEmail = data.Email
            },
            function (errorMsg) {
                vm.message = errorMsg;
                vm.savedSuccessfully = false;
            })
    }

    vm.requestInfoFromVerifier = function () {
        if (vm.requestingToVf == 'true') {
            vm.requestMoreInfo.toAddress = vm.requestMoreInfo.verifierEmail
        }
        else {
            vm.requestMoreInfo.toAddress = "";
        }
    }
    vm.backNavigate = function () {

        if (vm.authentication.userRole.toLowerCase() == app_config.USER_ROLES.Approver.toLowerCase()) {
            $location.path('/approve/' + $routeParams.invoiceId);

        }

        if (vm.authentication.userRole.toLowerCase() == app_config.USER_ROLES.Verifier.toLowerCase()) {
                $location.path('/verify/' + $routeParams.invoiceId);
        }

    }

    function redirectToInvoiceDetail (time) {
        var timer = $timeout(function () {
            var url = "";
            if (vm.authentication.userRole.toLowerCase() == app_config.USER_ROLES.Approver.toLowerCase()) {
                url ='/approve/' + $routeParams.invoiceId;

            }

            if (vm.authentication.userRole.toLowerCase() == app_config.USER_ROLES.Verifier.toLowerCase()) {
                url = '/verify/' + $routeParams.invoiceId;
            }
            $timeout.cancel(timer);
            $location.path(url);
        }, time);
    }

    vm.UpdateAndSendMail = function (isToEmailValid, isSubjectValid, isEmailContentValid) {
        vm.message = "";
        vm.savedSuccessfully = false;
        if (!isToEmailValid) {
            vm.message += "<li>To email address is required.</li>";
        }

        if (!isSubjectValid) {
            vm.message += "<li>Email subject is required.</li>";
        }

        if (!isEmailContentValid) {
            vm.message += "<li>Email content is required.</li>";
        }

        if (!vm.message) {

            if (vm.hflag == '1') {
                vm.requestMoreInfo.invoiceStatus = 'Verifier More Info Requested';
            }
            else {
                vm.requestMoreInfo.invoiceStatus = 'Approver More Info Requested';
            }

            invoiceService.requestMoreInfo(vm.requestMoreInfo)
                .then(function (response) {
                    vm.message = response.data;
                    //vm.message += " you will be redicted to login page in 2 seconds."
                    redirectToInvoiceDetail(2000);
                    vm.savedSuccessfully = true;
                }, function (error) {
                    if (error && error.data) {
                        debugger;
                        if (error.data.ModelState) {
                            var errors = [];
                            for (var key in error.data.ModelState) {
                                for (var i = 0; i < error.data.ModelState[key].length; i++) {
                                    errors.push('<li>' + error.data.ModelState[key][i] + '</li>');
                                }
                            }
                            vm.message = "Failed to request more info due to:\r\n" + errors.join(' ');
                        }
                        else {
                            vm.message = "An Error occured while processing request. Status Code: " + error.status;
                        }
                    }

                });
        }
    }
}]);


app.directive('requestMoreinfo', function () {
    return {
        restrict: 'E',
        scope: {
            hflag: "@"
        },
        bindToController: true,
        controller: 'moreInfoDirectiveCtrl',
        controllerAs: 'vm',
        templateUrl: 'app/modules/requestMoreInfo/requestMoreInfoTemplate.html'
    };

});
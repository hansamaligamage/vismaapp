'use strict';
app.controller('loginController', ['$scope', '$location', 'authService', 'invoiceService', 'localStorageService', 'app_config', function ($scope,$location, authService, invoiceService, localStorageService, app_config) {
    var vm = this;

    vm.loginData = {
        userName: "",
        password: ""
    };


    vm.message = "";
    vm.savedSuccessfully = "";

    vm.login = function () {
        authService.login(vm.loginData)
            .then(function (response) {
                var authData = localStorageService.get(app_config.LOCAL_STORE.AuthorizationData);
                var selectedRegion = authData.userRegions.filter(function (rg) { return rg.IsDefault })[0]
                localStorageService.set(app_config.LOCAL_STORE.WorkingRegion, selectedRegion);

                var attemptedUrl = localStorageService.get(app_config.LOCAL_STORE.RedirectToUrlAfterLogin);
                if (!attemptedUrl) {
                    localStorageService.set(app_config.LOCAL_STORE.RedirectToUrlAfterLogin, { url: '/' });
                    attemptedUrl = localStorageService.get(app_config.LOCAL_STORE.RedirectToUrlAfterLogin);
                }

                if (attemptedUrl && attemptedUrl.url == '/') {
                    authService.setLandingPath();
                }
                authService.redirectToAttemptedUrl();
            },
         function (err) {
             vm.message = err.error_description;
         });
    };


    //function setLandingPath(authData) {

    //    if ((authData.userRole.toLowerCase() == app_config.USER_ROLES.Admin.toLowerCase())) {
    //        localStorageService.set(app_config.LOCAL_STORE.RedirectToUrlAfterLogin, { url: '/approved' });
    //        //$location.path('#/approved');
    //    }
    //    if ((authData.userRole.toLowerCase() == app_config.USER_ROLES.Approver.toLowerCase())) {
    //        localStorageService.set(app_config.LOCAL_STORE.RedirectToUrlAfterLogin, { url: '/pendingApproval' });
    //    }

    //    if ((authData.userRole.toLowerCase() == app_config.USER_ROLES.Verifier.toLowerCase())) {
    //        localStorageService.set(app_config.LOCAL_STORE.RedirectToUrlAfterLogin, { url: '/pendingInvoice' });
    //    }
    //}

    vm.requestResetPassword = function () {
        console.log('start reset password');
        authService.passwordResetRequest(vm.loginData.userName)
            .then(function (response) {
                vm.message = "Password reset done. " + response;
                vm.savedSuccessfully = true;
            }, function (error) {
                vm.message = error;
                vm.savedSuccessfully = false;
            });

    }

}]);

app.controller('passwordResetController', ['$scope', '$location', 'authService', '$routeParams', '$timeout', function ($scope,$location, authService, $routeParams, $timeout) {
    var vm = this;

    vm.resetPasswordModel = {
        username: $routeParams.username,
        password: "",
        confirmPassword: "",
        resettoken: $routeParams.resettoken
    };

    vm.message = "";
    vm.savedSuccessfully = "";

    vm.resetPasswordHandler = function () {
        authService.resetPasswordHandler(vm.resetPasswordModel)
            .then(function (response) {
                vm.message = "Password reset successfully done. You will be redirect to login page short while.";
                vm.savedSuccessfully = true;
                authService.startTimer(2000, '/login');
            }, function (error) {
                if (error.data.ModelState) {
                    var errors = [];
                    for (var key in error.data.ModelState) {
                        for (var i = 0; i < error.data.ModelState[key].length; i++) {
                            errors.push(error.data.ModelState[key][i]);
                        }
                    }
                    vm.message = "Failed to register user due to:\r\n" + errors.join(' ');
                }
                else {
                    vm.message = error.data;
                    vm.savedSuccessfully = false;
                }
            });
    }

}]);

app.controller('signupController', ['$log', '$location', '$timeout', 'authService', '$routeParams', function ($log, $location, $timeout, authService, $routeParams) {

    var vm = this;
    vm.savedSuccessfully = false;
    vm.message = "";
    vm.defaultregionid = 0;
    vm.registration = {
        displayName: "",
        emailAddress: "",
        role: "",
        password: "",
        confirmPassword: ""
    };

    Init();

    function getSelectedRegions() {
        if (vm.regions != null) {
            return vm.regions.filter(function (obj) { return obj.checked })
        }
    }

    function getDefaultRegions() {
        if (vm.regions != null) {
            return vm.regions.filter(function (obj) { return obj.Id == vm.defaultregionid })
        }
    }

    vm.defaultRegionByCheckbox = function () {
        var selectedRegions = vm.regions.filter(function (rg) { if (rg.checked) { return rg } });

        if (selectedRegions.length == 0) {
            vm.defaultregionid = 0;
        }
        if (selectedRegions.length == 1) {
            vm.defaultregionid = selectedRegions[0].Id;
        }

        if (vm.defaultregionid > 0) {
            var data = vm.regions.filter(function (rg) { if (rg.Id == vm.defaultregionid) { return rg } })[0];
            if (!data.checked) {
                vm.defaultregionid = 0;
            }
        }
    }

    vm.defaultRegionByRadio = function () {
        var selectedList = vm.regions.filter(function (rg) { if (rg.checked) { return rg } });
        if (selectedList.length == 0) {
            (vm.regions.filter(function (rg) { return rg.Id == vm.defaultregionid })[0]).checked = true;
        }
    }

    vm.signUp = function () {
        vm.registration.regions = getSelectedRegions();
        vm.registration.DefaultRegion = getDefaultRegions()[0];
        authService.saveRegistration(vm.registration)
            .then(function (response) {
                vm.savedSuccessfully = true;
                vm.message = "User has been registered successfully, you will be redicted to login page in 2 seconds.";
                authService.startTimer(2000, '/login');
            },
         function (response) {
             var errors = [];
             if (response.ModelState) {
                 for (var key in response.ModelState) {
                     for (var i = 0; i < response.ModelState[key].length; i++) {
                         errors.push('<li>' + response.ModelState[key][i] + '</li>');
                     }
                 }
             }
             else {
                 errors.push(response.data);
             }

             vm.message = "Failed to register user due to:\r\n" + errors.join(' ');
         });
    };

    function Init() {
        authService.getRoles()
            .then(function (roles) {
                vm.roles = roles;
            })
            .catch(function (error) {
                $log.error(error);
            });

        authService.getAdmins()
            .then(function (users) {
                vm.adminUsers = users;
            })
            .catch(function (error) {
                $log.error(error);
            });

        authService.getAllRegions()
        .then(function (regions) {
            vm.regions = regions;
        })
        .catch(function (error) {
            $log.error(error);
        });
    }

}]);

app.controller('indexController', ['$scope', '$log', '$location', 'authService', '$rootScope', 'localStorageService', 'app_config', 'invoiceService', function ($scope,$log, $location, authService, $rootScope, localStorageService, app_config, invoiceService) {

    var vm = this;
    vm.selectedRegion = '';
    vm.authentication = authService.authentication;
    vm.invoiceCountData = invoiceService.invoiceCountData;
    vm.activeMenu = '';


    if (vm.authentication.isAuth) {
        vm.selectedRegion = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion);
    }

    vm.IsAdmin = function () {
        if (vm.authentication.isAuth && vm.authentication.userRole.toLowerCase() == app_config.USER_ROLES.Admin.toLowerCase()) {
            return true;
        }
        return false;
    }

    vm.IsApprover = function () {
        if (vm.authentication.isAuth && vm.authentication.userRole.toLowerCase() == app_config.USER_ROLES.Approver.toLowerCase()) {
            return true;
        }
        return false;
    }

    vm.IsVerifier = function () {
        if (vm.authentication.isAuth && vm.authentication.userRole.toLowerCase() == app_config.USER_ROLES.Verifier.toLowerCase()) {
            return true;
        }
        return false;
    }

    vm.logOut = function () {
        authService.logOut();
        $location.path('/home');
    };

    vm.displayLogin = function () {
        if ($location.path().toLowerCase() == '/home' || $location.path().toLowerCase() == '/login')
        { return false; }
        else {
            return true;
        }
    }

    vm.displaySignup = function () {
        if ($location.path().toLowerCase() == '/home' || $location.path().toLowerCase() == '/signup')
        { return false; }
        else {
            return true;
        }
    }

    vm.regionChanged = function () {
        if (vm.authentication.isAuth) {
            localStorageService.set(app_config.LOCAL_STORE.WorkingRegion, vm.selectedRegion);

            //invoiceService.getInvoiceCount(vm.selectedRegion.Id)
            //    .then(function (data) {
            //        vm.authentication.invoiceCountData = data;
            //    })
            //    .catch(function (error) {
            //        $log.error(error);
            //    });

            $rootScope.$broadcast('selectedRegionchanged');
            $rootScope.$broadcast('changeInvoiceCount');

            //reset after login url back to normal
            authService.setLandingPath();
            authService.redirectToAttemptedUrl();
        }
    };

    $scope.$on('changeInvoiceCount', function (event, args) {
        let region = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion);

        invoiceService.getInvoiceCount(region.Id)
            .then(function (data) {
                vm.authentication.invoiceCountData = data;
            })
            .catch(function (error) {
                $log.error(error);
            });
    });

    vm.setActive = function (flag) {
        $rootScope.$broadcast('changeInvoiceCount');
        vm.activeMenu = flag;
    };
}]);

app.controller('homeController', ['authService', function (authService) {
    var vm = this;
    vm.authentication = authService.authentication;
}]);
'use strict';
app.controller('userApproveController', ['$log', '$location', '$timeout', 'authService', '$routeParams', function ($log, $location, $timeout, authService, $routeParams) {

    var vm = this;
    vm.savedSuccessfully = false;
    vm.message = "";
    vm.rg_disabled = true;
    vm.defaultregionid = 0;

    vm.registration = {
        Id: "",
        displayName: "",
        emailAddress: "",
        role: "",
        password: "",
        confirmPassword: "",
        regions: "",
        isrolesupdated: ""
    };

    Init();

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

        authService.getUser($routeParams.userid)
            .then(function (userData) {
                vm.registration.displayName = userData.DisplayName;
                vm.registration.emailAddress = userData.UserName;
                vm.registration.role = userData.UserRole;
                vm.defaultregionid = userData.DefaultRegion.Id;
                getAllRegions(userData.Regions);
            })
        .catch(function (error) {
            vm.savedSuccessfully = false;
            vm.message = error;
            $log.error(error);
        });

    }

    vm.rgEditingHandler = function () {
        vm.rgEditing = false;
        vm.registration.isregionsupdated = true;

    }

    vm.roleEditingHandler = function () {
        vm.roleEditing = false;
        vm.registration.isrolesupdated = true;

    }

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

    vm.updateUser = function () {
        vm.registration.regions = getSelectedRegions();
        vm.registration.DefaultRegion = getDefaultRegions()[0];
        vm.registration.Id = $routeParams.userid;
        authService.approvedUser(vm.registration)
            .then(function (response) {
                vm.savedSuccessfully = true;
                vm.message = response;
                authService.startTimer(2000, '/');
            })
            .catch(function (error) {
                vm.savedSuccessfully = false;
                $log.error(error);
                vm.message = error;
            })
    }

    function getAllRegions(userSelectedRegions) {
        authService.getAllRegions()
        .then(function (regions) {
            vm.regions = regions;

            vm.regions.forEach(function (region) {
                userSelectedRegions.forEach(function (userRegion) {
                    if (region.Id == userRegion.Id) {
                        region.checked = true;
                    }
                })
            })

        })
        .catch(function (error) {
            $log.error(error);
        });
    }

}]);
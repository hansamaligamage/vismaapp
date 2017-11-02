'use strict';
app.factory('authService', ['$log', '$http', '$q', 'localStorageService', 'app_config', '$location', '$timeout', 'invoiceService', function ($log, $http, $q, localStorageService, app_config, $location, $timeout, invoiceService) {

    var authServiceFactory = {};

    var _authentication = {
        isAuth: false,
        userName: "",
        userRole: "",
        displayName: "",
        userRegions: "",
        defaultRegion:"",
        invoiceCountData:""
    };

    function _setLandingPath() {

        var authData = localStorageService.get(app_config.LOCAL_STORE.AuthorizationData);

        if ((authData.userRole.toLowerCase() == app_config.USER_ROLES.Admin.toLowerCase())) {
            localStorageService.set(app_config.LOCAL_STORE.RedirectToUrlAfterLogin, { url: '/approved' });
            //$location.path('#/approved');
        }
        if ((authData.userRole.toLowerCase() == app_config.USER_ROLES.Approver.toLowerCase())) {
            localStorageService.set(app_config.LOCAL_STORE.RedirectToUrlAfterLogin, { url: '/pendingApproval' });
        }

        if ((authData.userRole.toLowerCase() == app_config.USER_ROLES.Verifier.toLowerCase())) {
            localStorageService.set(app_config.LOCAL_STORE.RedirectToUrlAfterLogin, { url: '/pendingInvoice' });
        }
    }

    var _saveRegistration = function (registration) {
        var deferred = $q.defer();
        _logOut();
        $http({
            method: 'POST',
            url: app_config.SERVICE_BASE + 'api/account/register',
            data: registration,
            headers: { 'Content-Type': 'application/json' }
        })
        .success(function (response, status, header) {
            deferred.resolve(response);
        }).error(function (err, status) {
            deferred.reject(err);
        });
        return deferred.promise;
    };

    var _login = function (loginData) {
        var data = "grant_type=password&username=" + loginData.userName + "&password=" + loginData.password;
        var deferred = $q.defer();

        $http.post(app_config.SERVICE_BASE + 'token',
                    data,
                    { headers: { 'Content-Type': 'application/x-www-form-urlencoded' } })
             .success(function (response) {
                 $log.info(response);
                 var defaultRegion = JSON.parse(response.userRegionJson).filter(function (rg) { return rg.IsDefault })[0];
                 localStorageService.set(app_config.LOCAL_STORE.AuthorizationData,
                     {
                         token: response.access_token,
                         userName: loginData.userName,
                         userRole: response.userRole,
                         displayName: response.displayName,
                         userRegions: JSON.parse(response.userRegionJson),
                         defaultRegion: defaultRegion,
                         invoiceCountData: JSON.parse(response.invoiceCountDataJson)
                     });
                 _authentication.isAuth = true;
                 _authentication.userName = loginData.userName;
                 _authentication.displayName = response.displayName;
                 _authentication.userRole = response.userRole;
                 _authentication.userRegions = JSON.parse(response.userRegionJson);
                 _authentication.invoiceCountData = JSON.parse(response.invoiceCountDataJson);
                 _authentication.defaultRegion = defaultRegion;


                 deferred.resolve(response);
             })
            .error(function (err, status) {
                _logOut();
                deferred.reject(err);
            });

        return deferred.promise;

    };

    var _getRoles = function () {
        return $http.get(app_config.SERVICE_BASE + 'api/account/roles')
                .then(function (response) {
                    return response.data;
                })
                .catch(function (response) {
                    return $q.reject('Error retrieving user roles. (HTTP status: ' + response.status + ')');
                })
    };

    var _getAdminUsers = function () {
        return $http.get(app_config.SERVICE_BASE + 'api/account/getadmin')
                .then(function (response) {
                    return response.data;
                })
                .catch(function (response) {
                    return $q.reject('Error retrieving user roles. (HTTP status: ' + response.status + ')');
                })
    };

    var _logOut = function () {

        localStorageService.remove(app_config.LOCAL_STORE.AuthorizationData);
        localStorageService.remove(app_config.LOCAL_STORE.WorkingRegion);
        localStorageService.remove(app_config.LOCAL_STORE.RedirectToUrlAfterLogin);

        _authentication.isAuth = false;
        _authentication.userName = "";
        _authentication.userRole = "";
        _authentication.displayName = "";
        _authentication.userRegions = "";
        _authentication.invoiceCountData = "";
        _authentication.defaultRegion = "";

    };

    var _fillAuthData = function () {
        localStorageService.set(app_config.LOCAL_STORE.RedirectToUrlAfterLogin, { url: '/' });

        var authData = localStorageService.get(app_config.LOCAL_STORE.AuthorizationData);
        if (authData) {
            _authentication.isAuth = true;
            _authentication.userName = authData.userName;
            _authentication.userRole = authData.userRole;
            _authentication.displayName = authData.displayName;
            _authentication.userRegions = authData.userRegions;
            _authentication.invoiceCountData = authData.invoiceCountData;
            _authentication.defaultRegion = authData.defaultRegion;
        }

    }

    var _getAllRegions = function () {
        return $http.get(app_config.SERVICE_BASE + 'api/account/getregions')
                .then(function (response) {
                    return response.data;
                })
                .catch(function (response) {
                    return $q.reject('Error retrieving regions. (HTTP status: ' + response.status + ')');
                })
    }

    var _getUser = function (userid) {
        return $http.get(app_config.SERVICE_BASE + 'api/account/getuser/' + userid)
                .then(function (response) {
                    return response.data;
                })
                .catch(function (response) {
                    return $q.reject('Error retrieving User. (HTTP status: ' + response.status + ' ,ErrorMessage: ' + response.data + ' )');
                })
    }

    var _approvedUser = function (user) {
        var deferred = $q.defer();
        $http.post(app_config.SERVICE_BASE + 'api/account/user/approved', user)
                .success(function (response) {
                    deferred.resolve(response);
                })
                .error(function (error, status) {
                    deferred.reject('Error update user. (HTTP status: ' + status + ' , ErrorMessage: ' + error + ')');
                })
        return deferred.promise;

    }

    var _isLoggedIn = function () {
        return _authentication.isAuth;
    }

    var _saveAttemptUrl = function () {
        if ($location.path().toLowerCase() != '/login' &&
            $location.path().toLowerCase() != '/singup' &&
            $location.path().toLowerCase() != '/home' &&
            $location.path().toLowerCase().indexOf('/user/resetpassword') == -1) {
            localStorageService.set(app_config.LOCAL_STORE.RedirectToUrlAfterLogin, { url: $location.path() });
        }
        else {
            localStorageService.set(app_config.LOCAL_STORE.RedirectToUrlAfterLogin, { url: '/' });
        }
    }

    var _redirectToAttemptedUrl = function () {
        var redirectUrl = localStorageService.get(app_config.LOCAL_STORE.RedirectToUrlAfterLogin);
        if (redirectUrl) {
            $location.path(redirectUrl.url);
        }
    }

    var _passwordResetRequest = function (username) {
        var deferred = $q.defer();

        if (!(username === undefined || username == null || username == '')) {            
            
            $http.get(app_config.SERVICE_BASE + 'api/account/requestpasswordreset/' + username + '/')
                .success(function (response) {
                    deferred.resolve(response);
                })
                .catch(function (error, status) {
                    deferred.reject(error)
                });

        }
        else {
            deferred.reject('Username can not be null or empty.');
        }
        return deferred.promise;

    }

    var _resetPasswordHandler = function (data) {
        var deferred = $q.defer();
        $http({
            method: 'POST',
            url: app_config.SERVICE_BASE + 'api/account/passwordreset',
            data: data,
            headers: { 'Content-Type': 'application/json' }
        })
        .success(function (response) {
            deferred.resolve(response);
        })
        .catch(function (error, status) {
            deferred.reject(error)
        });

        return deferred.promise;
    }

    var _startTimer = function (time, url) {
        var timer = $timeout(function () {
            $timeout.cancel(timer);
            $location.path(url);
        }, time);
    }

    authServiceFactory.saveRegistration = _saveRegistration;
    authServiceFactory.login = _login;
    authServiceFactory.logOut = _logOut;
    authServiceFactory.fillAuthData = _fillAuthData;
    authServiceFactory.authentication = _authentication;
    authServiceFactory.getRoles = _getRoles;
    authServiceFactory.getAdmins = _getAdminUsers;
    authServiceFactory.getAllRegions = _getAllRegions;
    authServiceFactory.getUser = _getUser;
    authServiceFactory.approvedUser = _approvedUser;
    authServiceFactory.isLoggedIn = _isLoggedIn;
    authServiceFactory.saveAttemptUrl = _saveAttemptUrl;
    authServiceFactory.redirectToAttemptedUrl = _redirectToAttemptedUrl;
    authServiceFactory.passwordResetRequest = _passwordResetRequest;
    authServiceFactory.resetPasswordHandler = _resetPasswordHandler;
    authServiceFactory.startTimer = _startTimer;
    authServiceFactory.setLandingPath = _setLandingPath;



    return authServiceFactory;
}]);
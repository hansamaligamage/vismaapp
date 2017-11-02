'use strict';
app.factory('authInterceptorService', ['$q', '$location', 'localStorageService', '$injector', '$rootScope', function ($q, $location, localStorageService, $injector, $rootScope) {

    var authInterceptorServiceFactory = {};
    var _request = function (config) {

        $rootScope.$broadcast('loading-started');

        config.headers = config.headers || {};

        var authData = localStorageService.get('authorizationData');
        if (authData) {
            config.headers.Authorization = 'Bearer ' + authData.token;
        }

        return config;
    }
    
    var _response = function (response) {
        $rootScope.$broadcast('loading-complete');
        return response;
    }

    var _responseError = function (rejection) {
        $rootScope.$broadcast('loading-complete');
        if (rejection.status === 401) {
            //localStorageService.remove('authorizationData');
            var authService = $injector.get('authService');
            authService.saveAttemptUrl();
            $location.path('/login');
        }
        return $q.reject(rejection);
    }

    authInterceptorServiceFactory.request = _request;
    authInterceptorServiceFactory.response = _response;
    authInterceptorServiceFactory.responseError = _responseError;

    return authInterceptorServiceFactory;
}]);
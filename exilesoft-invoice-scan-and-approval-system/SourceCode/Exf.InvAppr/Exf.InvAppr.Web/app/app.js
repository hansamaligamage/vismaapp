var app = angular.module('AngularAuthApp', ['ngRoute', 'ngSanitize', 'LocalStorageModule', 'angular-loading-bar', 'ui.bootstrap', 'ui.grid', 'ui.grid.pagination', 'ui.grid.selection', 'ngFileUpload']);


app.config(function ($httpProvider) {
    $httpProvider.interceptors.push('authInterceptorService');
});


app.run(['authService', function (authService, invoiceService) {
    authService.fillAuthData();

    if (!authService.isLoggedIn()) {
        authService.saveAttemptUrl();
    }
}]);

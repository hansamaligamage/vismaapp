'use strict';
app.factory('vismaService', ['$http', '$q', 'app_config', 'localStorageService', function ($http, $q, app_config, localStorageService) {
    var vismaServiceFactory = {};

    var companyId = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion).VismaCompanyId;

    var _getAccounts = function () {
        return $http.get(app_config.SERVICE_BASE + 'api/visma/accounts/' + companyId)
        .then(function (response) {
            return response.data;
        },
        function (response) {
            return $q.reject('An error occured while retrieving suppliers. StatusCode: ' + response.status)
        });
    }
    /*
    var _getSuppliers = function () {
        var companyId = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion).VismaCompanyId;
        return $http.get(app_config.SERVICE_BASE + 'api/visma/suppliers/' + companyId)
        .then(function (response) {
            return response.data;
        },
        function (response) {
            return $q.reject('An error occured while retrieving suppliers. StatusCode: ' + response.status)
        });
    }

    var _getCustomers = function () {
        var companyId = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion).VismaCompanyId;
        return $http.get(app_config.SERVICE_BASE + 'api/visma/customers/' + companyId)
        .then(function (response) {
            return response.data;
        },
        function (response) {
            return $q.reject('An error occured while retrieving customers. StatusCode: ' + response.status)
        });
    }

    var _getGeneralLedger = function () {
        var companyId = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion).VismaCompanyId;
        return $http.get(app_config.SERVICE_BASE + 'api/visma/generalledgers/' + companyId)
        .then(function (response) {
            return response.data;
        },
        function (response) {
            return $q.reject('An error occured while retrieving general ledgers. StatusCode: ' + response.status)
        });
    }
    */
    var _getDepartmentAccData = function () {
        var companyId = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion).VismaCompanyId;
        return $http.get(app_config.SERVICE_BASE + 'api/visma/departments/' + companyId)
        .then(function (response) {
            return response.data;
        },
        function (response) {
            return $q.reject('An error occured while retrieving department data. StatusCode: ' + response.status)
        });
    }

    var _getProjectAccData = function () {
        var companyId = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion).VismaCompanyId;
        return $http.get(app_config.SERVICE_BASE + 'api/visma/projects/' + companyId)
        .then(function (response) {
            return response.data;
        },
        function (response) {
            return $q.reject('An error occured while retrieving project data. StatusCode: ' + response.status)
        });
    }

    var _getStaffAccData = function () {
        var companyId = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion).VismaCompanyId;
        return $http.get(app_config.SERVICE_BASE + 'api/visma/staff/' + companyId)
        .then(function (response) {
            return response.data;
        },
        function (response) {
            return $q.reject('An error occured while retrieving staff data. StatusCode: ' + response.status)
        });
    }

    var _getCostAllocationAccData = function () {
        return $http.get(app_config.SERVICE_BASE + 'api/visma/costallocation')
        .then(function (response) {
            return response.data;
        },
        function (response) {
            return $q.reject('An error occured while retrieving cost allocation data. StatusCode: ' + response.status)
        });
    }

    

    var _getVatData = function () {
        var companyId = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion).VismaCompanyId;
        return $http.get(app_config.SERVICE_BASE + 'api/visma/taxCodes/' + companyId)
        .then(function (response) {
            return response.data;
        },
        function (response) {
            return $q.reject('An error occured while retrieving Vat Account Data. StatusCode: ' + response.status)
        });
    }

    var _getCurrencyData = function () {
        var companyId = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion).VismaCompanyId;
        return $http.get(app_config.SERVICE_BASE + 'api/visma/currency/' + companyId)
        .then(function (response) {
            return response.data;
        },
        function (response) {
            return $q.reject('An error occured while retrieving currency data. StatusCode: ' + response.status)
        });
    }

    var _saveAccountData = function (accountData, isDraftSave) {
        return $http.post(
            app_config.SERVICE_BASE + 'api/voucher/saveaccount/' + isDraftSave,
            accountData,
            { headers: { 'Content-Type': 'application/json' } })
            .then(function (response) {
                return response.data;
            },
            function (error) {
                return $q.reject(error);
            });
    }

    var _removeAccountEntry = function (accountId) {
        return $http.delete(app_config.SERVICE_BASE + 'api/voucher/accounts/' + accountId + '/delete')
        .then(function (response) {
            return response;
        },
        function (error) {
            return $q.reject(error);
        });
    }

    var _removeAccountMappings = function (idList) {
        return $http.post(app_config.SERVICE_BASE + 'api/voucher/accounts/deleteList', idList)
        .then(function (response) {
            return response;
        },
        function (error) {
            return $q.reject(error);
        });
    }

    var _accountTransferToVisma = function (accountIds) {
        var companyId = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion).VismaCompanyId;
        return $http.post(app_config.SERVICE_BASE + 'api/Visma/accounts/transfer/' + companyId, accountIds, { headers: { 'Content-Type': 'application/json' } })
        .then(function (response) {
            return response;
        },
        function (error) {
            return $q.reject(error);
        });
    }

    var _rollbackVouchers = function (voucherIdList) {
        return $http.post(app_config.SERVICE_BASE + 'api/visma/rollbackVouchers/', voucherIdList, { headers: { 'Content-Type': 'application/json' } })
        .then(function (response) {
            return response;
        },
        function (error) {
            return $q.reject(error);
        });
        
    }
    
    vismaServiceFactory.getAccounts = _getAccounts;
    //vismaServiceFactory.getSuppliers = _getSuppliers;
   // vismaServiceFactory.getCustomers = _getCustomers;
   // vismaServiceFactory.getGeneralLedger = _getGeneralLedger;
    vismaServiceFactory.getDepartmentAccData = _getDepartmentAccData;
    vismaServiceFactory.getProjectAccData = _getProjectAccData;
    vismaServiceFactory.getStaffAccData = _getStaffAccData;
    vismaServiceFactory.getCostAllocationAccData = _getCostAllocationAccData;
    vismaServiceFactory.getVatData = _getVatData;
    vismaServiceFactory.getCurrencyData = _getCurrencyData;
    vismaServiceFactory.saveAccountData = _saveAccountData;
    vismaServiceFactory.removeAccountEntry = _removeAccountEntry;
    vismaServiceFactory.accountTransfer = _accountTransferToVisma;
    vismaServiceFactory.rollbackVouchers = _rollbackVouchers;
    vismaServiceFactory.removeAccountMappings = _removeAccountMappings;

    return vismaServiceFactory;

}]);
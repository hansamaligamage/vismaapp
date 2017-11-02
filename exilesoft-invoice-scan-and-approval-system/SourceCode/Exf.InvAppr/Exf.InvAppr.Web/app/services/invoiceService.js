'use strict';
app.factory('invoiceService', ['$http', 'app_config', '$q', 'localStorageService', '$rootScope', function ($http, app_config, $q, localStorageService, $rootScope) {

    var invoiceServiceFactory = {};
    var regionId = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion);

    function _getInvoices(searchOptions) {

        var workingRegion = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion);
        var regionId = 0;
        if (workingRegion) {
            regionId = workingRegion.Id;
        }

        searchOptions.regionId = regionId;
        var deferred = $q.defer();
        var jsonData = JSON.stringify(searchOptions);
        var url = app_config.SERVICE_BASE + 'api/getInvoices?searchOptions=' + encodeURIComponent(jsonData);
        $http.get(url)
                .success(function (response) {
                    deferred.resolve(response);

                    $rootScope.$broadcast('changeInvoiceCount');

                })
                .error(function (error, status) {
                    deferred.reject('Error update user. (HTTP status: ' + status + ' , ErrorMessage: ' + error + ')');
                })
        return deferred.promise;
    };

    var _approveInvoices = function (invoicesToBeApprove) {
        var deferred = $q.defer();

        $http.put(app_config.SERVICE_BASE + 'api/bulkApproveNew/', invoicesToBeApprove)
                .success(function (response) {
                    deferred.resolve(response);
                })
                .error(function (error, status) {
                    deferred.reject('Error update user. (HTTP status: ' + status + ' , ErrorMessage: ' + error + ')');
                })
        return deferred.promise;
    }

    var _getInvoiceDetails = function (invoiceId) {
        var deferred = $q.defer();
        var url = app_config.SERVICE_BASE + 'api/getInvoice/' + invoiceId;
        $http.get(url)
            .success(function (response) {
                if (response.Voucher.Currency === null) {
                    var workingRegion = localStorageService.get(app_config.LOCAL_STORE.WorkingRegion);

                    response.Voucher.Currency = workingRegion.CurrencyCode;
                }
                if (response.Voucher.DueDate !== null) {
                    response.Voucher.DueDate = new Date(response.Voucher.DueDate);
                }
                if (response.Voucher.InvoiceDate !== null) {
                    response.Voucher.InvoiceDate = new Date(response.Voucher.InvoiceDate);
                }

                deferred.resolve(response);
            })
        // var invoice = {
        //    id: 1,
        //    supplier: 'supplier 1'
        //}

        //deferred.resolve(invoice);
        return deferred.promise;;
    }

    var _getSupplierAccData = function (invoiceId) {
        return $http.get(app_config.SERVICE_BASE + 'api/visma/suppliers/' + invoiceId)
        .then(function (response) {
            return response.data;
        },
        function (response) {
            return $q.reject('An error occured while retrieving supplier data. StatusCode: ' + response.status)
        });
    }

    var _getCurrencyData = function (invoiceId) {
        return $http.get(app_config.SERVICE_BASE + 'api/visma/currency/' + invoiceId)
        .then(function (response) {
            return response.data;
        },
        function (response) {
            return $q.reject('An error occured while retrieving currency data. StatusCode: ' + response.status)
        });
    }

    var _getInvoiceCount = function (regionId) {

        return $http.get(app_config.SERVICE_BASE + 'api/GetInvoiceCount/' + regionId)
               .then(function (response) {
                   return response.data;
               })
               .catch(function (response) {
                   return $q.reject('Error retrieving user roles. (HTTP status: ' + response.status + ')');
               })
    }

    var _requestMoreInfo = function (moreInfoRequestDto) {
        var deferred = $q.defer();
        debugger;
        var config = { headers: { 'Content-Type': 'application/json' } };
        $http.post(
            app_config.SERVICE_BASE + 'api/invoice/requestmoreinfo',
            moreInfoRequestDto,
            config)
            .then(function (response) {
                deferred.resolve(response);
            },
            function (error) {
                deferred.reject(error);
            });

        return deferred.promise;

    }

    var _saveInvoice = function (invoice) {
        debugger;
        return $http.post(app_config.SERVICE_BASE + 'api/saveInvoice', invoice)
            .then(function (response) {
                return response.data;
            })
               .catch(function (response) {
                   return $q.reject('Error saving invoice. (HTTP status: ' + response.status + ')');
               })
    };

    var _changeInvoiceStatus = function (invoice, status) {
        return $http.post(app_config.SERVICE_BASE + 'api/ChangeInvoiceStatus', invoice)
            .then(function (response) {
                return response.data;
            })
               .catch(function (response) {
                   return $q.reject('Error saving invoice. (HTTP status: ' + response.status + ')');
               })
    };

    var _getInvoiceVerifier = function (invoiceid) {
        var config = { headers: { 'Content-Type': 'application/json' } };
        return $http.get(app_config.SERVICE_BASE + 'api/invoice/' + invoiceid + '/getverifier')
            .then(function (response) {
                return response.data;
            },
            function (response) {
                return $q.reject('An error occured while retrieving verifier. StatusCode: ' + response.status)
            });
    }

    var _addComment = function (invoiceid, commentText) {
        return $http.post(app_config.SERVICE_BASE + 'api/invoice/' + invoiceid + '/comment',
            {
                Text: commentText
            }).then(function (response) {
                return response;
            }, function (response) {
                return $q.reject('An error occurred while add comment. (HTTP status: ' + response.status + ')');
            });
    }

    var _getInvoiceAccounts = function (voucherId) {
        return $http.get(app_config.SERVICE_BASE + 'api/invoice/accounts/' + voucherId)
            .then(function (response) {
                return response.data;
            },
            function (response) {
                return $q.reject('An error occured while retrieving invoice. StatusCode: ' + response.status)
            });
    }

    var _getInvoiceImageUrl = function (invoiceId) {
        return $http.get(app_config.SERVICE_BASE + 'api/invoice/getImageUrl/' + invoiceId)
            .then(function (response) {
                return response.data;
            },
            function (response) {
                return "";
            });
    }

    var _nextVoucher = function (invoiceId) {
        return $http.get(app_config.SERVICE_BASE + 'api/invoice/nextApprovedVoucher/' + invoiceId + '/' + regionId)
        .then(function (response) {
            return response.data;
        },
        function (response) {
            return $q.reject('An error occured while retrieving Next Invoice. StatusCode: ' + response.status)
        });
    }

    var _sendToPendingApproval = function (idList) {
        return $http.post(app_config.SERVICE_BASE + 'api/invoice/toPendingApproval', idList).then(function (response) {
               return response;
           }, function (response) {
               return $q.reject('An error occurred while add comment. (HTTP status: ' + response.status + ')');
           });
    }


    invoiceServiceFactory.getInvoices = _getInvoices;
    invoiceServiceFactory.approveInvoices = _approveInvoices;
    invoiceServiceFactory.getInvoiceDetails = _getInvoiceDetails;
    invoiceServiceFactory.getSupplierAccData = _getSupplierAccData;
    invoiceServiceFactory.getCurrencyData = _getCurrencyData;
    invoiceServiceFactory.getInvoiceCount = _getInvoiceCount;
    invoiceServiceFactory.requestMoreInfo = _requestMoreInfo;
    invoiceServiceFactory.saveInvoice = _saveInvoice;
    invoiceServiceFactory.changeInvoiceStatus = _changeInvoiceStatus;
    invoiceServiceFactory.getInvoiceVerifier = _getInvoiceVerifier;
    invoiceServiceFactory.saveComment = _addComment;
    invoiceServiceFactory.getInvoiceAccounts = _getInvoiceAccounts;
    invoiceServiceFactory.getInvoiceImageUrl = _getInvoiceImageUrl;
    invoiceServiceFactory.nextVoucher = _nextVoucher;
    invoiceServiceFactory.sendToPendingApproval = _sendToPendingApproval;

    return invoiceServiceFactory



}]);
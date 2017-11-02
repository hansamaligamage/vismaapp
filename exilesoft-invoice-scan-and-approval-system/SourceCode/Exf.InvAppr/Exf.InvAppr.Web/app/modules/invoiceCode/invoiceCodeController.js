'use strict';

app.controller('invoiceCodeController', ['$routeParams', 'invoiceService', 'vismaService', '$uibModal', '$log', '$filter', '$q', '$scope', '$location', function ($routeParams, invoiceService, vismaService, $uibModal, $log, $filter, $q, $scope, $location) {
    var vm = this;
    vm.message = '';
    vm.savedSuccessfully = false;
    vm.vismaAccEntries = [];
    var errors = [];
    vm.isSuccessfully = false;
    vm.isCompleted = false;
    vm.imageUrl = "";
    vm.vismaDebitAccount = {
        catogory: 'test',
        account: ''
    }

    vm.currentInvoice = {};
    vm.markedForDeletion = [];

    vm.vismaCreditAccount = {
        catogory: '',
        account: ''
    }

    function getEmptyCurrencyData() {
        return {
            date: $filter('date')(new Date(), 'yyyy-MM-dd'),
            toCurrency: '',
            currencyRate: '',
            baseAmount: '',
            convertedAmount: ''

        }
    }

    function getFillVoucherWithInvoice(voucher, newRow) {
        let invoiceAmount = voucher.Amount;

        if (newRow) {
            invoiceAmount = 0;
        }

        return {
            invoiceNo: voucher.InvoiceNo,
            debitAccNo: "",
            debitVat: "",
            creditAccNo: "",
            creditVat: "",
            amount: invoiceAmount,
            voucherDate: $filter('date')(voucher.InvoiceDate, 'yyyy-MM-dd'),
            dueDate: $filter('date')(voucher.InvoiceDate, 'yyyy-MM-dd'),
            //voucherDate: voucher.InvoiceDate,
            //dueDate: voucher.InvoiceDate,
            valueDate: "",
            department: "",
            project: "",
            text: "",
            employeeId: "",
            CID: "",
            VoucherId: voucher.Id,
            IsDraftVersion: "",
            currencyData: getEmptyCurrencyData()
        }
    }

    function resetAlertMessage() {
        vm.message = '';
        vm.isSuccessfully = false;
    }

    function prepareInvoiceAccountsToDisplay(data) {

        // TODO: tax adjusted amount in future?
        if (data.length == 1) {
            vm.currentInvoice.totalAmount = data[0].AmountInDefaultCurrency;
        }

        var total = 0;
        for (var i = 0; i < data.length; i++) {

            total += Number(data[i].AmountInDefaultCurrency);

            if (data[i].Currency1 > 0) {
                data[i].currencyData = {
                    date: data[i].ExchangeRate1Date,
                    convertedAmount: data[i].AmountInCurrency1,
                    currencyRate: data[i].ExchangeRate1,
                    baseAmount: data[i].AmountInDefaultCurrency,
                    toCurrency: { code: data[i].Currency1Code }
                }
            }
            else {
                data[i].currencyData = getEmptyCurrencyData();
            }

            vm.vismaAccEntries.push(data[i]);
            vm.voucher = data[i].Voucher;
            vm.isCompleted = !data[i].IsDraftVersion


        }

        vm.currentInvoice.totalAmount = total;
    }

    function loadNextInvoiceAccounts() {
        invoiceService.nextVoucher($routeParams.invoiceId).then(function (data) {
            $location.path('/invoice/' + data + '/code');
        }, function (error) {
            $location.path('approved');
        });
    }

    function Init() {
        resetAlertMessage();

        invoiceService.getInvoiceAccounts($routeParams.invoiceId).then(function (data) {
            prepareInvoiceAccountsToDisplay(data)
        }, function (error) {
            vm.message = error
            vm.isSuccessfully = false;
        });

        invoiceService.getInvoiceImageUrl($routeParams.invoiceId).then(function (data) {
            vm.imageUrl = data;
        });
    }

    Init();

    vm.close = function () {
        $location.path('/approved/');
    }

    vm.openVismaAccModal = function (accountType, index) {
        resetAlertMessage();

        vismaService.getAccounts()
                    .then(function (data) {
                        var modalInstance = $uibModal.open({
                            templateUrl: 'creditDebitAccountPopup.html',
                            controller: 'creditDebitPopupController as vm',
                            resolve: {
                                accounts: function () {
                                    return data;
                                }
                            }
                        });

                        modalInstance.result.then(function (selectedAccount) {
                            if (accountType === 'debit') {
                                vm.vismaAccEntries[index].debitAccNo = selectedAccount.account.No;
                            }

                            if (accountType === 'credit') {
                                vm.vismaAccEntries[index].creditAccNo = selectedAccount.account.No;
                            }
                        }, function () {
                            $log.info('Modal dismissed at: ' + new Date());
                        });
                    },
                   function (errorMsg) {
                       vm.message = errorMsg;
                       vm.isSuccessfully = false;
                   });
    }


    vm.getDepartmentAccData = function () {

        resetAlertMessage();

        var defered = $q.defer();

        vismaService.getDepartmentAccData().then(function (data) {
            defered.resolve(data);
        }, function (errorMsg) {
            defered.reject(errorMsg);
        });

        return defered.promise;
    }

    vm.getProjectAccData = function () {
        resetAlertMessage();
        var defered = $q.defer();

        vismaService.getProjectAccData().then(function (data) {
            defered.resolve(data);
        }, function (errorMsg) {
            defered.reject(errorMsg);
        });

        return defered.promise;
    }

    vm.getStaffAccData = function () {

        resetAlertMessage();
        var deferred = $q.defer();

        vismaService.getStaffAccData().then(function (data) {
            deferred.resolve(data);
        }, function (errorMsg) {
            deferred.reject(errorMsg);
        });

        return deferred.promise;
    }

    vm.getCostAllocationAccData = function () {

        resetAlertMessage();
        var deferred = $q.defer();

        vismaService.getCostAllocationAccData().then(function (data) {
            deferred.resolve(data);
        }, function (errorMsg) {
            deferred.reject(errorMsg);
        });

        return deferred.promise;

    }

    vm.getSupplierAccData = function () {
        resetAlertMessage();
        var deferred = $q.defer();

        vismaService.getSupplierAccData().then(function (data) {
            deferred.resolve(data);
        }, function (errorMsg) {
            deferred.reject(errorMsg);
        });

        return deferred.promise;

    }

    vm.getCurrencyData = function () {
        resetAlertMessage();
        var deferred = $q.defer();

        vismaService.getCurrencyData().then(function (data) {
            deferred.resolve(data);
        }, function (errorMsg) {
            deferred.reject(errorMsg);
        });

        return deferred.promise;

    }

    vm.getVatAccData = function () {
        resetAlertMessage();
        var deferred = $q.defer();

        vismaService.getVatData().then(function (data) {
            deferred.resolve(data);
        }, function (errorMsg) {
            deferred.reject(errorMsg);
        });

        return deferred.promise;
    }

    vm.updateProjectAccount = function (selectedAccount, index) {
        vm.vismaAccEntries[index].project = selectedAccount.No;
    }

    vm.updateDepartmentAccount = function (selectedAccount, index) {
        vm.vismaAccEntries[index].department = selectedAccount.No;
    }

    vm.updateStaffAccount = function (selectedAccount, index) {
        vm.vismaAccEntries[index].employeeId = selectedAccount.No;
    }

    vm.updateCostAllocation = function (selectedAccount, index) {
        vm.vismaAccEntries[index].costAllocationId = selectedAccount.No;
    }

    vm.updateDebitVatAccount = function (selectedAccount, index) {
        vm.vismaAccEntries[index].debitVat = selectedAccount.No;
    }

    vm.updateCreditVatAccount = function (selectedAccount, index) {
        vm.vismaAccEntries[index].creditVat = selectedAccount.No;
    }

    vm.openCommonAccountModal = function (rowIndex, callBack, resultCallBack) {

        callBack().then(function (data) {
            if (!vm.message) {
                var modalInstance = $uibModal.open({
                    templateUrl: 'commonAccountPopup.html',
                    controller: 'commonAccountPopupController as vm',
                    resolve: {
                        accounts: function () {
                            return data;
                        }
                    }
                });

                modalInstance.result.then(function (selectedAccount) {
                    resultCallBack(selectedAccount, rowIndex);
                }, function () {
                    $log.info('Modal dismissed at: ' + new Date());
                });
            }
        }, function (error) {
            vm.message = error;
            console.log(vm.message);
            vm.isSuccessfully = false;
        });



    }


    vm.closeAlert = function ($event) {
        $event.preventDefault();
        resetAlertMessage();
    }

    vm.openCurrencyConvertModal = function ($event, index) {

        if ($event.keyCode == 40) {
            var modalInstance = $uibModal.open({
                templateUrl: 'currencyConvertPopup.html',
                controller: 'currencyConvertPopupController as vm',
                resolve: {
                    currencyList: function () {
                        return vismaService.getCurrencyData().
                            then(function (data) {
                                return data;
                            },
                            function (errorMsg) {
                                errors.push('<li>' + errorMsg + '</li>');
                                vm.savedSuccessfully = false;
                            });
                    },
                    currencyData: function () {
                        //if (typeof(vm.vismaAccEntries[index].currencyData) == 'undefined') {
                        //    vm.vismaAccEntries[index].currencyData = getEmptyCurrencyData();
                        //}
                        // vm.vismaAccEntries[index].currencyData.baseAmount = vm.vismaAccEntries[index].amount;
                        return vm.vismaAccEntries[index].currencyData;
                    }
                }
            });

            modalInstance.result.then(
                function (currencyData) {
                    vm.vismaAccEntries[index].currencyData = currencyData;
                    vm.isAmountDisabled = true;

                    vm.vismaAccEntries[index].AmountInCurrency1 = currencyData.baseAmount;
                    vm.vismaAccEntries[index].Currency1 = currencyData.toCurrency.No;
                    vm.vismaAccEntries[index].Currency1Code = currencyData.toCurrency.Code;
                    vm.vismaAccEntries[index].ExchangeRate1 = currencyData.currencyRate;
                    vm.vismaAccEntries[index].AmountInDefaultCurrency = currencyData.convertedAmount;
                    vm.vismaAccEntries[index].ExchangeRate1Date = currencyData.date;
                },
                function () {
                    console.log('close')
                });
        }
    }

    vm.addNewAccount = function (event) {
        event.preventDefault();
        var vismaAccEntityObj = getFillVoucherWithInvoice(vm.voucher, true);
        vm.vismaAccEntries.push(vismaAccEntityObj);
    }

    vm.saveComment = function () {
        if (vm.newComment !== '') {
            invoiceService.saveComment(vm.voucher.Id, vm.newComment)
                .then(function (response) {
                    if (response.status == 200) {
                        vm.voucher.Comments.push(response.data);
                        vm.newComment = '';
                    }
                    else {
                        console.log(response.data);
                    }
                },
                function (error) {
                    console.log(error)
                });
        }
    }

    vm.saveVoucherAccount = function (isSaveDraft) {
        resetAlertMessage();

        if (!validateInvoice().totalAmount) {
            vm.isSuccessfully = false;
            vm.message = "Please check the Total Amount";
            return;
        } else if (!validateInvoice().valueDate) {
            vm.isSuccessfully = false;
            vm.message = "Please check Value Date";
            return;
        }

        vm.deleteAccountMappings(vm.markedForDeletion, function () {

            vismaService.saveAccountData(vm.vismaAccEntries, isSaveDraft).then(function (data) {
                vm.isCompleted = true;
                vm.vismaAccEntries = data;
                vm.isSuccessfully = true;
                if (isSaveDraft) {
                    vm.message = "Account data successfully saved."
                }
                else {
                    loadNextInvoiceAccounts();
                }

            }, function (error) {
                vm.isSuccessfully = false;

                if (error.data.Message) {
                    vm.message = error.data.Message;
                }

                if (error.data.ExceptionMessage != null) {
                    vm.message = error.data.ExceptionMessage;
                }
            });
        });

    }

    function validateInvoice() {

        var validValueDate = false;
        var total = 0;
        for (var i = 0; i < vm.vismaAccEntries.length; i++) {
            total += Number(vm.vismaAccEntries[i].AmountInDefaultCurrency);
            if (vm.vismaAccEntries[i].valueDate) {
                validValueDate = true;
            } else {
                validValueDate = false;
            }
        }

        return {
            totalAmount: Number(vm.currentInvoice.totalAmount) == Number(total),
            valueDate: validValueDate
        };
    }

    vm.removeAccountRow = function (event, index, accountEntry) {
        event.preventDefault();
        if (accountEntry.Id != undefined) {
            vm.markedForDeletion.push(accountEntry);
        }        
        vm.vismaAccEntries.splice(index, 1);
    }

    vm.deleteAccountMappings = function (accountList, cb) {
        var messages = [];
        var totalStatus = true;
        if (accountList.length > 0) {

            vismaService.removeAccountMappings(accountList).then(function (response) {
                vm.isSuccessfully = true;
            }, function (error) {
                vm.isSuccessfully = false;
            });

            vm.isSuccessfully = totalStatus;
            if (vm.isSuccessfully) {
                vm.message = "Successfully deleted account entries."

                cb();

            } else {
                vm.message = "An Error occurred " + error.data.Message;
            }

        } else {
            cb();
        }

        return totalStatus;
    }

}]);
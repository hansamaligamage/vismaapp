'use strict';
app.service('importExportService', ['$log', '$http', 'Upload', 'app_config', '$interval', function ($log, http, Upload, app_config, $interval) {

    var progressInfo = {
        percentage: 0,
        completed: false,
        error: false
    }

    function _resetProgressInfo() {
        progressInfo = {
            percentage: 0,
            completed: false,
            error: false
        }
    }

    var test = function () {
        progressInfo.percentage = progressInfo.percentage < 100 ? (progressInfo.percentage + 25) : 100;
        $log.info('percentage ' + progressInfo.percentage);
        progressInfo.completed = progressInfo.percentage == 100 ? true : false;
    }

    var getProgresInfo = function () {
        return progressInfo;
    }

    var uploadDataFile = function (url, file) {
        _resetProgressInfo();
        //$interval(function () {           
        //    test();
        //}, 2000);
        Upload.upload({
            url: url,
            data: { file: file }
        }).then(successHandler, errorHandler, progressUpdate);
    }

    var successHandler = function (resp) {
        $log.debug('Success ' + resp.config.data.file.name + 'uploaded. Response: ' + resp.data);
        progressInfo.completed = true;
        progressInfo.error = false;
    }

    var errorHandler = function (resp) {
        $log.error('Error status: ' + resp.status);
        progressInfo.error = true;
        progressInfo.completed = false;
    }

    var progressUpdate = function (evt) {
        progressInfo.percentage = parseInt(100.0 * evt.loaded / evt.total);
        $log.debug('progress: ' + progressInfo.percentage + '% ' + evt.config.data.file.name);
        //progressInfo.completed = progressInfo.percentage == 100 ? true : false;
    }

    var importMasterData = function (file) {
        uploadDataFile(app_config.SERVICE_BASE + 'api/Visma/ImportMasterData', file);
    }

    var importTransactionalData = function (file) {
        uploadDataFile(app_config.SERVICE_BASE + 'api/Visma/ImportTransactionData', file);
    }

    return {
        importMasterData: importMasterData,
        importTransactionalData: importTransactionalData,
        getProgresInfo: getProgresInfo,
        resetImport: _resetProgressInfo
    };

}
]);
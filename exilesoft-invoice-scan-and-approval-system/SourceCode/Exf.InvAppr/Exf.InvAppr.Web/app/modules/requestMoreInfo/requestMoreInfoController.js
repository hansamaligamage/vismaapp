app.controller('moreInfoRequestController', function (hideFlag) {
    var vm = this;
    console.log(hideFlag);
    vm.hideFlag = hideFlag
    vm.testData = 'amal';
})
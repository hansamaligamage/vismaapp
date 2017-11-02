app.factory('loadingCounts', function () {
    return {
        enable_count: 0,
        disable_count: 0
    }
});

app.directive("loadingIndicator", function (loadingCounts, $timeout) {
    return {
        restrict: "A",
        link: function (scope, element, attrs) {
            scope.$on("loading-started", function (e) {
                loadingCounts.enable_count++;
                //only show if longer than one sencond
                $timeout(function () {
                    if (loadingCounts.enable_count > loadingCounts.disable_count) {
                        element.css({ "display": "" });
                    }
                }, 1000);
            });
            scope.$on("loading-complete", function (e) {
                loadingCounts.disable_count++;
                if (loadingCounts.enable_count == loadingCounts.disable_count) {
                    element.css({ "display": "none" });
                }
            });
        }
    };
});
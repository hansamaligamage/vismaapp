app.directive('invoiceImage', function ($document, $log) {

    var controller = function () {

        var vm = this;
        var defaultWidthPartial = 80;
        var widthPartial = defaultWidthPartial;
        var quadrants = 0;

        vm.style = {
            height: 'auto',
            width: defaultWidthPartial + '%'
        };

        vm.zoomIn = function () {
            widthPartial += 10;
            vm.style['width'] = widthPartial + '%';
        }

        vm.zoomOut = function () {
            widthPartial -= 10;
            vm.style['width'] = widthPartial + '%';
        }

        vm.reset = function () {
            vm.style['width'] = defaultWidthPartial + '%';
            setRotation(0);
        }

        function setRotation(quad) {
            var rotation = 'rotate(' + (90 * quad) + 'deg)';
            vm.style['-moz-transform'] = vm.style['-o-transform'] = vm.style['-webkit-transform'] = vm.style['-ms-transform'] = rotation;
        }

        vm.rotateClockwise = function (element) {
            setRotation(++quadrants);
        }
    };

    return {
        restrict: 'E',
        scope: {
            url: '='
        },
        controller: controller,
        controllerAs: 'vm',
        bindToController: true, //required in 1.3+ with controllerAs
        templateUrl: 'app/directives/invoiceImageTemplate.html'
    };
});
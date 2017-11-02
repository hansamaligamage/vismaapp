app.directive('resizer', function ($document) {

    return function ($scope, $element, $attrs) {

        $element.on('mousedown', function (event) {
            event.preventDefault();

            $document.on('mousemove', mousemove);
            $document.on('mouseup', mouseup);
        });

        function mousemove(event) {

            
            var y = window.innerHeight - event.pageY;

            $element.css({
                bottom: y + 'px'
            });

            $($attrs.resizerTop).css({
                bottom: (y + parseInt($attrs.resizerHeight)) + 'px'
            });
            $($attrs.resizerBottom).css({
                height: y + 'px'
            });
        }

        function mouseup() {
            $document.unbind('mousemove', mousemove);
            $document.unbind('mouseup', mouseup);
        }
    };
});

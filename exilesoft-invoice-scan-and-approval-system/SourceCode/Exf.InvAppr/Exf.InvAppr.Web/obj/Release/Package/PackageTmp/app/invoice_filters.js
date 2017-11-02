app.filter("jsonDateFormatter", function () {
    var re = /\/Date\(([0-9]*)\)\//;
    return function (x) {
        if (x != null) {
            var m = x.match(re);
            if (m) return new Date(parseInt(m[1]));
        }
        return null;
    };
});

app.filter("commentsConcate", function () {
    return function (comments) {

        if (!(typeof comments === 'undefined' || comments === null)) {
            var out = [];
            angular.forEach(comments, function (comment) {
                out.push(comment.Text);
            });


            return out.join(", ");
        }
    }
});

app.filter('regionalNumber', function () {
    return function (value, currency) {
        if (typeof value != undefined) {

            var intPart = Math.floor(value);
            var fraction = parseInt((value - intPart), 10);
           
            if (currency == 'NOK') {
                value = value.toString().replace('.', ','); 
                return thousandSeperator(value, '.');
            }
            else {
                return thousandSeperator(value, ',');
            }
        }
    }
})

var thousandSeperator = function (number, seperator) {
    var rx = /(\d+)(\d{3})/;
    return String(number).replace(/^\d+/, function (w) {
        while (rx.test(w)) {
            w = w.replace(rx, '$1' + seperator + '$2');
        }
        return w;
    });
}
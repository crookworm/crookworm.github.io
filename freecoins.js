$(function() {
    var baseTimeout = 0; // used to calculate delay between button clicks, in milliseconds
    
    $('input[type=button].clGetFreeCoins').each(function() {  
        var coinName = $(this).parent().prevAll().last().text();
        var statusHtml = $(this).parent().prevAll().first().html();

        if (statusHtml && statusHtml.indexOf('ready') >= 0) {
            var _this = this;
            _this.timeout = baseTimeout + Math.floor((Math.random() * 601) + 200); // increase timeout as we go down the list
            baseTimeout = _this.timeout;
            
            setTimeout(function() { // Finally, click button. Timeout is to diffuse load on Yobit's server
                var clickEvent  = document.createEvent ('MouseEvents');
                clickEvent.initEvent('click', true, true);
                _this.dispatchEvent(clickEvent);
                //console.log('Clicked coin', coinName, 'after', _this.timeout, 'milliseconds');
            }, _this.timeout);
        }
        else {
            baseTimeout += Math.floor((Math.random() * 25) + 5); // increase timeout slightly even for rows that we don't click
        }
    });
});

/**
 * This function will set a timeout on all non-error BS alert messages.
 * After the timeout the allert messages will be animated away.
 */
function flashMessageSetTimeout() {
    if($("#flash .alert").length == 0) {
        console.log('no alerts found');
        return;
    } else {
        $("#flash .alert").each(function (index) {
            var msgSelector = $.grep(this.className.split(" "), function (v) {
                var isError = v.indexOf('alert-error') === 0;
                return !isError && (v.indexOf('alert-') === 0);
            }).join();
            console.log(msgSelector);
            window.setTimeout(function () {
                $('.alert.'+msgSelector).slideUp(function(){ $('.alert.'+msgSelector).alert('close') });
            }, 3000+(index*500));
        });
    }
}
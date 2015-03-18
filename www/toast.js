


window.toast = function(str, callback) {
        cordova.exec(callback, function(err) {
            callback('Nothing to toast.');
        }, "ToastPlugin", "toast", str);
    };



var Toast = function() {
};

// Call this to show toast notifications.
Toast.prototype.show = function(successCallback, errorCallback, options) {
    if (errorCallback == null) { errorCallback = function() {}}

    if (typeof errorCallback != "function")  {
        console.log("Toast.show failure: failure parameter not a function");
        return
    }

    if (typeof successCallback != "function") {
        console.log("Toast.show failure: success callback parameter must be a function");
        return
    }

    cordova.exec(successCallback, errorCallback, "ToastPlugin", "toast", options);
};
//-------------------------------------------------------------------

if(!window.plugins) {
    window.plugins = {};
}
if (!window.plugins.toast) {
    window.plugins.toast = new Toast();
}

if (typeof module != 'undefined' && module.exports) {
  module.exports = Toast;
}

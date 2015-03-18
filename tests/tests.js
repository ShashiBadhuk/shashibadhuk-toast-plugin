var options = ["Sample Toast Message displayed using shashibadhuk-toast-plugin cordova plugin", "long"];  
function successCallback(response) {
   console.log(response);
}
function errorCallback(error) {
   console.error(response);
}
window.plugins.toast.show(successCallback, errorCallback, options);
						
						
						

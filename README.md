<!---
 license: Licensed to the Apache Software Foundation (ASF) under one
         or more contributor license agreements. The ASF licenses this file
         to you under the Apache License, Version 2.0 (the
         "License"); you may not use this file except in compliance
         with the License.  You may obtain a copy of the License at

           http://www.apache.org/licenses/LICENSE-2.0

         Unless required by applicable law or agreed to in writing,
         software distributed under the License is distributed on an
         "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
         KIND, either express or implied.  See the License for the
         specific language governing permissions and limitations
         under the License.
-->

# shashibadhuk-toast-plugin

### Description

This plugin is used to display toast messages in android device. you can use duration parameter
 to set how long toast will be display on the device.
 
```
var options = [message, duration];  
window.plugins.toast.show(successCallback, errorCallback, options);
```
options should be array and contain following value :-
* message - message which you want to display as toast message.
* duration - It should have the string value either "long" or "short".
 
 
### Installation

    cordova plugin add com.shashibadhuk.toast
    or
    cordova plugin add https://github.com/ShashiBadhuk/shashibadhuk-toast-plugin

### Supported Platforms

- Android

### Quick Example

```
document.addEventListener("deviceready", onDeviceReady, false);

var ToastMessage = {
    successCallback: function(response) {
        console.log(response);
    },
    errorCallback : function(error) {
        console.error(response);
    },
    show: function(message, time) {
      try {
        var options = [message, time];
        window.plugins.toast.show(this.successCallback, this.errorCallback, options);
      }
      catch(err) {
        console.log("Toast"+err.message);
      }
    }
};

function onDeviceReady() {
    try {
        var message = "Sample Toast Message displayed using shashibadhuk-toast-plugin cordova plugin";
        var duration = "long";
        ToastMessage.show(message, duration);
    } 
    catch(err) {
        console.error(err.message);
    }
}
```
###Output

![toast-output](https://cloud.githubusercontent.com/assets/4089646/6827491/af628ef0-d32d-11e4-97c6-f3088105dafb.png)

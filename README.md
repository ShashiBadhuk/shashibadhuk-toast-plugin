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
  window.toast(options, function(response) {  
    console.log(response);  
  });
```

* message - message which you want to display as toast message.
* duration - It should have the string value either "long" or "short".
 
 
### Installation

    cordova plugin add git@github.com:ShashiBadhuk/shashibadhuk-toast-plugin.git

### Supported Platforms

- Android

### Quick Example

```
document.addEventListener("deviceready", onDeviceReady, false);
function onDeviceReady() {
    var options = ["Sample Toast Message displayed using shashibadhuk-toast-plugin cordova plugin", "long"];  
    window.toast(options, function(response) {  
        console.log(response);  
    }
}
```

/********* ToastPlugin.m Cordova Plugin Implementation *******/
#import "CDVToast.h"
#import <Cordova/CDV.h>

@implementation CDVToast

- (void)toast:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    if (toastmessage != nil && [toastmessage length] > 0) {
	
	   NSString* toastmessage = [command.arguments objectAtIndex:0];
        NSString* duration = [command.arguments objectAtIndex:1];
	   MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
	   // Configure for text only and offset down
	   hud.mode = MBProgressHUDModeText;
	   hud.labelText = @toastmessage;
	   hud.margin = 10.f;
	   hud.yOffset = 150.f;
	   hud.removeFromSuperViewOnHide = YES;
	   [hud hide:YES afterDelay:3];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:toastmessage];
    } else {
	   pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
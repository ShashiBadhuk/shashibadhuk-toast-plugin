package com.shashibadhuk.toast;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;
import android.view.Gravity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import android.widget.Toast;
/**
 * This class toast a string called from JavaScript.
 */
public class ToastPlugin extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("toast")) {
            String message = args.getString(0);
            String duration = args.getString(1);
            this.invokeToast(message, duration, callbackContext);
            return true;
        }
        return false;
    }

    private void invokeToast(String message, String duration, CallbackContext callbackContext) {
        if (message != null && message.length() > 0) {
            if (duration == "long")
                Toast.makeText(webView.getContext(), message, Toast.LENGTH_LONG).show();
            else
                Toast.makeText(webView.getContext(), message, Toast.LENGTH_SHORT).show();
            callbackContext.success(message);
        } else {
            callbackContext.error("Expected one non-empty string argument.");
        }
    }
}

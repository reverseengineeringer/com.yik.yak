package com.facebook;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.android.R.string;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class AuthorizationClient
  implements Serializable
{
  static final String EVENT_EXTRAS_DEFAULT_AUDIENCE = "default_audience";
  static final String EVENT_EXTRAS_IS_LEGACY = "is_legacy";
  static final String EVENT_EXTRAS_LOGIN_BEHAVIOR = "login_behavior";
  static final String EVENT_EXTRAS_MISSING_INTERNET_PERMISSION = "no_internet_permission";
  static final String EVENT_EXTRAS_NEW_PERMISSIONS = "new_permissions";
  static final String EVENT_EXTRAS_NOT_TRIED = "not_tried";
  static final String EVENT_EXTRAS_PERMISSIONS = "permissions";
  static final String EVENT_EXTRAS_REQUEST_CODE = "request_code";
  static final String EVENT_EXTRAS_TRY_LEGACY = "try_legacy";
  static final String EVENT_EXTRAS_TRY_LOGIN_ACTIVITY = "try_login_activity";
  static final String EVENT_NAME_LOGIN_COMPLETE = "fb_mobile_login_complete";
  private static final String EVENT_NAME_LOGIN_METHOD_COMPLETE = "fb_mobile_login_method_complete";
  private static final String EVENT_NAME_LOGIN_METHOD_START = "fb_mobile_login_method_start";
  static final String EVENT_NAME_LOGIN_START = "fb_mobile_login_start";
  static final String EVENT_PARAM_AUTH_LOGGER_ID = "0_auth_logger_id";
  static final String EVENT_PARAM_ERROR_CODE = "4_error_code";
  static final String EVENT_PARAM_ERROR_MESSAGE = "5_error_message";
  static final String EVENT_PARAM_EXTRAS = "6_extras";
  static final String EVENT_PARAM_LOGIN_RESULT = "2_result";
  static final String EVENT_PARAM_METHOD = "3_method";
  private static final String EVENT_PARAM_METHOD_RESULT_SKIPPED = "skipped";
  static final String EVENT_PARAM_TIMESTAMP = "1_timestamp_ms";
  private static final String TAG = "Facebook-AuthorizationClient";
  private static final String WEB_VIEW_AUTH_HANDLER_STORE = "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY";
  private static final String WEB_VIEW_AUTH_HANDLER_TOKEN_KEY = "TOKEN";
  private static final long serialVersionUID = 1L;
  private transient AppEventsLogger appEventsLogger;
  transient AuthorizationClient.BackgroundProcessingListener backgroundProcessingListener;
  transient boolean checkedInternetPermission;
  transient Context context;
  AuthorizationClient.AuthHandler currentHandler;
  List<AuthorizationClient.AuthHandler> handlersToTry;
  Map<String, String> loggingExtras;
  transient AuthorizationClient.OnCompletedListener onCompletedListener;
  AuthorizationClient.AuthorizationRequest pendingRequest;
  transient AuthorizationClient.StartActivityDelegate startActivityDelegate;
  
  private void addLoggingExtra(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (loggingExtras == null) {
      loggingExtras = new HashMap();
    }
    String str = paramString2;
    if (loggingExtras.containsKey(paramString1))
    {
      str = paramString2;
      if (paramBoolean) {
        str = (String)loggingExtras.get(paramString1) + "," + paramString2;
      }
    }
    loggingExtras.put(paramString1, str);
  }
  
  private void completeWithFailure()
  {
    complete(AuthorizationClient.Result.createErrorResult(pendingRequest, "Login attempt failed.", null));
  }
  
  private AppEventsLogger getAppEventsLogger()
  {
    if ((appEventsLogger == null) || (!appEventsLogger.getApplicationId().equals(pendingRequest.getApplicationId()))) {
      appEventsLogger = AppEventsLogger.newLogger(context, pendingRequest.getApplicationId());
    }
    return appEventsLogger;
  }
  
  private static String getE2E()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("init", System.currentTimeMillis());
      return localJSONObject.toString();
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
  
  private List<AuthorizationClient.AuthHandler> getHandlerTypes(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest)
  {
    ArrayList localArrayList = new ArrayList();
    SessionLoginBehavior localSessionLoginBehavior = paramAuthorizationRequest.getLoginBehavior();
    if (localSessionLoginBehavior.allowsKatanaAuth())
    {
      if (!paramAuthorizationRequest.isLegacy()) {
        localArrayList.add(new AuthorizationClient.GetTokenAuthHandler(this));
      }
      localArrayList.add(new AuthorizationClient.KatanaProxyAuthHandler(this));
    }
    if (localSessionLoginBehavior.allowsWebViewAuth()) {
      localArrayList.add(new AuthorizationClient.WebViewAuthHandler(this));
    }
    return localArrayList;
  }
  
  private void logAuthorizationMethodComplete(String paramString, AuthorizationClient.Result paramResult, Map<String, String> paramMap)
  {
    logAuthorizationMethodComplete(paramString, code.getLoggingValue(), errorMessage, errorCode, paramMap);
  }
  
  private void logAuthorizationMethodComplete(String paramString1, String paramString2, String paramString3, String paramString4, Map<String, String> paramMap)
  {
    if (pendingRequest == null)
    {
      paramString2 = newAuthorizationLoggingBundle("");
      paramString2.putString("2_result", AuthorizationClient.Result.Code.ERROR.getLoggingValue());
      paramString2.putString("5_error_message", "Unexpected call to logAuthorizationMethodComplete with null pendingRequest.");
    }
    for (;;)
    {
      paramString2.putString("3_method", paramString1);
      paramString2.putLong("1_timestamp_ms", System.currentTimeMillis());
      getAppEventsLogger().logSdkEvent("fb_mobile_login_method_complete", null, paramString2);
      return;
      Bundle localBundle = newAuthorizationLoggingBundle(pendingRequest.getAuthId());
      if (paramString2 != null) {
        localBundle.putString("2_result", paramString2);
      }
      if (paramString3 != null) {
        localBundle.putString("5_error_message", paramString3);
      }
      if (paramString4 != null) {
        localBundle.putString("4_error_code", paramString4);
      }
      paramString2 = localBundle;
      if (paramMap != null)
      {
        paramString2 = localBundle;
        if (!paramMap.isEmpty())
        {
          localBundle.putString("6_extras", new JSONObject(paramMap).toString());
          paramString2 = localBundle;
        }
      }
    }
  }
  
  private void logAuthorizationMethodStart(String paramString)
  {
    Bundle localBundle = newAuthorizationLoggingBundle(pendingRequest.getAuthId());
    localBundle.putLong("1_timestamp_ms", System.currentTimeMillis());
    localBundle.putString("3_method", paramString);
    getAppEventsLogger().logSdkEvent("fb_mobile_login_method_start", null, localBundle);
  }
  
  private void logWebLoginCompleted(String paramString1, String paramString2)
  {
    AppEventsLogger localAppEventsLogger = AppEventsLogger.newLogger(context, paramString1);
    Bundle localBundle = new Bundle();
    localBundle.putString("fb_web_login_e2e", paramString2);
    localBundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
    localBundle.putString("app_id", paramString1);
    localAppEventsLogger.logSdkEvent("fb_dialogs_web_login_dialog_complete", null, localBundle);
  }
  
  static Bundle newAuthorizationLoggingBundle(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putLong("1_timestamp_ms", System.currentTimeMillis());
    localBundle.putString("0_auth_logger_id", paramString);
    localBundle.putString("3_method", "");
    localBundle.putString("2_result", "");
    localBundle.putString("5_error_message", "");
    localBundle.putString("4_error_code", "");
    localBundle.putString("6_extras", "");
    return localBundle;
  }
  
  private void notifyBackgroundProcessingStart()
  {
    if (backgroundProcessingListener != null) {
      backgroundProcessingListener.onBackgroundProcessingStarted();
    }
  }
  
  private void notifyBackgroundProcessingStop()
  {
    if (backgroundProcessingListener != null) {
      backgroundProcessingListener.onBackgroundProcessingStopped();
    }
  }
  
  private void notifyOnCompleteListener(AuthorizationClient.Result paramResult)
  {
    if (onCompletedListener != null) {
      onCompletedListener.onCompleted(paramResult);
    }
  }
  
  void authorize(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest)
  {
    if (paramAuthorizationRequest == null) {}
    do
    {
      return;
      if (pendingRequest != null) {
        throw new FacebookException("Attempted to authorize while a request is pending.");
      }
    } while ((paramAuthorizationRequest.needsNewTokenValidation()) && (!checkInternetPermission()));
    pendingRequest = paramAuthorizationRequest;
    handlersToTry = getHandlerTypes(paramAuthorizationRequest);
    tryNextHandler();
  }
  
  void cancelCurrentHandler()
  {
    if (currentHandler != null) {
      currentHandler.cancel();
    }
  }
  
  boolean checkInternetPermission()
  {
    if (checkedInternetPermission) {
      return true;
    }
    if (checkPermission("android.permission.INTERNET") != 0)
    {
      String str1 = context.getString(R.string.com_facebook_internet_permission_error_title);
      String str2 = context.getString(R.string.com_facebook_internet_permission_error_message);
      complete(AuthorizationClient.Result.createErrorResult(pendingRequest, str1, str2));
      return false;
    }
    checkedInternetPermission = true;
    return true;
  }
  
  int checkPermission(String paramString)
  {
    return context.checkCallingOrSelfPermission(paramString);
  }
  
  void complete(AuthorizationClient.Result paramResult)
  {
    if (currentHandler != null) {
      logAuthorizationMethodComplete(currentHandler.getNameForLogging(), paramResult, currentHandler.methodLoggingExtras);
    }
    if (loggingExtras != null) {
      loggingExtras = loggingExtras;
    }
    handlersToTry = null;
    currentHandler = null;
    pendingRequest = null;
    loggingExtras = null;
    notifyOnCompleteListener(paramResult);
  }
  
  void completeAndValidate(AuthorizationClient.Result paramResult)
  {
    if ((token != null) && (pendingRequest.needsNewTokenValidation()))
    {
      validateSameFbidAndFinish(paramResult);
      return;
    }
    complete(paramResult);
  }
  
  void continueAuth()
  {
    if ((pendingRequest == null) || (currentHandler == null)) {
      throw new FacebookException("Attempted to continue authorization without a pending request.");
    }
    if (currentHandler.needsRestart())
    {
      currentHandler.cancel();
      tryCurrentHandler();
    }
  }
  
  Request createGetPermissionsRequest(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("access_token", paramString);
    return new Request(null, "me/permissions", localBundle, HttpMethod.GET, null);
  }
  
  Request createGetProfileIdRequest(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("fields", "id");
    localBundle.putString("access_token", paramString);
    return new Request(null, "me", localBundle, HttpMethod.GET, null);
  }
  
  RequestBatch createReauthValidationBatch(AuthorizationClient.Result paramResult)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    Object localObject3 = token.getToken();
    Object localObject2 = new AuthorizationClient.3(this, localArrayList1);
    String str = pendingRequest.getPreviousAccessToken();
    Object localObject1 = createGetProfileIdRequest(str);
    ((Request)localObject1).setCallback((Request.Callback)localObject2);
    localObject3 = createGetProfileIdRequest((String)localObject3);
    ((Request)localObject3).setCallback((Request.Callback)localObject2);
    localObject2 = createGetPermissionsRequest(str);
    ((Request)localObject2).setCallback(new AuthorizationClient.4(this, localArrayList2, localArrayList3));
    localObject1 = new RequestBatch(new Request[] { localObject1, localObject3, localObject2 });
    ((RequestBatch)localObject1).setBatchApplicationId(pendingRequest.getApplicationId());
    ((RequestBatch)localObject1).addCallback(new AuthorizationClient.5(this, localArrayList1, paramResult, localArrayList2, localArrayList3));
    return (RequestBatch)localObject1;
  }
  
  AuthorizationClient.BackgroundProcessingListener getBackgroundProcessingListener()
  {
    return backgroundProcessingListener;
  }
  
  boolean getInProgress()
  {
    return (pendingRequest != null) && (currentHandler != null);
  }
  
  AuthorizationClient.OnCompletedListener getOnCompletedListener()
  {
    return onCompletedListener;
  }
  
  AuthorizationClient.StartActivityDelegate getStartActivityDelegate()
  {
    if (startActivityDelegate != null) {
      return startActivityDelegate;
    }
    if (pendingRequest != null) {
      return new AuthorizationClient.2(this);
    }
    return null;
  }
  
  boolean onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((pendingRequest != null) && (paramInt1 == pendingRequest.getRequestCode())) {
      return currentHandler.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    return false;
  }
  
  void setBackgroundProcessingListener(AuthorizationClient.BackgroundProcessingListener paramBackgroundProcessingListener)
  {
    backgroundProcessingListener = paramBackgroundProcessingListener;
  }
  
  void setContext(Activity paramActivity)
  {
    context = paramActivity;
    startActivityDelegate = new AuthorizationClient.1(this, paramActivity);
  }
  
  void setContext(Context paramContext)
  {
    context = paramContext;
    startActivityDelegate = null;
  }
  
  void setOnCompletedListener(AuthorizationClient.OnCompletedListener paramOnCompletedListener)
  {
    onCompletedListener = paramOnCompletedListener;
  }
  
  void startOrContinueAuth(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest)
  {
    if (getInProgress())
    {
      continueAuth();
      return;
    }
    authorize(paramAuthorizationRequest);
  }
  
  boolean tryCurrentHandler()
  {
    if ((currentHandler.needsInternetPermission()) && (!checkInternetPermission()))
    {
      addLoggingExtra("no_internet_permission", "1", false);
      return false;
    }
    boolean bool = currentHandler.tryAuthorize(pendingRequest);
    if (bool)
    {
      logAuthorizationMethodStart(currentHandler.getNameForLogging());
      return bool;
    }
    addLoggingExtra("not_tried", currentHandler.getNameForLogging(), true);
    return bool;
  }
  
  void tryNextHandler()
  {
    if (currentHandler != null) {
      logAuthorizationMethodComplete(currentHandler.getNameForLogging(), "skipped", null, null, currentHandler.methodLoggingExtras);
    }
    do
    {
      if ((handlersToTry == null) || (handlersToTry.isEmpty())) {
        break;
      }
      currentHandler = ((AuthorizationClient.AuthHandler)handlersToTry.remove(0));
    } while (!tryCurrentHandler());
    while (pendingRequest == null) {
      return;
    }
    completeWithFailure();
  }
  
  void validateSameFbidAndFinish(AuthorizationClient.Result paramResult)
  {
    if (token == null) {
      throw new FacebookException("Can't validate without a token");
    }
    paramResult = createReauthValidationBatch(paramResult);
    notifyBackgroundProcessingStart();
    paramResult.executeAsync();
  }
}

/* Location:
 * Qualified Name:     com.facebook.AuthorizationClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
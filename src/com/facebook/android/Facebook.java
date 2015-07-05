package com.facebook.android;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.Session;
import com.facebook.Session.Builder;
import com.facebook.Session.OpenRequest;
import com.facebook.SessionLoginBehavior;
import com.facebook.SessionState;
import com.facebook.Settings;
import com.facebook.TokenCachingStrategy;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

public class Facebook
{
  @Deprecated
  public static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
  @Deprecated
  public static final Uri ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
  @Deprecated
  public static final String CANCEL_URI = "fbconnect://cancel";
  private static final int DEFAULT_AUTH_ACTIVITY_CODE = 32665;
  @Deprecated
  protected static String DIALOG_BASE_URL = "https://m.facebook.com/dialog/";
  @Deprecated
  public static final String EXPIRES = "expires_in";
  @Deprecated
  public static final String FB_APP_SIGNATURE = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2";
  @Deprecated
  public static final int FORCE_DIALOG_AUTH = -1;
  @Deprecated
  protected static String GRAPH_BASE_URL = "https://graph.facebook.com/";
  private static final String LOGIN = "oauth";
  @Deprecated
  public static final String REDIRECT_URI = "fbconnect://success";
  private static final long REFRESH_TOKEN_BARRIER = 86400000L;
  @Deprecated
  protected static String RESTSERVER_URL = "https://api.facebook.com/restserver.php";
  @Deprecated
  public static final String SINGLE_SIGN_ON_DISABLED = "service_disabled";
  @Deprecated
  public static final String TOKEN = "access_token";
  private long accessExpiresMillisecondsAfterEpoch = 0L;
  private String accessToken = null;
  private long lastAccessUpdateMillisecondsAfterEpoch = 0L;
  private final Object lock = new Object();
  private String mAppId;
  private Activity pendingAuthorizationActivity;
  private String[] pendingAuthorizationPermissions;
  private Session pendingOpeningSession;
  private volatile Session session;
  private boolean sessionInvalidated;
  private Facebook.SetterTokenCachingStrategy tokenCache;
  private volatile Session userSetSession;
  
  @Deprecated
  public Facebook(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("You must specify your application ID when instantiating a Facebook object. See README for details.");
    }
    mAppId = paramString;
  }
  
  private void authorize(Activity paramActivity, String[] paramArrayOfString, int paramInt, SessionLoginBehavior paramSessionLoginBehavior, Facebook.DialogListener paramDialogListener)
  {
    boolean bool = false;
    checkUserSession("authorize");
    pendingOpeningSession = new Session.Builder(paramActivity).setApplicationId(mAppId).setTokenCachingStrategy(getTokenCache()).build();
    pendingAuthorizationActivity = paramActivity;
    if (paramArrayOfString != null) {}
    for (;;)
    {
      pendingAuthorizationPermissions = paramArrayOfString;
      paramArrayOfString = new Facebook.1(this, paramDialogListener);
      paramActivity = new Session.OpenRequest(paramActivity).setCallback(paramArrayOfString).setLoginBehavior(paramSessionLoginBehavior).setRequestCode(paramInt).setPermissions(Arrays.asList(pendingAuthorizationPermissions));
      paramArrayOfString = pendingOpeningSession;
      if (pendingAuthorizationPermissions.length > 0) {
        bool = true;
      }
      openSession(paramArrayOfString, paramActivity, bool);
      return;
      paramArrayOfString = new String[0];
    }
  }
  
  private void checkUserSession(String paramString)
  {
    if (userSetSession != null) {
      throw new UnsupportedOperationException(String.format("Cannot call %s after setSession has been called.", new Object[] { paramString }));
    }
  }
  
  @Deprecated
  public static String getAttributionId(ContentResolver paramContentResolver)
  {
    return Settings.getAttributionId(paramContentResolver);
  }
  
  private TokenCachingStrategy getTokenCache()
  {
    if (tokenCache == null) {
      tokenCache = new Facebook.SetterTokenCachingStrategy(this, null);
    }
    return tokenCache;
  }
  
  private void onSessionCallback(Session paramSession, SessionState paramSessionState, Exception arg3, Facebook.DialogListener paramDialogListener)
  {
    Bundle localBundle = paramSession.getAuthorizationBundle();
    if (paramSessionState == SessionState.OPENED) {
      paramSessionState = null;
    }
    while (??? == null) {
      synchronized (lock)
      {
        if (paramSession != session)
        {
          paramSessionState = session;
          session = paramSession;
          sessionInvalidated = false;
        }
        if (paramSessionState != null) {
          paramSessionState.close();
        }
        paramDialogListener.onComplete(localBundle);
        return;
      }
    }
    if ((??? instanceof FacebookOperationCanceledException))
    {
      paramDialogListener.onCancel();
      return;
    }
    if (((??? instanceof FacebookAuthorizationException)) && (localBundle != null) && (localBundle.containsKey("com.facebook.sdk.WebViewErrorCode")) && (localBundle.containsKey("com.facebook.sdk.FailingUrl")))
    {
      paramDialogListener.onError(new DialogError(???.getMessage(), localBundle.getInt("com.facebook.sdk.WebViewErrorCode"), localBundle.getString("com.facebook.sdk.FailingUrl")));
      return;
    }
    paramDialogListener.onFacebookError(new FacebookError(???.getMessage()));
  }
  
  private void openSession(Session paramSession, Session.OpenRequest paramOpenRequest, boolean paramBoolean)
  {
    paramOpenRequest.setIsLegacy(true);
    if (paramBoolean)
    {
      paramSession.openForPublish(paramOpenRequest);
      return;
    }
    paramSession.openForRead(paramOpenRequest);
  }
  
  private static String[] stringArray(List<String> paramList)
  {
    int j = 0;
    if (paramList != null) {}
    String[] arrayOfString;
    for (int i = paramList.size();; i = 0)
    {
      arrayOfString = new String[i];
      if (paramList == null) {
        break;
      }
      i = j;
      while (i < arrayOfString.length)
      {
        arrayOfString[i] = ((String)paramList.get(i));
        i += 1;
      }
    }
    return arrayOfString;
  }
  
  private static List<String> stringList(String[] paramArrayOfString)
  {
    if (paramArrayOfString != null) {
      return Arrays.asList(paramArrayOfString);
    }
    return Collections.emptyList();
  }
  
  private boolean validateAppSignatureForPackage(Context paramContext, String paramString)
  {
    boolean bool2 = false;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 64);
      paramContext = signatures;
      int j = paramContext.length;
      int i = 0;
      for (;;)
      {
        boolean bool1 = bool2;
        if (i < j)
        {
          if (paramContext[i].toCharsString().equals("30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2")) {
            bool1 = true;
          }
        }
        else {
          return bool1;
        }
        i += 1;
      }
      return false;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
  }
  
  private boolean validateServiceIntent(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramContext.getPackageManager().resolveService(paramIntent, 0);
    if (paramIntent == null) {
      return false;
    }
    return validateAppSignatureForPackage(paramContext, serviceInfo.packageName);
  }
  
  @Deprecated
  public void authorize(Activity paramActivity, Facebook.DialogListener paramDialogListener)
  {
    SessionLoginBehavior localSessionLoginBehavior = SessionLoginBehavior.SSO_WITH_FALLBACK;
    authorize(paramActivity, new String[0], 32665, localSessionLoginBehavior, paramDialogListener);
  }
  
  @Deprecated
  public void authorize(Activity paramActivity, String[] paramArrayOfString, int paramInt, Facebook.DialogListener paramDialogListener)
  {
    if (paramInt >= 0) {}
    for (SessionLoginBehavior localSessionLoginBehavior = SessionLoginBehavior.SSO_WITH_FALLBACK;; localSessionLoginBehavior = SessionLoginBehavior.SUPPRESS_SSO)
    {
      authorize(paramActivity, paramArrayOfString, paramInt, localSessionLoginBehavior, paramDialogListener);
      return;
    }
  }
  
  @Deprecated
  public void authorize(Activity paramActivity, String[] paramArrayOfString, Facebook.DialogListener paramDialogListener)
  {
    authorize(paramActivity, paramArrayOfString, 32665, SessionLoginBehavior.SSO_WITH_FALLBACK, paramDialogListener);
  }
  
  @Deprecated
  public void authorizeCallback(int paramInt1, int paramInt2, Intent paramIntent)
  {
    checkUserSession("authorizeCallback");
    Session localSession = pendingOpeningSession;
    if ((localSession != null) && (localSession.onActivityResult(pendingAuthorizationActivity, paramInt1, paramInt2, paramIntent)))
    {
      pendingOpeningSession = null;
      pendingAuthorizationActivity = null;
      pendingAuthorizationPermissions = null;
    }
  }
  
  @Deprecated
  public void dialog(Context paramContext, String paramString, Bundle paramBundle, Facebook.DialogListener paramDialogListener)
  {
    paramBundle.putString("display", "touch");
    paramBundle.putString("redirect_uri", "fbconnect://success");
    if (paramString.equals("oauth"))
    {
      paramBundle.putString("type", "user_agent");
      paramBundle.putString("client_id", mAppId);
    }
    while (paramContext.checkCallingOrSelfPermission("android.permission.INTERNET") != 0)
    {
      Util.showAlert(paramContext, "Error", "Application requires permission to access the Internet");
      return;
      paramBundle.putString("app_id", mAppId);
      if (isSessionValid()) {
        paramBundle.putString("access_token", getAccessToken());
      }
    }
    new FbDialog(paramContext, paramString, paramBundle, paramDialogListener).show();
  }
  
  @Deprecated
  public void dialog(Context paramContext, String paramString, Facebook.DialogListener paramDialogListener)
  {
    dialog(paramContext, paramString, new Bundle(), paramDialogListener);
  }
  
  @Deprecated
  public boolean extendAccessToken(Context paramContext, Facebook.ServiceListener paramServiceListener)
  {
    checkUserSession("extendAccessToken");
    Intent localIntent = new Intent();
    localIntent.setClassName("com.facebook.katana", "com.facebook.katana.platform.TokenRefreshService");
    if (!validateServiceIntent(paramContext, localIntent)) {
      return false;
    }
    return paramContext.bindService(localIntent, new Facebook.TokenRefreshServiceConnection(this, paramContext, paramServiceListener), 1);
  }
  
  @Deprecated
  public boolean extendAccessTokenIfNeeded(Context paramContext, Facebook.ServiceListener paramServiceListener)
  {
    checkUserSession("extendAccessTokenIfNeeded");
    if (shouldExtendAccessToken()) {
      return extendAccessToken(paramContext, paramServiceListener);
    }
    return true;
  }
  
  @Deprecated
  public long getAccessExpires()
  {
    Session localSession = getSession();
    if (localSession != null) {
      return localSession.getExpirationDate().getTime();
    }
    return accessExpiresMillisecondsAfterEpoch;
  }
  
  @Deprecated
  public String getAccessToken()
  {
    Session localSession = getSession();
    if (localSession != null) {
      return localSession.getAccessToken();
    }
    return null;
  }
  
  @Deprecated
  public String getAppId()
  {
    return mAppId;
  }
  
  @Deprecated
  public long getLastAccessUpdate()
  {
    return lastAccessUpdateMillisecondsAfterEpoch;
  }
  
  @Deprecated
  public final Session getSession()
  {
    synchronized (lock)
    {
      Session localSession;
      if (userSetSession != null)
      {
        localSession = userSetSession;
        return localSession;
      }
      if ((session != null) || (!sessionInvalidated))
      {
        localSession = session;
        return localSession;
      }
    }
    Object localObject5 = accessToken;
    ??? = session;
    if (localObject5 == null) {
      return null;
    }
    if (??? != null) {
      ??? = ((Session)???).getPermissions();
    }
    for (;;)
    {
      localObject5 = new Session.Builder(pendingAuthorizationActivity).setApplicationId(mAppId).setTokenCachingStrategy(getTokenCache()).build();
      if (((Session)localObject5).getState() == SessionState.CREATED_TOKEN_LOADED) {
        break;
      }
      return null;
      if (pendingAuthorizationPermissions != null) {
        ??? = Arrays.asList(pendingAuthorizationPermissions);
      } else {
        ??? = Collections.emptyList();
      }
    }
    ??? = new Session.OpenRequest(pendingAuthorizationActivity).setPermissions((List)???);
    boolean bool;
    if (!((List)???).isEmpty())
    {
      bool = true;
      openSession((Session)localObject5, (Session.OpenRequest)???, bool);
    }
    for (;;)
    {
      synchronized (lock)
      {
        if ((sessionInvalidated) || (session == null))
        {
          ??? = session;
          session = ((Session)localObject5);
          sessionInvalidated = false;
          if (??? != null) {
            ((Session)???).close();
          }
          if (localObject5 == null) {
            break;
          }
          return (Session)localObject5;
          bool = false;
        }
      }
      localObject5 = null;
      Object localObject3 = null;
    }
  }
  
  @Deprecated
  public boolean isSessionValid()
  {
    return (getAccessToken() != null) && ((getAccessExpires() == 0L) || (System.currentTimeMillis() < getAccessExpires()));
  }
  
  @Deprecated
  public String logout(Context paramContext)
  {
    return logoutImpl(paramContext);
  }
  
  String logoutImpl(Context arg1)
  {
    checkUserSession("logout");
    ??? = new Bundle();
    ???.putString("method", "auth.expireSession");
    String str = request(???);
    long l = System.currentTimeMillis();
    synchronized (lock)
    {
      Session localSession = session;
      session = null;
      accessToken = null;
      accessExpiresMillisecondsAfterEpoch = 0L;
      lastAccessUpdateMillisecondsAfterEpoch = l;
      sessionInvalidated = false;
      if (localSession != null) {
        localSession.closeAndClearTokenInformation();
      }
      return str;
    }
  }
  
  @Deprecated
  public String request(Bundle paramBundle)
  {
    if (!paramBundle.containsKey("method")) {
      throw new IllegalArgumentException("API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/");
    }
    return requestImpl(null, paramBundle, "GET");
  }
  
  @Deprecated
  public String request(String paramString)
  {
    return requestImpl(paramString, new Bundle(), "GET");
  }
  
  @Deprecated
  public String request(String paramString, Bundle paramBundle)
  {
    return requestImpl(paramString, paramBundle, "GET");
  }
  
  @Deprecated
  public String request(String paramString1, Bundle paramBundle, String paramString2)
  {
    return requestImpl(paramString1, paramBundle, paramString2);
  }
  
  String requestImpl(String paramString1, Bundle paramBundle, String paramString2)
  {
    paramBundle.putString("format", "json");
    if (isSessionValid()) {
      paramBundle.putString("access_token", getAccessToken());
    }
    if (paramString1 != null) {}
    for (paramString1 = GRAPH_BASE_URL + paramString1;; paramString1 = RESTSERVER_URL) {
      return Util.openUrl(paramString1, paramString2, paramBundle);
    }
  }
  
  @Deprecated
  public void setAccessExpires(long paramLong)
  {
    checkUserSession("setAccessExpires");
    synchronized (lock)
    {
      accessExpiresMillisecondsAfterEpoch = paramLong;
      lastAccessUpdateMillisecondsAfterEpoch = System.currentTimeMillis();
      sessionInvalidated = true;
      return;
    }
  }
  
  @Deprecated
  public void setAccessExpiresIn(String paramString)
  {
    checkUserSession("setAccessExpiresIn");
    if (paramString != null) {
      if (!paramString.equals("0")) {
        break label29;
      }
    }
    label29:
    for (long l = 0L;; l = System.currentTimeMillis() + Long.parseLong(paramString) * 1000L)
    {
      setAccessExpires(l);
      return;
    }
  }
  
  @Deprecated
  public void setAccessToken(String paramString)
  {
    checkUserSession("setAccessToken");
    synchronized (lock)
    {
      accessToken = paramString;
      lastAccessUpdateMillisecondsAfterEpoch = System.currentTimeMillis();
      sessionInvalidated = true;
      return;
    }
  }
  
  @Deprecated
  public void setAppId(String paramString)
  {
    checkUserSession("setAppId");
    synchronized (lock)
    {
      mAppId = paramString;
      sessionInvalidated = true;
      return;
    }
  }
  
  @Deprecated
  public void setSession(Session paramSession)
  {
    if (paramSession == null) {
      throw new IllegalArgumentException("session cannot be null");
    }
    synchronized (lock)
    {
      userSetSession = paramSession;
      return;
    }
  }
  
  @Deprecated
  public void setTokenFromCache(String paramString, long paramLong1, long paramLong2)
  {
    checkUserSession("setTokenFromCache");
    synchronized (lock)
    {
      accessToken = paramString;
      accessExpiresMillisecondsAfterEpoch = paramLong1;
      lastAccessUpdateMillisecondsAfterEpoch = paramLong2;
      return;
    }
  }
  
  @Deprecated
  public boolean shouldExtendAccessToken()
  {
    checkUserSession("shouldExtendAccessToken");
    return (isSessionValid()) && (System.currentTimeMillis() - lastAccessUpdateMillisecondsAfterEpoch >= 86400000L);
  }
}

/* Location:
 * Qualified Name:     com.facebook.android.Facebook
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
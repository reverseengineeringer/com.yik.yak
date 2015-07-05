package com.parse;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.Session;
import com.facebook.Session.Builder;
import com.facebook.Session.OpenRequest;
import com.facebook.SessionDefaultAudience;
import com.facebook.SessionState;
import com.facebook.SharedPreferencesTokenCachingStrategy;
import com.facebook.TokenCachingStrategy;
import com.facebook.android.Facebook;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import org.json.JSONObject;

class FacebookAuthenticationProvider
  implements ParseAuthenticationProvider
{
  private static final String AUTH_TYPE_NAME = "facebook";
  public static final int DEFAULT_AUTH_ACTIVITY_CODE = 32665;
  private int activityCode;
  private Context applicationContext;
  protected String applicationId;
  private WeakReference<Activity> baseActivity;
  private ParseAuthenticationProvider.ParseAuthenticationCallback currentOperationCallback;
  private SessionDefaultAudience defaultAudience;
  private Facebook facebook;
  private Collection<String> permissions;
  private final DateFormat preciseDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.getDefault());
  private Session session;
  private String userId;
  
  public FacebookAuthenticationProvider(Context paramContext, String paramString)
  {
    preciseDateFormat.setTimeZone(new SimpleTimeZone(0, "GMT"));
    activityCode = 32665;
    applicationId = paramString;
    if (paramContext != null) {
      applicationContext = paramContext.getApplicationContext();
    }
    if (paramString != null) {
      facebook = new Facebook(paramString);
    }
  }
  
  private void handleCancel()
  {
    if (currentOperationCallback == null) {
      return;
    }
    try
    {
      currentOperationCallback.onCancel();
      return;
    }
    finally
    {
      currentOperationCallback = null;
    }
  }
  
  private void handleError(Throwable paramThrowable)
  {
    if (currentOperationCallback == null) {
      return;
    }
    try
    {
      currentOperationCallback.onError(paramThrowable);
      return;
    }
    finally
    {
      currentOperationCallback = null;
    }
  }
  
  /* Error */
  private void handleSuccess(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 105	com/parse/FacebookAuthenticationProvider:currentOperationCallback	Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    //   4: ifnonnull +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: aload_1
    //   10: putfield 90	com/parse/FacebookAuthenticationProvider:userId	Ljava/lang/String;
    //   13: aload_0
    //   14: aload_1
    //   15: aload_0
    //   16: getfield 122	com/parse/FacebookAuthenticationProvider:session	Lcom/facebook/Session;
    //   19: invokevirtual 128	com/facebook/Session:getAccessToken	()Ljava/lang/String;
    //   22: aload_0
    //   23: getfield 122	com/parse/FacebookAuthenticationProvider:session	Lcom/facebook/Session;
    //   26: invokevirtual 132	com/facebook/Session:getExpirationDate	()Ljava/util/Date;
    //   29: invokevirtual 136	com/parse/FacebookAuthenticationProvider:getAuthData	(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lorg/json/JSONObject;
    //   32: astore_1
    //   33: aload_0
    //   34: getfield 105	com/parse/FacebookAuthenticationProvider:currentOperationCallback	Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    //   37: aload_1
    //   38: invokeinterface 140 2 0
    //   43: aload_0
    //   44: aconst_null
    //   45: putfield 105	com/parse/FacebookAuthenticationProvider:currentOperationCallback	Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    //   48: return
    //   49: astore_1
    //   50: aload_0
    //   51: aload_1
    //   52: invokespecial 101	com/parse/FacebookAuthenticationProvider:handleError	(Ljava/lang/Throwable;)V
    //   55: return
    //   56: astore_1
    //   57: aload_0
    //   58: aconst_null
    //   59: putfield 105	com/parse/FacebookAuthenticationProvider:currentOperationCallback	Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    //   62: aload_1
    //   63: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	this	FacebookAuthenticationProvider
    //   0	64	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   13	33	49	org/json/JSONException
    //   33	43	56	finally
  }
  
  public void authenticate(ParseAuthenticationProvider.ParseAuthenticationCallback paramParseAuthenticationCallback)
  {
    for (;;)
    {
      try
      {
        if (currentOperationCallback != null) {
          cancel();
        }
        currentOperationCallback = paramParseAuthenticationCallback;
        if (baseActivity == null)
        {
          paramParseAuthenticationCallback = null;
          if (paramParseAuthenticationCallback != null) {
            break;
          }
          throw new IllegalStateException("Activity must be non-null for Facebook authentication to proceed.");
        }
      }
      finally {}
      paramParseAuthenticationCallback = (Activity)baseActivity.get();
    }
    int i = activityCode;
    session = new Session.Builder(paramParseAuthenticationCallback).setApplicationId(applicationId).setTokenCachingStrategy(new SharedPreferencesTokenCachingStrategy(paramParseAuthenticationCallback)).build();
    paramParseAuthenticationCallback = new Session.OpenRequest(paramParseAuthenticationCallback);
    paramParseAuthenticationCallback.setRequestCode(i);
    if (defaultAudience != null) {
      paramParseAuthenticationCallback.setDefaultAudience(defaultAudience);
    }
    if (permissions != null) {
      paramParseAuthenticationCallback.setPermissions(new ArrayList(permissions));
    }
    paramParseAuthenticationCallback.setCallback(new FacebookAuthenticationProvider.2(this));
    session.openForRead(paramParseAuthenticationCallback);
  }
  
  public void cancel()
  {
    try
    {
      handleCancel();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void deauthenticate()
  {
    restoreAuthentication(null);
  }
  
  @Deprecated
  public void extendAccessToken(Context paramContext, ParseAuthenticationProvider.ParseAuthenticationCallback paramParseAuthenticationCallback)
  {
    try
    {
      if (currentOperationCallback != null) {
        cancel();
      }
      currentOperationCallback = paramParseAuthenticationCallback;
      if (!facebook.extendAccessToken(paramContext, new FacebookAuthenticationProvider.1(this))) {
        handleCancel();
      }
      return;
    }
    finally {}
  }
  
  public int getActivityCode()
  {
    return activityCode;
  }
  
  public JSONObject getAuthData(String paramString1, String paramString2, Date paramDate)
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("id", paramString1);
    localJSONObject.put("access_token", paramString2);
    localJSONObject.put("expiration_date", preciseDateFormat.format(paramDate));
    return localJSONObject;
  }
  
  public String getAuthType()
  {
    return "facebook";
  }
  
  public Facebook getFacebook()
  {
    return facebook;
  }
  
  public Session getSession()
  {
    return session;
  }
  
  public String getUserId()
  {
    return userId;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Activity localActivity = (Activity)baseActivity.get();
    if (localActivity != null) {
      session.onActivityResult(localActivity, paramInt1, paramInt2, paramIntent);
    }
  }
  
  public boolean restoreAuthentication(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null)
    {
      if (facebook != null)
      {
        facebook.setAccessExpires(0L);
        facebook.setAccessToken(null);
      }
      session = null;
      return true;
    }
    try
    {
      Object localObject = paramJSONObject.getString("access_token");
      Date localDate = preciseDateFormat.parse(paramJSONObject.getString("expiration_date"));
      if (facebook != null)
      {
        facebook.setAccessToken((String)localObject);
        facebook.setAccessExpires(localDate.getTime());
      }
      localObject = new SharedPreferencesTokenCachingStrategy(applicationContext);
      Bundle localBundle = ((TokenCachingStrategy)localObject).load();
      TokenCachingStrategy.putToken(localBundle, paramJSONObject.getString("access_token"));
      TokenCachingStrategy.putExpirationDate(localBundle, localDate);
      ((TokenCachingStrategy)localObject).save(localBundle);
      paramJSONObject = new Session.Builder(applicationContext).setApplicationId(applicationId).setTokenCachingStrategy((TokenCachingStrategy)localObject).build();
      if (paramJSONObject.getState() == SessionState.CREATED_TOKEN_LOADED)
      {
        paramJSONObject.openForRead(null);
        session = paramJSONObject;
        Session.setActiveSession(session);
        return true;
      }
      session = null;
      return true;
    }
    catch (Exception paramJSONObject) {}
    return false;
  }
  
  public void setActivity(Activity paramActivity)
  {
    try
    {
      baseActivity = new WeakReference(paramActivity);
      return;
    }
    finally
    {
      paramActivity = finally;
      throw paramActivity;
    }
  }
  
  public void setActivityCode(int paramInt)
  {
    try
    {
      activityCode = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void setPermissions(Collection<String> paramCollection)
  {
    try
    {
      permissions = paramCollection;
      return;
    }
    finally
    {
      paramCollection = finally;
      throw paramCollection;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.FacebookAuthenticationProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
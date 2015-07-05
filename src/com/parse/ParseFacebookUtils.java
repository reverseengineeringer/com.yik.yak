package com.parse;

import R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.Session;
import com.facebook.android.Facebook;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Set;
import org.json.JSONException;

public final class ParseFacebookUtils
{
  private static boolean isInitialized;
  protected static FacebookAuthenticationProvider provider;
  
  private static void checkInitialization()
  {
    if (!isInitialized) {
      initialize();
    }
  }
  
  @Deprecated
  public static void extendAccessToken(ParseUser paramParseUser, Context paramContext, SaveCallback paramSaveCallback)
  {
    checkInitialization();
    provider.extendAccessToken(paramContext, new ParseFacebookUtils.1(paramParseUser, paramSaveCallback));
  }
  
  @Deprecated
  public static boolean extendAccessTokenIfNeeded(ParseUser paramParseUser, Context paramContext, SaveCallback paramSaveCallback)
  {
    if (shouldExtendAccessToken(paramParseUser))
    {
      extendAccessToken(paramParseUser, paramContext, paramSaveCallback);
      return true;
    }
    return false;
  }
  
  public static void finishAuthentication(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (provider != null) {
      provider.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
  }
  
  @Deprecated
  public static Facebook getFacebook()
  {
    if (provider == null) {
      throw new IllegalStateException("You must initialize ParseFacebookUtils before calling getFacebook()");
    }
    return provider.getFacebook();
  }
  
  public static Session getSession()
  {
    if (provider == null) {
      throw new IllegalStateException("You must initialize ParseFacebookUtils before calling getSession()");
    }
    return provider.getSession();
  }
  
  protected static void initialize()
  {
    String str = null;
    Bundle localBundle = ManifestInfo.getApplicationMetadata();
    if (localBundle != null) {
      str = localBundle.getString("com.facebook.sdk.ApplicationId");
    }
    initialize(str);
  }
  
  public static void initialize(String paramString)
  {
    if (Parse.applicationContext == null) {
      throw new IllegalStateException("You must call Parse.initialize() before using ParseFacebookUtils");
    }
    provider = new FacebookAuthenticationProvider(Parse.applicationContext, paramString);
    ParseUser.registerAuthenticationProvider(provider);
    isInitialized = true;
  }
  
  public static boolean isLinked(ParseUser paramParseUser)
  {
    return paramParseUser.getLinkedServiceNames().contains("facebook");
  }
  
  @Deprecated
  public static void link(ParseUser paramParseUser, Activity paramActivity)
  {
    linkInBackground(paramParseUser, paramActivity);
  }
  
  @Deprecated
  public static void link(ParseUser paramParseUser, Activity paramActivity, int paramInt)
  {
    linkInBackground(paramParseUser, paramActivity, paramInt);
  }
  
  public static void link(ParseUser paramParseUser, Activity paramActivity, int paramInt, SaveCallback paramSaveCallback)
  {
    link(paramParseUser, Collections.emptyList(), paramActivity, paramInt, paramSaveCallback);
  }
  
  public static void link(ParseUser paramParseUser, Activity paramActivity, SaveCallback paramSaveCallback)
  {
    link(paramParseUser, Collections.emptyList(), paramActivity, 32665, paramSaveCallback);
  }
  
  @Deprecated
  public static void link(ParseUser paramParseUser, String paramString1, String paramString2, Date paramDate)
  {
    linkInBackground(paramParseUser, paramString1, paramString2, paramDate);
  }
  
  public static void link(ParseUser paramParseUser, String paramString1, String paramString2, Date paramDate, SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(linkInBackground(paramParseUser, paramString1, paramString2, paramDate), paramSaveCallback);
  }
  
  @Deprecated
  public static void link(ParseUser paramParseUser, Collection<String> paramCollection, Activity paramActivity)
  {
    linkInBackground(paramParseUser, paramCollection, paramActivity);
  }
  
  @Deprecated
  public static void link(ParseUser paramParseUser, Collection<String> paramCollection, Activity paramActivity, int paramInt)
  {
    linkInBackground(paramParseUser, paramCollection, paramActivity, paramInt);
  }
  
  public static void link(ParseUser paramParseUser, Collection<String> paramCollection, Activity paramActivity, int paramInt, SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(linkInBackground(paramParseUser, paramCollection, paramActivity, paramInt), paramSaveCallback, true);
  }
  
  public static void link(ParseUser paramParseUser, Collection<String> paramCollection, Activity paramActivity, SaveCallback paramSaveCallback)
  {
    link(paramParseUser, paramCollection, paramActivity, 32665, paramSaveCallback);
  }
  
  public static R<Void> linkInBackground(ParseUser paramParseUser, Activity paramActivity)
  {
    return linkInBackground(paramParseUser, Collections.emptyList(), paramActivity, 32665);
  }
  
  public static R<Void> linkInBackground(ParseUser paramParseUser, Activity paramActivity, int paramInt)
  {
    return linkInBackground(paramParseUser, Collections.emptyList(), paramActivity, paramInt);
  }
  
  public static R<Void> linkInBackground(ParseUser paramParseUser, String paramString1, String paramString2, Date paramDate)
  {
    
    try
    {
      paramParseUser = paramParseUser.linkWithAsync(provider.getAuthType(), provider.getAuthData(paramString1, paramString2, paramDate));
      return paramParseUser;
    }
    catch (JSONException paramParseUser) {}
    return R.a(new ParseException(paramParseUser));
  }
  
  public static R<Void> linkInBackground(ParseUser paramParseUser, Collection<String> paramCollection, Activity paramActivity)
  {
    return linkInBackground(paramParseUser, paramCollection, paramActivity, 32665);
  }
  
  public static R<Void> linkInBackground(ParseUser paramParseUser, Collection<String> paramCollection, Activity paramActivity, int paramInt)
  {
    checkInitialization();
    provider.setActivity(paramActivity);
    provider.setActivityCode(paramInt);
    paramActivity = paramCollection;
    if (paramCollection == null) {
      paramActivity = Collections.emptyList();
    }
    provider.setPermissions(paramActivity);
    return paramParseUser.linkWithAsync(provider.getAuthType());
  }
  
  public static void logIn(Activity paramActivity, int paramInt, LogInCallback paramLogInCallback)
  {
    Parse.callbackOnMainThreadAsync(logInInBackground(Collections.emptyList(), paramActivity, paramInt), paramLogInCallback, true);
  }
  
  public static void logIn(Activity paramActivity, LogInCallback paramLogInCallback)
  {
    Parse.callbackOnMainThreadAsync(logInInBackground(Collections.emptyList(), paramActivity, 32665), paramLogInCallback, true);
  }
  
  public static void logIn(String paramString1, String paramString2, Date paramDate, LogInCallback paramLogInCallback)
  {
    Parse.callbackOnMainThreadAsync(logInInBackground(paramString1, paramString2, paramDate), paramLogInCallback);
  }
  
  public static void logIn(Collection<String> paramCollection, Activity paramActivity, int paramInt, LogInCallback paramLogInCallback)
  {
    Parse.callbackOnMainThreadAsync(logInInBackground(paramCollection, paramActivity, paramInt), paramLogInCallback, true);
  }
  
  public static void logIn(Collection<String> paramCollection, Activity paramActivity, LogInCallback paramLogInCallback)
  {
    Parse.callbackOnMainThreadAsync(logInInBackground(paramCollection, paramActivity, 32665), paramLogInCallback, true);
  }
  
  public static R<ParseUser> logInInBackground(String paramString1, String paramString2, Date paramDate)
  {
    
    try
    {
      paramString1 = ParseUser.logInWithAsync(provider.getAuthType(), provider.getAuthData(paramString1, paramString2, paramDate));
      return paramString1;
    }
    catch (JSONException paramString1) {}
    return R.a(new ParseException(paramString1));
  }
  
  public static R<ParseUser> logInInBackground(Collection<String> paramCollection, Activity paramActivity, int paramInt)
  {
    checkInitialization();
    provider.setActivity(paramActivity);
    provider.setActivityCode(paramInt);
    paramActivity = paramCollection;
    if (paramCollection == null) {
      paramActivity = Collections.emptyList();
    }
    provider.setPermissions(paramActivity);
    return ParseUser.logInWithAsync(provider.getAuthType());
  }
  
  @Deprecated
  public static void saveLatestSessionData(ParseUser paramParseUser)
  {
    saveLatestSessionDataInBackground(paramParseUser);
  }
  
  public static void saveLatestSessionData(ParseUser paramParseUser, SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(saveLatestSessionDataInBackground(paramParseUser), paramSaveCallback);
  }
  
  public static R<Void> saveLatestSessionDataInBackground(ParseUser paramParseUser)
  {
    
    if (!isLinked(paramParseUser)) {
      throw new IllegalStateException("The user must already be linked to Facebook.");
    }
    Session localSession = getSession();
    return linkInBackground(paramParseUser, provider.getUserId(), localSession.getAccessToken(), localSession.getExpirationDate());
  }
  
  @Deprecated
  public static boolean shouldExtendAccessToken(ParseUser paramParseUser)
  {
    return (paramParseUser != null) && (isLinked(paramParseUser)) && (getFacebook().shouldExtendAccessToken());
  }
  
  public static void unlink(ParseUser paramParseUser)
  {
    Parse.waitForTask(unlinkInBackground(paramParseUser));
  }
  
  public static R<Void> unlinkInBackground(ParseUser paramParseUser)
  {
    checkInitialization();
    return paramParseUser.unlinkFromAsync("facebook");
  }
  
  public static void unlinkInBackground(ParseUser paramParseUser, SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(unlinkInBackground(paramParseUser), paramSaveCallback);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFacebookUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
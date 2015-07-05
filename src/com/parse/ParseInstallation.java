package com.parse;

import R;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.TimeZone;
import java.util.UUID;
import org.json.JSONObject;

@ParseClassName("_Installation")
public class ParseInstallation
  extends ParseObject
{
  private static final String APP_IDENTIFIER = "appIdentifier";
  private static final String APP_NAME = "appName";
  static final String APP_VERSION = "appVersion";
  private static final String DEVICE_TOKEN = "deviceToken";
  private static final String DEVICE_TOKEN_LAST_MODIFIED = "deviceTokenLastModified";
  private static final String DEVICE_TYPE = "deviceType";
  private static final String INSTALLATION_ID = "installationId";
  static final String INSTALLATION_ID_LOCATION = "installationId";
  static final String OS_VERSION = "osVersion";
  private static final String PARSE_VERSION = "parseVersion";
  private static final String PIN_CURRENT_INSTALLATION = "_currentInstallation";
  private static final String PUSH_TYPE = "pushType";
  private static final String STORAGE_LOCATION = "currentInstallation";
  private static final String TAG = "com.parse.ParseInstallation";
  private static final String TIMEZONE = "timeZone";
  static ParseInstallation currentInstallation = null;
  static String installationId = null;
  private static final Object installationLock = new Object();
  private static final List<String> readonlyFields = Arrays.asList(new String[] { "deviceType", "installationId", "deviceToken", "pushType", "timeZone", "appVersion", "appName", "parseVersion", "deviceTokenLastModified", "appIdentifier" });
  
  static void clearCurrentInstallationFromDisk(Context paramContext)
  {
    synchronized (installationLock)
    {
      currentInstallation = null;
      installationId = null;
      if (OfflineStore.isEnabled()) {
        ParseObject.unpinAllInBackground("_currentInstallation");
      }
      Parse.deleteDiskObject(paramContext, "currentInstallation");
      Parse.deleteDiskObject(paramContext, "installationId");
      return;
    }
  }
  
  static void clearCurrentInstallationFromMemory()
  {
    synchronized (installationLock)
    {
      currentInstallation = null;
      return;
    }
  }
  
  public static ParseInstallation getCurrentInstallation()
  {
    int i = 0;
    for (;;)
    {
      synchronized (installationLock)
      {
        if (currentInstallation == null)
        {
          boolean bool = OfflineStore.isEnabled();
          if (bool) {
            try
            {
              ParseObject localParseObject1 = (ParseObject)Parse.waitForTask(ParseQuery.getQuery(ParseInstallation.class).fromPin("_currentInstallation").findInBackground((ParseUser)null).d(new ParseInstallation.1()));
              if (localParseObject1 != null) {
                continue;
              }
              currentInstallation = (ParseInstallation)ParseObject.create(ParseInstallation.class);
              currentInstallation.updateDeviceInfo();
              i = 0;
              if (i != 0) {
                currentInstallation.maybeUpdateInstallationIdOnDisk();
              }
              return currentInstallation;
            }
            catch (ParseException localParseException)
            {
              localParseObject2 = null;
              continue;
            }
          }
          ParseObject localParseObject2 = getFromDisk(Parse.applicationContext, "currentInstallation");
          continue;
          i = 1;
          currentInstallation = (ParseInstallation)localParseObject2;
          Parse.logV("com.parse.ParseInstallation", "Successfully deserialized Installation object");
        }
      }
    }
  }
  
  static String getOrCreateCurrentInstallationId()
  {
    synchronized (installationLock)
    {
      String str = installationId;
      if (str != null) {}
    }
    try
    {
      installationId = new String(ParseFileUtils.readFileToByteArray(new File(Parse.getParseDir(), "installationId")));
      if (installationId == null)
      {
        installationId = UUID.randomUUID().toString();
        setCurrentInstallationId(installationId);
      }
      return installationId;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      for (;;)
      {
        Parse.logI("com.parse.ParseInstallation", "Couldn't find existing installationId file. Creating one instead.");
      }
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        Parse.logE("com.parse.ParseInstallation", "Unexpected exception reading installation id from disk", localIOException);
      }
    }
  }
  
  public static ParseQuery<ParseInstallation> getQuery()
  {
    return ParseQuery.getQuery(ParseInstallation.class);
  }
  
  static boolean hasCurrentInstallation()
  {
    for (;;)
    {
      synchronized (installationLock)
      {
        if (currentInstallation == null)
        {
          if (!new File(Parse.getParseDir(), "currentInstallation").exists()) {
            break label47;
          }
          break label42;
          return bool;
        }
      }
      label42:
      boolean bool = true;
      continue;
      label47:
      bool = false;
    }
  }
  
  private static R<Void> maybeFlushToDiskAsync(ParseInstallation paramParseInstallation)
  {
    synchronized (installationLock)
    {
      int i;
      if (paramParseInstallation == currentInstallation)
      {
        i = 1;
        if (i == 0) {
          return R.a(null);
        }
      }
      else
      {
        i = 0;
      }
    }
    if (OfflineStore.isEnabled()) {}
    for (??? = ParseObject.unpinAllInBackground("_currentInstallation").b(new ParseInstallation.7(paramParseInstallation));; ??? = R.a(null).b(new ParseInstallation.8(paramParseInstallation))) {
      return ((R)???).b(new ParseInstallation.9(paramParseInstallation));
    }
  }
  
  private void maybeUpdateInstallationIdOnDisk()
  {
    String str1 = getInstallationId();
    String str2 = getOrCreateCurrentInstallationId();
    if ((str1 == null) || (str1.length() == 0)) {}
    for (int i = 1;; i = 0)
    {
      if ((i == 0) && (!str1.equals(str2)))
      {
        Parse.logW("com.parse.ParseInstallation", "Will update installation id on disk: " + str2 + " because it does not match installation id in ParseInstallation: " + str1);
        setCurrentInstallationId(str1);
      }
      return;
    }
  }
  
  static void setCurrentInstallationId(String paramString)
  {
    synchronized (installationLock)
    {
      File localFile = new File(Parse.getParseDir(), "installationId");
      try
      {
        ParseFileUtils.writeByteArrayToFile(localFile, paramString.getBytes());
        installationId = paramString;
        return;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          Parse.logE("com.parse.ParseInstallation", "Unexpected exception writing installation id to disk", localIOException);
        }
      }
    }
  }
  
  private void updateDeviceInfo()
  {
    if (!has("installationId")) {
      super.put("installationId", getOrCreateCurrentInstallationId());
    }
    if (!"android".equals(get("deviceType"))) {
      super.put("deviceType", "android");
    }
  }
  
  private void updateTimezone()
  {
    String str = TimeZone.getDefault().getID();
    if (((str.indexOf('/') > 0) || (str.equals("GMT"))) && (!str.equals(get("timeZone")))) {
      super.put("timeZone", str);
    }
  }
  
  private void updateVersionInfo()
  {
    synchronized (mutex)
    {
      try
      {
        String str1 = Parse.applicationContext.getPackageName();
        Object localObject3 = Parse.applicationContext.getPackageManager();
        String str2 = getPackageInfo0versionName;
        localObject3 = ((PackageManager)localObject3).getApplicationLabel(((PackageManager)localObject3).getApplicationInfo(str1, 0)).toString();
        if ((str1 != null) && (!str1.equals(get("appIdentifier")))) {
          super.put("appIdentifier", str1);
        }
        if ((localObject3 != null) && (!((String)localObject3).equals(get("appName")))) {
          super.put("appName", localObject3);
        }
        if ((str2 != null) && (!str2.equals(get("appVersion")))) {
          super.put("appVersion", str2);
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        for (;;)
        {
          Parse.logW("com.parse.ParseInstallation", "Cannot load package info; will not be saved to installation");
        }
      }
      if (!"1.7.1".equals(get("parseVersion"))) {
        super.put("parseVersion", "1.7.1");
      }
      return;
    }
  }
  
  void checkKeyIsMutable(String paramString)
  {
    synchronized (mutex)
    {
      if (readonlyFields.contains(paramString)) {
        throw new IllegalArgumentException("Cannot change " + paramString + " property of an installation object.");
      }
    }
  }
  
  <T extends ParseObject> R<T> fetchAsync(R<Void> paramR)
  {
    synchronized (mutex)
    {
      if (getObjectId() == null)
      {
        localR = saveAsync(paramR);
        paramR = localR.d(new ParseInstallation.2(this, paramR));
        return paramR;
      }
      R localR = R.a(null);
    }
  }
  
  String getDeviceToken()
  {
    return super.getString("deviceToken");
  }
  
  public String getInstallationId()
  {
    return getString("installationId");
  }
  
  PushType getPushType()
  {
    return PushType.fromString(super.getString("pushType"));
  }
  
  R<Void> handleFetchResultAsync(JSONObject paramJSONObject)
  {
    return super.handleFetchResultAsync(paramJSONObject).d(new ParseInstallation.6(this));
  }
  
  R<Void> handleSaveResultAsync(JSONObject paramJSONObject, ParseOperationSet paramParseOperationSet)
  {
    paramParseOperationSet = super.handleSaveResultAsync(paramJSONObject, paramParseOperationSet);
    paramJSONObject = paramParseOperationSet;
    if (ManifestInfo.getPushUsesBroadcastReceivers()) {
      paramJSONObject = paramParseOperationSet.d(new ParseInstallation.4(this)).c(new ParseInstallation.3(this));
    }
    return paramJSONObject.d(new ParseInstallation.5(this));
  }
  
  boolean isDeviceTokenStale()
  {
    return super.getLong("deviceTokenLastModified") != ManifestInfo.getLastModified();
  }
  
  boolean needsDefaultACL()
  {
    return false;
  }
  
  public void put(String paramString, Object paramObject)
  {
    synchronized (mutex)
    {
      checkKeyIsMutable(paramString);
      super.put(paramString, paramObject);
      return;
    }
  }
  
  public void remove(String paramString)
  {
    synchronized (mutex)
    {
      checkKeyIsMutable(paramString);
      super.remove(paramString);
      return;
    }
  }
  
  void removeDeviceToken()
  {
    super.remove("deviceToken");
    super.remove("deviceTokenLastModified");
  }
  
  void removePushType()
  {
    super.remove("pushType");
  }
  
  void setDefaultValues()
  {
    super.setDefaultValues();
    super.put("deviceType", "android");
    super.put("installationId", getOrCreateCurrentInstallationId());
  }
  
  void setDeviceToken(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
    {
      super.put("deviceToken", paramString);
      super.put("deviceTokenLastModified", Long.valueOf(ManifestInfo.getLastModified()));
    }
  }
  
  void setDeviceTokenLastModified(long paramLong)
  {
    super.put("deviceTokenLastModified", Long.valueOf(paramLong));
  }
  
  void setPushType(PushType paramPushType)
  {
    if (paramPushType != null) {
      super.put("pushType", paramPushType.toString());
    }
  }
  
  void updateBeforeSave()
  {
    super.updateBeforeSave();
    updateTimezone();
    updateVersionInfo();
    updateDeviceInfo();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseInstallation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
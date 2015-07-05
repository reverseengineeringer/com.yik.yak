package com.parse;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ManifestInfo
{
  private static final Integer NUMBER_OF_PUSH_INTENTS = Integer.valueOf(3);
  private static final String TAG = "com.parse.ManifestInfo";
  private static String displayName = null;
  private static int iconId;
  private static long lastModified;
  private static Object lock = new Object();
  private static PushType pushType;
  private static Boolean pushUsesBroadcastReceivers = null;
  private static int versionCode;
  private static String versionName;
  
  static
  {
    lastModified = -1L;
    versionCode = -1;
    versionName = null;
    iconId = 0;
  }
  
  private static boolean checkReceiver(Class<? extends BroadcastReceiver> paramClass, String paramString, Intent[] paramArrayOfIntent)
  {
    ActivityInfo localActivityInfo = getReceiverInfo(paramClass);
    if (localActivityInfo == null) {}
    while ((paramString != null) && (!paramString.equals(permission))) {
      return false;
    }
    int j = paramArrayOfIntent.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label78;
      }
      paramString = paramArrayOfIntent[i];
      paramString = getPackageManager().queryBroadcastReceivers(paramString, 0);
      if ((paramString.isEmpty()) || (!checkResolveInfo(paramClass, paramString))) {
        break;
      }
      i += 1;
    }
    label78:
    return true;
  }
  
  private static boolean checkResolveInfo(Class<? extends BroadcastReceiver> paramClass, List<ResolveInfo> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)paramList.next();
      if ((activityInfo != null) && (paramClass.getCanonicalName().equals(activityInfo.name))) {
        return true;
      }
    }
    return false;
  }
  
  private static boolean deviceSupportsGcm()
  {
    return (Build.VERSION.SDK_INT >= 8) && (getPackageInfo("com.google.android.gsf") != null);
  }
  
  private static ManifestInfo.ManifestCheckResult gcmSupportLevel()
  {
    if (getServiceInfo(PushService.class) == null) {
      return ManifestInfo.ManifestCheckResult.MISSING_REQUIRED_DECLARATIONS;
    }
    if (!hasPermissions(new String[] { "android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK", "android.permission.GET_ACCOUNTS", "com.google.android.c2dm.permission.RECEIVE", getPackageName() + ".permission.C2D_MESSAGE" })) {
      return ManifestInfo.ManifestCheckResult.MISSING_REQUIRED_DECLARATIONS;
    }
    String str = getPackageName();
    if (!checkReceiver(GcmBroadcastReceiver.class, "com.google.android.c2dm.permission.SEND", new Intent[] { new Intent("com.google.android.c2dm.intent.RECEIVE").setPackage(str).addCategory(str), new Intent("com.google.android.c2dm.intent.REGISTRATION").setPackage(str).addCategory(str) })) {
      return ManifestInfo.ManifestCheckResult.MISSING_REQUIRED_DECLARATIONS;
    }
    if (!hasPermissions(new String[] { "android.permission.VIBRATE" })) {
      return ManifestInfo.ManifestCheckResult.MISSING_OPTIONAL_DECLARATIONS;
    }
    return ManifestInfo.ManifestCheckResult.HAS_ALL_DECLARATIONS;
  }
  
  private static ApplicationInfo getApplicationInfo()
  {
    return getContext().getApplicationInfo();
  }
  
  private static ApplicationInfo getApplicationInfo(int paramInt)
  {
    try
    {
      ApplicationInfo localApplicationInfo = getPackageManager().getApplicationInfo(getPackageName(), paramInt);
      return localApplicationInfo;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return null;
  }
  
  public static Bundle getApplicationMetadata()
  {
    return getApplicationInfo128metaData;
  }
  
  private static Context getContext()
  {
    return Parse.getApplicationContext();
  }
  
  public static String getDisplayName()
  {
    synchronized (lock)
    {
      if (displayName == null) {
        displayName = getPackageManager().getApplicationLabel(getApplicationInfo()).toString();
      }
      return displayName;
    }
  }
  
  private static String getGcmManifestMessage()
  {
    String str = getPackageName() + ".permission.C2D_MESSAGE";
    return "make sure that these permissions are declared as children of the root <manifest> element:\n\n<uses-permission android:name=\"android.permission.INTERNET\" />\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />\n<uses-permission android:name=\"android.permission.VIBRATE\" />\n<uses-permission android:name=\"android.permission.WAKE_LOCK\" />\n<uses-permission android:name=\"android.permission.GET_ACCOUNTS\" />\n<uses-permission android:name=\"com.google.android.c2dm.permission.RECEIVE\" />\n<permission android:name=\"" + str + "\" " + "android:protectionLevel=\"signature\" />\n" + "<uses-permission android:name=\"" + str + "\" />\n" + "\n" + "Also, please make sure that these services and broadcast receivers are declared as " + "children of the <application> element:\n" + "\n" + "<service android:name=\"com.parse.PushService\" />\n" + "<receiver android:name=\"com.parse.GcmBroadcastReceiver\" " + "android:permission=\"com.google.android.c2dm.permission.SEND\">\n" + "  <intent-filter>\n" + "    <action android:name=\"com.google.android.c2dm.intent.RECEIVE\" />\n" + "    <action android:name=\"com.google.android.c2dm.intent.REGISTRATION\" />\n" + "    <category android:name=\"" + getPackageName() + "\" />\n" + "  </intent-filter>\n" + "</receiver>\n";
  }
  
  public static int getIconId()
  {
    synchronized (lock)
    {
      if (iconId == 0) {
        iconId = getApplicationInfoicon;
      }
      return iconId;
    }
  }
  
  static List<ResolveInfo> getIntentReceivers(String... paramVarArgs)
  {
    String str1 = getPackageName();
    ArrayList localArrayList = new ArrayList();
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      String str2 = paramVarArgs[i];
      localArrayList.addAll(getPackageManager().queryBroadcastReceivers(new Intent(str2), 32));
      i += 1;
    }
    i = localArrayList.size() - 1;
    while (i >= 0)
    {
      if (!getactivityInfo.packageName.equals(str1)) {
        localArrayList.remove(i);
      }
      i -= 1;
    }
    return localArrayList;
  }
  
  public static long getLastModified()
  {
    synchronized (lock)
    {
      if (lastModified == -1L) {
        lastModified = new File(getApplicationInfosourceDir).lastModified();
      }
      return lastModified;
    }
  }
  
  public static String getNonePushTypeLogMessage()
  {
    synchronized (lock)
    {
      if (pushType == PushType.NONE)
      {
        String str = "Push is not configured for this app because the app manifest is missing required declarations. Please add the following declarations to your app manifest to support either GCM or PPNS for push (or both). To enable GCM support, please " + getGcmManifestMessage() + "To enable PPNS support, please " + getPpnsManifestMessage();
        return str;
      }
      return "";
    }
  }
  
  private static PackageInfo getPackageInfo(String paramString)
  {
    try
    {
      paramString = getPackageManager().getPackageInfo(paramString, 0);
      return paramString;
    }
    catch (PackageManager.NameNotFoundException paramString) {}
    return null;
  }
  
  private static PackageManager getPackageManager()
  {
    return getContext().getPackageManager();
  }
  
  private static String getPackageName()
  {
    return getContext().getPackageName();
  }
  
  private static String getPpnsManifestMessage()
  {
    return "make sure that these permissions are declared as children of the root <manifest> element:\n\n<uses-permission android:name=\"android.permission.INTERNET\" />\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />\n<uses-permission android:name=\"android.permission.RECEIVE_BOOT_COMPLETED\" />\n<uses-permission android:name=\"android.permission.VIBRATE\" />\n<uses-permission android:name=\"android.permission.WAKE_LOCK\" />\n\nAlso, please make sure that these services and broadcast receivers are declared as children of the <application> element:\n\n<service android:name=\"com.parse.PushService\" />\n<receiver android:name=\"com.parse.ParseBroadcastReceiver\">\n  <intent-filter>\n    <action android:name=\"android.intent.action.BOOT_COMPLETED\" />\n    <action android:name=\"android.intent.action.USER_PRESENT\" />\n  </intent-filter>\n</receiver>\n";
  }
  
  public static PushType getPushType()
  {
    for (;;)
    {
      ManifestInfo.ManifestCheckResult localManifestCheckResult2;
      synchronized (lock)
      {
        boolean bool1;
        boolean bool2;
        if (pushType == null)
        {
          bool1 = deviceSupportsGcm();
          bool2 = hasAnyGcmSpecificDeclaration();
          ManifestInfo.ManifestCheckResult localManifestCheckResult1 = gcmSupportLevel();
          localManifestCheckResult2 = ppnsSupportLevel();
          if ((!bool1) || (localManifestCheckResult1 == ManifestInfo.ManifestCheckResult.MISSING_REQUIRED_DECLARATIONS)) {
            continue;
          }
          pushType = PushType.GCM;
          if (Parse.getLogLevel() <= 5)
          {
            if ((pushType != PushType.GCM) || (localManifestCheckResult1 != ManifestInfo.ManifestCheckResult.MISSING_OPTIONAL_DECLARATIONS)) {
              break label267;
            }
            Parse.logW("com.parse.ManifestInfo", "Using GCM for push, but the app manifest is missing some optional declarations that should be added for maximum reliability. Please " + getGcmManifestMessage());
          }
          if ((Parse.getLogLevel() <= 6) && (pushType == PushType.NONE) && (bool2))
          {
            if (!bool1) {
              Parse.logE("com.parse.ManifestInfo", "Cannot use GCM for push on this device because Google Play Services is not installed. Install Google Play Service from the Play Store, or enable PPNS as a fallback push service. To enable PPNS as a fallback push service on devices without Google Play support, please " + getPpnsManifestMessage());
            }
            if (localManifestCheckResult1 != ManifestInfo.ManifestCheckResult.HAS_ALL_DECLARATIONS) {
              Parse.logE("com.parse.ManifestInfo", "Cannot use GCM for push because the app manifest is missing some required declarations. Please " + getGcmManifestMessage());
            }
          }
          if (Parse.getLogLevel() <= 2) {
            Parse.logV("com.parse.ManifestInfo", "Using " + pushType + " for push.");
          }
        }
        return pushType;
        if (((!bool2) || (!bool1)) && (localManifestCheckResult2 != ManifestInfo.ManifestCheckResult.MISSING_REQUIRED_DECLARATIONS)) {
          pushType = PushType.PPNS;
        }
      }
      pushType = PushType.NONE;
      continue;
      label267:
      if ((pushType == PushType.PPNS) && (localManifestCheckResult2 == ManifestInfo.ManifestCheckResult.MISSING_OPTIONAL_DECLARATIONS)) {
        Parse.logW("com.parse.ManifestInfo", "Using PPNS for push, but the app manifest is missing some optional declarations that should be added for maximum reliability. Please " + getPpnsManifestMessage());
      }
    }
  }
  
  static boolean getPushUsesBroadcastReceivers()
  {
    if (pushUsesBroadcastReceivers != null) {
      return pushUsesBroadcastReceivers.booleanValue();
    }
    Object localObject2 = Integer.valueOf(0);
    Object localObject1 = localObject2;
    if (hasIntentReceiver("com.parse.push.intent.RECEIVE")) {
      localObject1 = Integer.valueOf(((Integer)localObject2).intValue() + 1);
    }
    localObject2 = localObject1;
    if (hasIntentReceiver("com.parse.push.intent.OPEN")) {
      localObject2 = Integer.valueOf(((Integer)localObject1).intValue() + 1);
    }
    localObject1 = localObject2;
    if (hasIntentReceiver("com.parse.push.intent.DELETE")) {
      localObject1 = Integer.valueOf(((Integer)localObject2).intValue() + 1);
    }
    if ((((Integer)localObject1).intValue() != 0) && (localObject1 != NUMBER_OF_PUSH_INTENTS)) {
      throw new SecurityException("The Parse Push BroadcastReceiver must implement a filter for all of com.parse.push.intent.RECEIVE, com.parse.push.intent.OPEN, and com.parse.push.intent.DELETE");
    }
    if (localObject1 == NUMBER_OF_PUSH_INTENTS) {}
    for (boolean bool = true;; bool = false)
    {
      pushUsesBroadcastReceivers = Boolean.valueOf(bool);
      return pushUsesBroadcastReceivers.booleanValue();
    }
  }
  
  private static ActivityInfo getReceiverInfo(Class<? extends BroadcastReceiver> paramClass)
  {
    try
    {
      paramClass = getPackageManager().getReceiverInfo(new ComponentName(getContext(), paramClass), 0);
      return paramClass;
    }
    catch (PackageManager.NameNotFoundException paramClass) {}
    return null;
  }
  
  private static ServiceInfo getServiceInfo(Class<? extends Service> paramClass)
  {
    try
    {
      paramClass = getPackageManager().getServiceInfo(new ComponentName(getContext(), paramClass), 0);
      return paramClass;
    }
    catch (PackageManager.NameNotFoundException paramClass) {}
    return null;
  }
  
  public static int getVersionCode()
  {
    synchronized (lock)
    {
      int i = versionCode;
      if (i == -1) {}
      try
      {
        versionCode = getPackageManagergetPackageInfogetPackageName0versionCode;
        return versionCode;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        for (;;)
        {
          Parse.logE("com.parse.ManifestInfo", "Couldn't find info about own package", localNameNotFoundException);
        }
      }
    }
  }
  
  public static String getVersionName()
  {
    synchronized (lock)
    {
      String str = versionName;
      if (str == null) {}
      try
      {
        versionName = getPackageManagergetPackageInfogetPackageName0versionName;
        return versionName;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        for (;;)
        {
          Parse.logE("com.parse.ManifestInfo", "Couldn't find info about own package", localNameNotFoundException);
        }
      }
    }
  }
  
  private static boolean hasAnyGcmSpecificDeclaration()
  {
    boolean bool = false;
    if (!hasPermissions(new String[] { "com.google.android.c2dm.permission.RECEIVE" }))
    {
      if ((!hasPermissions(new String[] { getPackageName() + ".permission.C2D_MESSAGE" })) && (getReceiverInfo(GcmBroadcastReceiver.class) == null)) {}
    }
    else {
      bool = true;
    }
    return bool;
  }
  
  static boolean hasIntentReceiver(String paramString)
  {
    return !getIntentReceivers(new String[] { paramString }).isEmpty();
  }
  
  private static boolean hasPermissions(String... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      String str = paramVarArgs[i];
      if (getPackageManager().checkPermission(str, getPackageName()) != 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private static ManifestInfo.ManifestCheckResult ppnsSupportLevel()
  {
    if (getServiceInfo(PushService.class) == null) {
      return ManifestInfo.ManifestCheckResult.MISSING_REQUIRED_DECLARATIONS;
    }
    if (!hasPermissions(new String[] { "android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.VIBRATE", "android.permission.WAKE_LOCK", "android.permission.RECEIVE_BOOT_COMPLETED" })) {
      return ManifestInfo.ManifestCheckResult.MISSING_OPTIONAL_DECLARATIONS;
    }
    if (!checkReceiver(ParseBroadcastReceiver.class, null, new Intent[] { new Intent("android.intent.action.BOOT_COMPLETED").setPackage(getPackageName()), new Intent("android.intent.action.USER_PRESENT").setPackage(getPackageName()) })) {
      return ManifestInfo.ManifestCheckResult.MISSING_OPTIONAL_DECLARATIONS;
    }
    return ManifestInfo.ManifestCheckResult.HAS_ALL_DECLARATIONS;
  }
  
  static void setPushType(PushType paramPushType)
  {
    synchronized (lock)
    {
      pushType = paramPushType;
      return;
    }
  }
  
  public static void setPushUsesBroadcastReceivers(boolean paramBoolean)
  {
    pushUsesBroadcastReceivers = Boolean.valueOf(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.parse.ManifestInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
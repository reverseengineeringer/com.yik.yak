package com.google.android.gms.common;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.TypedValue;
import fI;
import fJ;
import hX;
import hY;
import iB;
import iU;
import iX;
import im;
import java.io.InputStream;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.Set;

public final class GooglePlayServicesUtil
{
  public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
  public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
  public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 6587000;
  public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
  public static boolean Jg = false;
  public static boolean Jh = false;
  private static int Ji = -1;
  private static final Object Jj = new Object();
  
  public static void C(Context paramContext)
  {
    int i = isGooglePlayServicesAvailable(paramContext);
    if (i != 0)
    {
      paramContext = aj(i);
      new StringBuilder().append("GooglePlayServices not available due to error ").append(i).toString();
      if (paramContext == null) {
        throw new GooglePlayServicesNotAvailableException(i);
      }
      throw new GooglePlayServicesRepairableException(i, "Google Play Services not available", paramContext);
    }
  }
  
  private static void D(Context paramContext)
  {
    Object localObject = null;
    int i;
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      paramContext = metaData;
      if (paramContext == null) {
        break label107;
      }
      i = paramContext.getInt("com.google.android.gms.version");
      if (i == 6587000) {
        return;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        Log.wtf("GooglePlayServicesUtil", "This should never happen.", paramContext);
        paramContext = (Context)localObject;
      }
    }
    throw new IllegalStateException("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected 6587000 but found " + i + ".  You must have the" + " following declaration within the <application> element: " + "    <meta-data android:name=\"" + "com.google.android.gms.version" + "\" android:value=\"@integer/google_play_services_version\" />");
    label107:
    throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
  }
  
  private static void E(Context paramContext)
  {
    paramContext = new GooglePlayServicesUtil.a(paramContext);
    paramContext.sendMessageDelayed(paramContext.obtainMessage(1), 120000L);
  }
  
  private static String F(Context paramContext)
  {
    Object localObject2 = getApplicationInfoname;
    Object localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2))
    {
      localObject1 = paramContext.getPackageName();
      localObject2 = paramContext.getApplicationContext().getPackageManager();
    }
    try
    {
      paramContext = ((PackageManager)localObject2).getApplicationInfo(paramContext.getPackageName(), 0);
      if (paramContext != null) {
        localObject1 = ((PackageManager)localObject2).getApplicationLabel(paramContext).toString();
      }
      return (String)localObject1;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext = null;
      }
    }
  }
  
  private static Dialog a(int paramInt1, Activity paramActivity, Fragment paramFragment, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    int i = paramInt1;
    if (iU.a(paramActivity))
    {
      i = paramInt1;
      if (paramInt1 == 2) {
        i = 42;
      }
    }
    if (iX.c())
    {
      localObject1 = new TypedValue();
      paramActivity.getTheme().resolveAttribute(16843529, (TypedValue)localObject1, true);
      if (!"Theme.Dialog.Alert".equals(paramActivity.getResources().getResourceEntryName(resourceId))) {}
    }
    for (Object localObject1 = new AlertDialog.Builder(paramActivity, 5);; localObject1 = null)
    {
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new AlertDialog.Builder(paramActivity);
      }
      ((AlertDialog.Builder)localObject2).setMessage(b(paramActivity, i));
      if (paramOnCancelListener != null) {
        ((AlertDialog.Builder)localObject2).setOnCancelListener(paramOnCancelListener);
      }
      paramOnCancelListener = aj(i);
      if (paramFragment == null) {}
      for (paramFragment = new hY(paramActivity, paramOnCancelListener, paramInt2);; paramFragment = new hY(paramFragment, paramOnCancelListener, paramInt2))
      {
        paramActivity = c(paramActivity, i);
        if (paramActivity != null) {
          ((AlertDialog.Builder)localObject2).setPositiveButton(paramActivity, paramFragment);
        }
        switch (i)
        {
        default: 
          new StringBuilder().append("Unexpected error code ").append(i).toString();
          return ((AlertDialog.Builder)localObject2).create();
        }
      }
      return null;
      return ((AlertDialog.Builder)localObject2).create();
      return ((AlertDialog.Builder)localObject2).setTitle(fJ.common_google_play_services_install_title).create();
      return ((AlertDialog.Builder)localObject2).setTitle(fJ.common_google_play_services_enable_title).create();
      return ((AlertDialog.Builder)localObject2).setTitle(fJ.common_google_play_services_update_title).create();
      return ((AlertDialog.Builder)localObject2).setTitle(fJ.common_android_wear_update_title).create();
      return ((AlertDialog.Builder)localObject2).setTitle(fJ.common_google_play_services_unsupported_title).create();
      return ((AlertDialog.Builder)localObject2).setTitle(fJ.common_google_play_services_network_error_title).create();
      return ((AlertDialog.Builder)localObject2).create();
      return ((AlertDialog.Builder)localObject2).create();
      return ((AlertDialog.Builder)localObject2).setTitle(fJ.common_google_play_services_invalid_account_title).create();
      return ((AlertDialog.Builder)localObject2).create();
    }
  }
  
  private static void a(int paramInt, Context paramContext)
  {
    Object localObject = paramContext.getResources();
    String str1 = d(paramContext, paramInt);
    String str2 = ((Resources)localObject).getString(fJ.common_google_play_services_error_notification_requested_by_msg, new Object[] { F(paramContext) });
    PendingIntent localPendingIntent = getErrorPendingIntent(paramInt, paramContext, 0);
    if (iU.a(paramContext))
    {
      iB.a(iX.d());
      localObject = new Notification.Builder(paramContext).setSmallIcon(fI.common_ic_googleplayservices).setPriority(2).setAutoCancel(true).setStyle(new Notification.BigTextStyle().bigText(str1 + " " + str2)).addAction(fI.common_full_open_on_phone, ((Resources)localObject).getString(fJ.common_open_on_phone), localPendingIntent).build();
    }
    for (;;)
    {
      ((NotificationManager)paramContext.getSystemService("notification")).notify(ak(paramInt), (Notification)localObject);
      return;
      localObject = new Notification(17301642, ((Resources)localObject).getString(fJ.common_google_play_services_notification_ticker), System.currentTimeMillis());
      flags |= 0x10;
      ((Notification)localObject).setLatestEventInfo(paramContext, str1, str2, localPendingIntent);
    }
  }
  
  public static boolean a(PackageManager paramPackageManager, PackageInfo paramPackageInfo)
  {
    boolean bool1 = true;
    boolean bool3 = false;
    boolean bool2 = false;
    if (paramPackageInfo == null) {}
    do
    {
      return bool2;
      if (c(paramPackageManager))
      {
        if (a(paramPackageInfo, true) != null) {}
        for (;;)
        {
          return bool1;
          bool1 = false;
        }
      }
      bool1 = bool3;
      if (a(paramPackageInfo, false) != null) {
        bool1 = true;
      }
      bool2 = bool1;
    } while (bool1);
    a(paramPackageInfo, true);
    return bool1;
  }
  
  public static boolean a(Resources paramResources)
  {
    if (paramResources == null) {}
    for (;;)
    {
      return false;
      if ((getConfigurationscreenLayout & 0xF) > 3) {}
      for (int i = 1; ((iX.a()) && (i != 0)) || (b(paramResources)); i = 0) {
        return true;
      }
    }
  }
  
  private static byte[] a(PackageInfo paramPackageInfo, boolean paramBoolean)
  {
    if (signatures.length != 1) {
      return null;
    }
    byte[] arrayOfByte = signatures[0].toByteArray();
    if (paramBoolean) {}
    for (paramPackageInfo = b.gu(); paramPackageInfo.contains(arrayOfByte); paramPackageInfo = b.gv()) {
      return arrayOfByte;
    }
    if (Log.isLoggable("GooglePlayServicesUtil", 2)) {
      new StringBuilder().append("Signature not valid.  Found: \n").append(Base64.encodeToString(arrayOfByte, 0)).toString();
    }
    return null;
  }
  
  private static byte[] a(PackageInfo paramPackageInfo, byte[]... paramVarArgs)
  {
    if (signatures.length != 1) {
      return null;
    }
    paramPackageInfo = signatures[0].toByteArray();
    int i = 0;
    while (i < paramVarArgs.length)
    {
      byte[] arrayOfByte = paramVarArgs[i];
      if (Arrays.equals(arrayOfByte, paramPackageInfo)) {
        return arrayOfByte;
      }
      i += 1;
    }
    if (Log.isLoggable("GooglePlayServicesUtil", 2)) {
      new StringBuilder().append("Signature not valid.  Found: \n").append(Base64.encodeToString(paramPackageInfo, 0)).toString();
    }
    return null;
  }
  
  public static Intent aj(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
    case 2: 
      return im.b("com.google.android.gms");
    case 42: 
      return im.a();
    }
    return im.a("com.google.android.gms");
  }
  
  private static int ak(int paramInt)
  {
    switch (paramInt)
    {
    case 2: 
    default: 
      return 39789;
    }
    return 10436;
  }
  
  public static String b(Context paramContext, int paramInt)
  {
    Resources localResources = paramContext.getResources();
    switch (paramInt)
    {
    default: 
      return localResources.getString(fJ.common_google_play_services_unknown_issue);
    case 1: 
      if (a(paramContext.getResources())) {
        return localResources.getString(fJ.common_google_play_services_install_text_tablet);
      }
      return localResources.getString(fJ.common_google_play_services_install_text_phone);
    case 3: 
      return localResources.getString(fJ.common_google_play_services_enable_text);
    case 2: 
      return localResources.getString(fJ.common_google_play_services_update_text);
    case 42: 
      return localResources.getString(fJ.common_android_wear_update_text);
    case 9: 
      return localResources.getString(fJ.common_google_play_services_unsupported_text);
    case 7: 
      return localResources.getString(fJ.common_google_play_services_network_error_text);
    }
    return localResources.getString(fJ.common_google_play_services_invalid_account_text);
  }
  
  public static boolean b(PackageManager paramPackageManager)
  {
    synchronized (Jj)
    {
      int i = Ji;
      if (i == -1) {}
      try
      {
        if (a(paramPackageManager.getPackageInfo("com.google.android.gms", 64), new byte[][] { b.Jc[1] }) != null) {}
        for (Ji = 1; Ji != 0; Ji = 0) {
          return true;
        }
      }
      catch (PackageManager.NameNotFoundException paramPackageManager)
      {
        for (;;)
        {
          Ji = 0;
        }
      }
    }
    return false;
  }
  
  public static boolean b(PackageManager paramPackageManager, String paramString)
  {
    try
    {
      PackageInfo localPackageInfo = paramPackageManager.getPackageInfo(paramString, 64);
      return a(paramPackageManager, localPackageInfo);
    }
    catch (PackageManager.NameNotFoundException paramPackageManager)
    {
      if (Log.isLoggable("GooglePlayServicesUtil", 3)) {
        new StringBuilder().append("Package manager can't find package ").append(paramString).append(", defaulting to false").toString();
      }
    }
    return false;
  }
  
  private static boolean b(Resources paramResources)
  {
    boolean bool2 = false;
    paramResources = paramResources.getConfiguration();
    boolean bool1 = bool2;
    if (iX.b())
    {
      bool1 = bool2;
      if ((screenLayout & 0xF) <= 3)
      {
        bool1 = bool2;
        if (smallestScreenWidthDp >= 600) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public static String c(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getResources();
    switch (paramInt)
    {
    default: 
      return paramContext.getString(17039370);
    case 1: 
      return paramContext.getString(fJ.common_google_play_services_install_button);
    case 3: 
      return paramContext.getString(fJ.common_google_play_services_enable_button);
    }
    return paramContext.getString(fJ.common_google_play_services_update_button);
  }
  
  public static boolean c(PackageManager paramPackageManager)
  {
    return (b(paramPackageManager)) || (!gw());
  }
  
  public static String d(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getResources();
    switch (paramInt)
    {
    default: 
      return paramContext.getString(fJ.common_google_play_services_unknown_issue);
    case 1: 
      return paramContext.getString(fJ.common_google_play_services_notification_needs_installation_title);
    case 2: 
      return paramContext.getString(fJ.common_google_play_services_notification_needs_update_title);
    case 42: 
      return paramContext.getString(fJ.common_android_wear_notification_needs_update_text);
    case 3: 
      return paramContext.getString(fJ.common_google_play_services_needs_enabling_title);
    case 9: 
      return paramContext.getString(fJ.common_google_play_services_unsupported_text);
    case 7: 
      return paramContext.getString(fJ.common_google_play_services_network_error_text);
    }
    return paramContext.getString(fJ.common_google_play_services_invalid_account_text);
  }
  
  public static boolean e(Context paramContext, int paramInt)
  {
    if (paramInt == 1)
    {
      paramContext = paramContext.getPackageManager();
      try
      {
        boolean bool = getApplicationInfo"com.google.android.gms"8192enabled;
        if (bool) {
          return true;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
    return false;
  }
  
  public static Dialog getErrorDialog(int paramInt1, Activity paramActivity, int paramInt2)
  {
    return getErrorDialog(paramInt1, paramActivity, paramInt2, null);
  }
  
  public static Dialog getErrorDialog(int paramInt1, Activity paramActivity, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return a(paramInt1, paramActivity, null, paramInt2, paramOnCancelListener);
  }
  
  public static PendingIntent getErrorPendingIntent(int paramInt1, Context paramContext, int paramInt2)
  {
    Intent localIntent = aj(paramInt1);
    if (localIntent == null) {
      return null;
    }
    return PendingIntent.getActivity(paramContext, paramInt2, localIntent, 268435456);
  }
  
  public static String getErrorString(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "UNKNOWN_ERROR_CODE";
    case 0: 
      return "SUCCESS";
    case 1: 
      return "SERVICE_MISSING";
    case 2: 
      return "SERVICE_VERSION_UPDATE_REQUIRED";
    case 3: 
      return "SERVICE_DISABLED";
    case 4: 
      return "SIGN_IN_REQUIRED";
    case 5: 
      return "INVALID_ACCOUNT";
    case 6: 
      return "RESOLUTION_REQUIRED";
    case 7: 
      return "NETWORK_ERROR";
    case 8: 
      return "INTERNAL_ERROR";
    case 9: 
      return "SERVICE_INVALID";
    case 10: 
      return "DEVELOPER_ERROR";
    }
    return "LICENSE_CHECK_FAILED";
  }
  
  public static String getOpenSourceSoftwareLicenseInfo(Context paramContext)
  {
    Object localObject = new Uri.Builder().scheme("android.resource").authority("com.google.android.gms").appendPath("raw").appendPath("oss_notice").build();
    try
    {
      InputStream localInputStream = paramContext.getContentResolver().openInputStream((Uri)localObject);
      try
      {
        paramContext = new Scanner(localInputStream).useDelimiter("\\A").next();
        localObject = paramContext;
        if (localInputStream != null)
        {
          localInputStream.close();
          return paramContext;
        }
      }
      catch (NoSuchElementException paramContext)
      {
        paramContext = paramContext;
        if (localInputStream == null) {
          break label101;
        }
        localInputStream.close();
        break label101;
      }
      finally
      {
        paramContext = finally;
        if (localInputStream != null) {
          localInputStream.close();
        }
        throw paramContext;
      }
      return (String)localObject;
    }
    catch (Exception paramContext)
    {
      localObject = null;
    }
    label101:
    return null;
  }
  
  public static Context getRemoteContext(Context paramContext)
  {
    try
    {
      paramContext = paramContext.createPackageContext("com.google.android.gms", 3);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return null;
  }
  
  public static Resources getRemoteResource(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getResourcesForApplication("com.google.android.gms");
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return null;
  }
  
  public static boolean gw()
  {
    if (Jg) {
      return Jh;
    }
    return "user".equals(Build.TYPE);
  }
  
  public static int isGooglePlayServicesAvailable(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    if (!hX.a) {}
    try
    {
      paramContext.getResources().getString(fJ.common_google_play_services_unknown_issue);
      if (!hX.a) {
        D(paramContext);
      }
      try
      {
        PackageInfo localPackageInfo1 = localPackageManager.getPackageInfo("com.google.android.gms", 64);
        if (iU.c(versionCode))
        {
          if (gw()) {}
          for (i = 0; a(localPackageInfo1, new byte[][] { b.Ix[i], b.IE[i], b.IC[i] }) == null; i = 1) {
            return 9;
          }
          paramContext = paramContext.getPackageName();
          try
          {
            PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo(paramContext, 64);
            if (a(localPackageManager, localPackageInfo2)) {
              break label250;
            }
            new StringBuilder().append("Calling package ").append(packageName).append(" signature invalid on Glass.").toString();
            return 9;
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
            new StringBuilder().append("Could not get info for calling package: ").append(paramContext).toString();
            return 9;
          }
        }
        else if (iU.a(paramContext))
        {
          if (a(localPackageInfo1, b.Ix) == null) {
            return 9;
          }
        }
        else
        {
          try
          {
            paramContext = localNameNotFoundException.getPackageInfo("com.android.vending", 64);
            paramContext = a(paramContext, b.Ix);
            if (paramContext == null) {
              return 9;
            }
          }
          catch (PackageManager.NameNotFoundException paramContext)
          {
            return 9;
          }
          if (a(localPackageInfo1, new byte[][] { paramContext }) == null) {
            return 9;
          }
        }
        label250:
        int i = iU.a(6587000);
        if (iU.a(versionCode) < i)
        {
          new StringBuilder().append("Google Play services out of date.  Requires 6587000 but found ").append(versionCode).toString();
          return 2;
        }
        try
        {
          paramContext = localNameNotFoundException.getApplicationInfo("com.google.android.gms", 0);
          if (!enabled) {
            return 3;
          }
        }
        catch (PackageManager.NameNotFoundException paramContext)
        {
          Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.");
          paramContext.printStackTrace();
          return 1;
        }
        return 0;
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        return 1;
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
  
  public static boolean isGoogleSignedUid(PackageManager paramPackageManager, int paramInt)
  {
    if (paramPackageManager == null) {
      throw new SecurityException("Unknown error: invalid Package Manager");
    }
    String[] arrayOfString = paramPackageManager.getPackagesForUid(paramInt);
    if ((arrayOfString.length == 0) || (!b(paramPackageManager, arrayOfString[0]))) {
      throw new SecurityException("Uid is not Google Signed");
    }
    return true;
  }
  
  public static boolean isUserRecoverableError(int paramInt)
  {
    switch (paramInt)
    {
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    default: 
      return false;
    }
    return true;
  }
  
  public static boolean showErrorDialogFragment(int paramInt1, Activity paramActivity, int paramInt2)
  {
    return showErrorDialogFragment(paramInt1, paramActivity, paramInt2, null);
  }
  
  public static boolean showErrorDialogFragment(int paramInt1, Activity paramActivity, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return showErrorDialogFragment(paramInt1, paramActivity, null, paramInt2, paramOnCancelListener);
  }
  
  public static boolean showErrorDialogFragment(int paramInt1, Activity paramActivity, Fragment paramFragment, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    paramFragment = a(paramInt1, paramActivity, paramFragment, paramInt2, paramOnCancelListener);
    if (paramFragment == null) {
      return false;
    }
    if ((paramActivity instanceof FragmentActivity))
    {
      paramActivity = ((FragmentActivity)paramActivity).getSupportFragmentManager();
      SupportErrorDialogFragment.newInstance(paramFragment, paramOnCancelListener).show(paramActivity, "GooglePlayServicesErrorDialog");
    }
    for (;;)
    {
      return true;
      if (!iX.a()) {
        break;
      }
      paramActivity = paramActivity.getFragmentManager();
      ErrorDialogFragment.newInstance(paramFragment, paramOnCancelListener).show(paramActivity, "GooglePlayServicesErrorDialog");
    }
    throw new RuntimeException("This Activity does not support Fragments.");
  }
  
  public static void showErrorNotification(int paramInt, Context paramContext)
  {
    int i = paramInt;
    if (iU.a(paramContext))
    {
      i = paramInt;
      if (paramInt == 2) {
        i = 42;
      }
    }
    if (e(paramContext, i))
    {
      E(paramContext);
      return;
    }
    a(i, paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.GooglePlayServicesUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
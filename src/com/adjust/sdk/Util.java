package com.adjust.sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.adjust.sdk.plugin.Plugin;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

public class Util
{
  private static final String DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss'Z'Z";
  private static SimpleDateFormat dateFormat;
  
  public static JSONObject buildJsonObject(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      return paramString;
    }
    catch (JSONException paramString) {}
    return null;
  }
  
  private static String convertToHex(byte[] paramArrayOfByte)
  {
    BigInteger localBigInteger = new BigInteger(1, paramArrayOfByte);
    return String.format("%0" + (paramArrayOfByte.length << 1) + "x", new Object[] { localBigInteger });
  }
  
  protected static String createUuid()
  {
    return UUID.randomUUID().toString();
  }
  
  public static String dateFormat(long paramLong)
  {
    if (dateFormat == null) {
      dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'Z", Locale.US);
    }
    return dateFormat.format(Long.valueOf(paramLong));
  }
  
  public static String getAndroidId(Context paramContext)
  {
    return Reflection.getAndroidId(paramContext);
  }
  
  private static String getAppVersion(Context paramContext)
  {
    try
    {
      paramContext = sanitizeString(getPackageManagergetPackageInfogetPackageName0versionName);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return "unknown";
  }
  
  public static Bundle getApplicationBundle(Context paramContext, Logger paramLogger)
  {
    try
    {
      String str = paramContext.getPackageName();
      paramContext = getPackageManagergetApplicationInfo128metaData;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramLogger.error("ApplicationInfo not found", new Object[0]);
      return null;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramLogger.error("Failed to get ApplicationBundle (%s)", new Object[] { paramContext });
      }
    }
  }
  
  protected static String getAttributionId(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getContentResolver().query(Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider"), new String[] { "aid" }, null, null, null);
      if (paramContext == null) {
        return null;
      }
      if (!paramContext.moveToFirst())
      {
        paramContext.close();
        return null;
      }
      String str = paramContext.getString(paramContext.getColumnIndex("aid"));
      paramContext.close();
      return str;
    }
    catch (Exception paramContext) {}
    return null;
  }
  
  private static String getCountry(Locale paramLocale)
  {
    return sanitizeStringShort(paramLocale.getCountry());
  }
  
  private static String getDeviceName()
  {
    return sanitizeString(Build.MODEL);
  }
  
  private static String getDeviceType(int paramInt)
  {
    switch (paramInt & 0xF)
    {
    default: 
      return "unknown";
    case 1: 
    case 2: 
      return "phone";
    }
    return "tablet";
  }
  
  private static String getDisplayHeight(DisplayMetrics paramDisplayMetrics)
  {
    return sanitizeString(String.valueOf(heightPixels));
  }
  
  private static String getDisplayWidth(DisplayMetrics paramDisplayMetrics)
  {
    return sanitizeString(String.valueOf(widthPixels));
  }
  
  private static String getLanguage(Locale paramLocale)
  {
    return sanitizeStringShort(paramLocale.getLanguage());
  }
  
  public static String getMacAddress(Context paramContext)
  {
    return Reflection.getMacAddress(paramContext);
  }
  
  public static String getMacSha1(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return sha1(paramString);
  }
  
  public static String getMacShortMd5(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return md5(paramString.replaceAll(":", ""));
  }
  
  private static String getOsName()
  {
    return "android";
  }
  
  private static String getOsVersion()
  {
    return sanitizeString("" + Build.VERSION.SDK_INT);
  }
  
  private static String getPackageName(Context paramContext)
  {
    return sanitizeString(paramContext.getPackageName());
  }
  
  public static String getPlayAdId(Context paramContext)
  {
    return Reflection.getPlayAdId(paramContext);
  }
  
  public static Map<String, String> getPluginKeys(Context paramContext)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = getPlugins().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = ((Plugin)localIterator.next()).getParameter(paramContext);
      if (localEntry != null) {
        localHashMap.put(localEntry.getKey(), localEntry.getValue());
      }
    }
    if (localHashMap.size() == 0) {
      return null;
    }
    return localHashMap;
  }
  
  private static List<Plugin> getPlugins()
  {
    ArrayList localArrayList = new ArrayList(Constants.PLUGINS.size());
    Iterator localIterator = Constants.PLUGINS.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = Reflection.createDefaultInstance((String)localIterator.next());
      if ((localObject != null) && ((localObject instanceof Plugin))) {
        localArrayList.add((Plugin)localObject);
      }
    }
    return localArrayList;
  }
  
  private static String getScreenDensity(DisplayMetrics paramDisplayMetrics)
  {
    int i = densityDpi;
    if (i == 0) {
      return "unknown";
    }
    if (i < 140) {
      return "low";
    }
    if (i > 200) {
      return "high";
    }
    return "medium";
  }
  
  private static String getScreenFormat(int paramInt)
  {
    switch (paramInt & 0x30)
    {
    default: 
      return "unknown";
    case 32: 
      return "long";
    }
    return "normal";
  }
  
  private static String getScreenSize(int paramInt)
  {
    switch (paramInt & 0xF)
    {
    default: 
      return "unknown";
    case 1: 
      return "small";
    case 2: 
      return "normal";
    case 3: 
      return "large";
    }
    return "xlarge";
  }
  
  protected static String getUserAgent(Context paramContext)
  {
    Object localObject = paramContext.getResources();
    DisplayMetrics localDisplayMetrics = ((Resources)localObject).getDisplayMetrics();
    localObject = ((Resources)localObject).getConfiguration();
    Locale localLocale = locale;
    int i = screenLayout;
    return TextUtils.join(" ", new String[] { getPackageName(paramContext), getAppVersion(paramContext), getDeviceType(i), getDeviceName(), getOsName(), getOsVersion(), getLanguage(localLocale), getCountry(localLocale), getScreenSize(i), getScreenFormat(i), getScreenDensity(localDisplayMetrics), getDisplayWidth(localDisplayMetrics), getDisplayHeight(localDisplayMetrics) });
  }
  
  private static String hash(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = paramString1.getBytes("UTF-8");
      paramString2 = MessageDigest.getInstance(paramString2);
      paramString2.update(paramString1, 0, paramString1.length);
      paramString1 = convertToHex(paramString2.digest());
      return paramString1;
    }
    catch (Exception paramString1) {}
    return null;
  }
  
  public static boolean isGooglePlayServicesAvailable(Context paramContext)
  {
    return Reflection.isGooglePlayServicesAvailable(paramContext);
  }
  
  public static Boolean isPlayTrackingEnabled(Context paramContext)
  {
    return Reflection.isPlayTrackingEnabled(paramContext);
  }
  
  private static String md5(String paramString)
  {
    return hash(paramString, "MD5");
  }
  
  public static String quote(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      str = paramString;
    } while (!Pattern.compile("\\s").matcher(paramString).find());
    return String.format("'%s'", new Object[] { paramString });
  }
  
  private static String sanitizeString(String paramString)
  {
    return sanitizeString(paramString, "unknown");
  }
  
  private static String sanitizeString(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (TextUtils.isEmpty(paramString1)) {
      str = paramString2;
    }
    paramString1 = str.replaceAll("\\s", "");
    if (TextUtils.isEmpty(paramString1)) {
      return paramString2;
    }
    return paramString1;
  }
  
  private static String sanitizeStringShort(String paramString)
  {
    return sanitizeString(paramString, "zz");
  }
  
  public static String sha1(String paramString)
  {
    return hash(paramString, "SHA-1");
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.Util
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
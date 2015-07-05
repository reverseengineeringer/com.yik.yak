package com.adjust.sdk.plugin;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Locale;

public class MacAddressUtil
{
  public static String getMacAddress(Context paramContext)
  {
    paramContext = getRawMacAddress(paramContext);
    if (paramContext == null) {
      return null;
    }
    return removeSpaceString(paramContext.toUpperCase(Locale.US));
  }
  
  private static String getRawMacAddress(Context paramContext)
  {
    Object localObject = loadAddress("wlan0");
    if (localObject != null) {}
    for (;;)
    {
      return (String)localObject;
      String str = loadAddress("eth0");
      localObject = str;
      if (str == null) {}
      try
      {
        paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        localObject = paramContext;
        if (paramContext != null) {}
      }
      catch (Exception paramContext)
      {
        for (;;) {}
      }
    }
    return null;
  }
  
  private static String loadAddress(String paramString)
  {
    try
    {
      Object localObject = "/sys/class/net/" + paramString + "/address";
      paramString = new StringBuilder(1000);
      localObject = new BufferedReader(new FileReader((String)localObject), 1024);
      char[] arrayOfChar = new char['Ѐ'];
      for (;;)
      {
        int i = ((BufferedReader)localObject).read(arrayOfChar);
        if (i == -1) {
          break;
        }
        paramString.append(String.valueOf(arrayOfChar, 0, i));
      }
      ((BufferedReader)localObject).close();
      paramString = paramString.toString();
      return paramString;
    }
    catch (IOException paramString) {}
    return null;
  }
  
  private static String removeSpaceString(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return null;
      paramString = paramString.replaceAll("\\s", "");
    } while (TextUtils.isEmpty(paramString));
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.plugin.MacAddressUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
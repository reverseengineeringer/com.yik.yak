package com.mixpanel.android.mpmetrics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import sV;

public class InstallReferrerReceiver
  extends BroadcastReceiver
{
  private final Pattern a = Pattern.compile("(^|&)utm_source=([^&#=]*)([#&]|$)");
  private final Pattern b = Pattern.compile("(^|&)utm_medium=([^&#=]*)([#&]|$)");
  private final Pattern c = Pattern.compile("(^|&)utm_campaign=([^&#=]*)([#&]|$)");
  private final Pattern d = Pattern.compile("(^|&)utm_content=([^&#=]*)([#&]|$)");
  private final Pattern e = Pattern.compile("(^|&)utm_term=([^&#=]*)([#&]|$)");
  
  private String a(Matcher paramMatcher)
  {
    if (paramMatcher.find())
    {
      paramMatcher = paramMatcher.group(2);
      if (paramMatcher != null) {
        try
        {
          paramMatcher = URLDecoder.decode(paramMatcher, "UTF-8");
          return paramMatcher;
        }
        catch (UnsupportedEncodingException paramMatcher) {}
      }
    }
    return null;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getExtras();
    if (paramIntent == null) {}
    do
    {
      return;
      str1 = paramIntent.getString("referrer");
    } while (str1 == null);
    paramIntent = new HashMap();
    paramIntent.put("referrer", str1);
    String str2 = a(a.matcher(str1));
    if (str2 != null) {
      paramIntent.put("utm_source", str2);
    }
    str2 = a(b.matcher(str1));
    if (str2 != null) {
      paramIntent.put("utm_medium", str2);
    }
    str2 = a(c.matcher(str1));
    if (str2 != null) {
      paramIntent.put("utm_campaign", str2);
    }
    str2 = a(d.matcher(str1));
    if (str2 != null) {
      paramIntent.put("utm_content", str2);
    }
    String str1 = a(e.matcher(str1));
    if (str1 != null) {
      paramIntent.put("utm_term", str1);
    }
    sV.a(paramContext, "com.mixpanel.android.mpmetrics.ReferralInfo", paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.mixpanel.android.mpmetrics.InstallReferrerReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
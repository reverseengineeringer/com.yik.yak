package com.google.android.gms.analytics;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import fP;
import fY;
import fZ;
import gA;
import gJ;
import ge;
import gf;
import gj;
import gk;
import gn;
import go;
import hm;
import hn;
import iE;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public class Tracker
{
  private final fZ Ce;
  private final Map<String, String> Cf = new HashMap();
  private gj Cg;
  private final gJ Ch;
  private final gk Ci;
  private final gA Cj;
  private boolean Ck;
  private fY Cl;
  private gn Cm;
  private fP Cn;
  private Context mContext;
  private final Map<String, String> rd = new HashMap();
  
  Tracker(String paramString, fZ paramfZ, Context paramContext)
  {
    this(paramString, paramfZ, gJ.a(), gk.a(), gA.a(), new ge("tracking"), paramContext);
  }
  
  Tracker(String paramString, fZ paramfZ, gJ paramgJ, gk paramgk, gA paramgA, gj paramgj, Context paramContext)
  {
    Ce = paramfZ;
    if (paramContext != null) {
      mContext = paramContext.getApplicationContext();
    }
    if (paramString != null) {
      rd.put("&tid", paramString);
    }
    rd.put("useSecure", "1");
    Ch = paramgJ;
    Ci = paramgk;
    Cj = paramgA;
    rd.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
    Cg = paramgj;
    Cl = new fY(this);
    enableAdvertisingIdCollection(false);
  }
  
  void a(gn paramgn)
  {
    gf.c("Loading Tracker config values.");
    Cm = paramgn;
    if (Cm.a())
    {
      paramgn = Cm.b();
      set("&tid", paramgn);
      gf.c("[Tracker] trackingId loaded: " + paramgn);
    }
    if (Cm.c())
    {
      paramgn = Double.toString(Cm.d());
      set("&sf", paramgn);
      gf.c("[Tracker] sample frequency loaded: " + paramgn);
    }
    if (Cm.e())
    {
      setSessionTimeout(Cm.f());
      gf.c("[Tracker] session timeout loaded: " + fn());
    }
    if (Cm.g())
    {
      enableAutoActivityTracking(Cm.h());
      gf.c("[Tracker] auto activity tracking loaded: " + fo());
    }
    if (Cm.i())
    {
      if (Cm.j())
      {
        set("&aip", "1");
        gf.c("[Tracker] anonymize ip loaded: true");
      }
      gf.c("[Tracker] anonymize ip loaded: false");
    }
    enableExceptionReporting(Cm.k());
  }
  
  public void enableAdvertisingIdCollection(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      rd.put("&ate", null);
      rd.put("&adid", null);
    }
    do
    {
      return;
      if (rd.containsKey("&ate")) {
        rd.remove("&ate");
      }
    } while (!rd.containsKey("&adid"));
    rd.remove("&adid");
  }
  
  public void enableAutoActivityTracking(boolean paramBoolean)
  {
    Cl.a(paramBoolean);
  }
  
  public void enableExceptionReporting(boolean paramBoolean)
  {
    if (Ck == paramBoolean) {
      return;
    }
    Ck = paramBoolean;
    if (paramBoolean)
    {
      Cn = new fP(this, Thread.getDefaultUncaughtExceptionHandler(), mContext);
      Thread.setDefaultUncaughtExceptionHandler(Cn);
      gf.c("Uncaught exceptions will be reported to Google Analytics.");
      return;
    }
    if (Cn != null) {
      Thread.setDefaultUncaughtExceptionHandler(Cn.b());
    }
    for (;;)
    {
      gf.c("Uncaught exceptions will not be reported to Google Analytics.");
      return;
      Thread.setDefaultUncaughtExceptionHandler(null);
    }
  }
  
  long fn()
  {
    return Cl.a();
  }
  
  boolean fo()
  {
    return Cl.b();
  }
  
  public String get(String paramString)
  {
    hm.a().a(hn.j);
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return null;
      if (rd.containsKey(paramString)) {
        return (String)rd.get(paramString);
      }
      if (paramString.equals("&ul")) {
        return go.a(Locale.getDefault());
      }
      if ((Ch != null) && (Ch.b(paramString))) {
        return Ch.a(paramString);
      }
      if ((Ci != null) && (Ci.b(paramString))) {
        return Ci.a(paramString);
      }
    } while ((Cj == null) || (!Cj.b(paramString)));
    return Cj.a(paramString);
  }
  
  public void send(Map<String, String> paramMap)
  {
    hm.a().a(hn.l);
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(rd);
    if (paramMap != null) {
      localHashMap.putAll(paramMap);
    }
    paramMap = Cf.keySet().iterator();
    while (paramMap.hasNext())
    {
      str = (String)paramMap.next();
      if (!localHashMap.containsKey(str)) {
        localHashMap.put(str, Cf.get(str));
      }
    }
    Cf.clear();
    if (TextUtils.isEmpty((CharSequence)localHashMap.get("&tid"))) {
      gf.d(String.format("Missing tracking id (%s) parameter.", new Object[] { "&tid" }));
    }
    String str = (String)localHashMap.get("&t");
    paramMap = str;
    if (TextUtils.isEmpty(str))
    {
      gf.d(String.format("Missing hit type (%s) parameter.", new Object[] { "&t" }));
      paramMap = "";
    }
    if (Cl.c()) {
      localHashMap.put("&sc", "start");
    }
    paramMap = paramMap.toLowerCase();
    if (("screenview".equals(paramMap)) || ("pageview".equals(paramMap)) || ("appview".equals(paramMap)) || (TextUtils.isEmpty(paramMap)))
    {
      int j = Integer.parseInt((String)rd.get("&a")) + 1;
      int i = j;
      if (j >= Integer.MAX_VALUE) {
        i = 1;
      }
      rd.put("&a", Integer.toString(i));
    }
    if ((!paramMap.equals("transaction")) && (!paramMap.equals("item")) && (!Cg.a()))
    {
      gf.d("Too many hits sent too quickly, rate limiting invoked.");
      return;
    }
    Ce.a(localHashMap);
  }
  
  public void set(String paramString1, String paramString2)
  {
    iE.a(paramString1, "Key should be non-null");
    hm.a().a(hn.k);
    rd.put(paramString1, paramString2);
  }
  
  public void setAnonymizeIp(boolean paramBoolean)
  {
    set("&aip", go.a(paramBoolean));
  }
  
  public void setAppId(String paramString)
  {
    set("&aid", paramString);
  }
  
  public void setAppInstallerId(String paramString)
  {
    set("&aiid", paramString);
  }
  
  public void setAppName(String paramString)
  {
    set("&an", paramString);
  }
  
  public void setAppVersion(String paramString)
  {
    set("&av", paramString);
  }
  
  public void setCampaignParamsOnNextHit(Uri paramUri)
  {
    if (paramUri == null) {}
    do
    {
      do
      {
        return;
        paramUri = paramUri.getQueryParameter("referrer");
      } while (TextUtils.isEmpty(paramUri));
      paramUri = Uri.parse("http://hostname/?" + paramUri);
      String str = paramUri.getQueryParameter("utm_id");
      if (str != null) {
        Cf.put("&ci", str);
      }
      str = paramUri.getQueryParameter("utm_campaign");
      if (str != null) {
        Cf.put("&cn", str);
      }
      str = paramUri.getQueryParameter("utm_content");
      if (str != null) {
        Cf.put("&cc", str);
      }
      str = paramUri.getQueryParameter("utm_medium");
      if (str != null) {
        Cf.put("&cm", str);
      }
      str = paramUri.getQueryParameter("utm_source");
      if (str != null) {
        Cf.put("&cs", str);
      }
      str = paramUri.getQueryParameter("utm_term");
      if (str != null) {
        Cf.put("&ck", str);
      }
      str = paramUri.getQueryParameter("dclid");
      if (str != null) {
        Cf.put("&dclid", str);
      }
      paramUri = paramUri.getQueryParameter("gclid");
    } while (paramUri == null);
    Cf.put("&gclid", paramUri);
  }
  
  public void setClientId(String paramString)
  {
    set("&cid", paramString);
  }
  
  public void setEncoding(String paramString)
  {
    set("&de", paramString);
  }
  
  public void setHostname(String paramString)
  {
    set("&dh", paramString);
  }
  
  public void setLanguage(String paramString)
  {
    set("&ul", paramString);
  }
  
  public void setLocation(String paramString)
  {
    set("&dl", paramString);
  }
  
  public void setPage(String paramString)
  {
    set("&dp", paramString);
  }
  
  public void setReferrer(String paramString)
  {
    set("&dr", paramString);
  }
  
  public void setSampleRate(double paramDouble)
  {
    set("&sf", Double.toHexString(paramDouble));
  }
  
  public void setScreenColors(String paramString)
  {
    set("&sd", paramString);
  }
  
  public void setScreenName(String paramString)
  {
    set("&cd", paramString);
  }
  
  public void setScreenResolution(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) && (paramInt2 < 0))
    {
      gf.d("Invalid width or height. The values should be non-negative.");
      return;
    }
    set("&sr", paramInt1 + "x" + paramInt2);
  }
  
  public void setSessionTimeout(long paramLong)
  {
    Cl.a(1000L * paramLong);
  }
  
  public void setTitle(String paramString)
  {
    set("&dt", paramString);
  }
  
  public void setUseSecure(boolean paramBoolean)
  {
    set("useSecure", go.a(paramBoolean));
  }
  
  public void setViewportSize(String paramString)
  {
    set("&vp", paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.Tracker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
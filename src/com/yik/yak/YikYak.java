package com.yik.yak;

import AJ;
import AN;
import AS;
import Ab;
import HA;
import HK;
import Hh;
import Hi;
import Hl;
import ah;
import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.parse.Parse;
import com.parse.ParseInstallation;
import com.parse.ParsePush;
import com.yik.yak.data.db.YikYakSQLiteOpenHelper;
import java.net.CookieHandler;
import java.net.CookieManager;

@SuppressLint({"TrulyRandom"})
public class YikYak
  extends Application
{
  public static String a = "";
  public static String b = "";
  public static String c = "";
  public static String d = "";
  private static YikYak e;
  private static int f = 0;
  private static String g = null;
  
  public static YikYak a()
  {
    try
    {
      YikYak localYikYak = e;
      return localYikYak;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static void a(int paramInt)
  {
    f = paramInt;
  }
  
  public static void a(String paramString)
  {
    try
    {
      ParseInstallation.getCurrentInstallation().saveInBackground();
      Parse.setLogLevel(6);
      Hl.a("setParseChannel", "c" + paramString + "c");
      ParsePush.subscribeInBackground("c" + paramString + "c", new Ab());
      return;
    }
    catch (Exception paramString) {}
  }
  
  public static int b()
  {
    return f;
  }
  
  public static int c()
  {
    f += 1;
    return f;
  }
  
  public static Context d()
  {
    return e.getApplicationContext();
  }
  
  public static String e()
  {
    if (Hi.a(g)) {
      try
      {
        String str = egetPackageManagergetPackageInfoegetPackageName0versionName + d;
        return str;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        return "";
      }
    }
    return g;
  }
  
  private void f()
  {
    HA.a(this, new HK[] { new ah() });
    ah.a("has_xprivacy", Hh.a(this, "biz.bokhorst.xprivacy"));
  }
  
  @SuppressLint({"TrulyRandom"})
  public void onCreate()
  {
    super.onCreate();
    e = this;
    f();
    YikYakSQLiteOpenHelper.init(this);
    AS.a();
    registerActivityLifecycleCallbacks(new AN());
    CookieHandler.setDefault(new CookieManager());
    AJ.a();
    AJ.c();
    Parse.initialize(this, b, c);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.YikYak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
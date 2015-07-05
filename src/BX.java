import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import java.io.File;
import java.util.Map;
import java.util.UUID;

abstract class bx
  extends Hc<Boolean>
{
  bE a;
  private String g;
  private String h;
  private Jg i;
  private long j;
  
  @SuppressLint({"CommitPrefEdits"})
  @TargetApi(14)
  private void a(Context paramContext)
  {
    try
    {
      bD localbD = new bD(paramContext, new bJ(), new HS(), new IL(C(), h(), "session_analytics.tap", "session_analytics_to_send"));
      Object localObject3 = B();
      Object localObject4 = ((HI)localObject3).g();
      Object localObject1 = paramContext.getPackageName();
      Object localObject2 = ((HI)localObject3).b();
      String str1 = (String)((Map)localObject4).get(HJ.d);
      String str2 = (String)((Map)localObject4).get(HJ.g);
      localObject4 = (String)((Map)localObject4).get(HJ.c);
      String str3 = Hw.m(paramContext);
      String str4 = ((HI)localObject3).d();
      localObject3 = ((HI)localObject3).e();
      localObject1 = new bI((String)localObject1, UUID.randomUUID().toString(), (String)localObject2, str1, str2, (String)localObject4, str3, str4, (String)localObject3, g, h);
      localObject2 = (Application)C().getApplicationContext();
      if ((localObject2 != null) && (Build.VERSION.SDK_INT >= 14)) {}
      for (a = by.a((Application)localObject2, (bI)localObject1, localbD, new IP(GS.g())); a(j); a = bE.a(paramContext, (bI)localObject1, localbD, new IP(GS.g())))
      {
        GS.g();
        a.b();
        i.a(i.b().putBoolean("analytics_launched", true));
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      Hw.a(paramContext, "Crashlytics failed to initialize session analytics.", localException);
    }
  }
  
  public void a(HA paramHA)
  {
    if (a != null) {
      a.a(paramHA.a());
    }
  }
  
  @SuppressLint({"NewApi"})
  protected boolean a()
  {
    try
    {
      i = new Jh(this);
      Context localContext = C();
      PackageInfo localPackageInfo = localContext.getPackageManager().getPackageInfo(localContext.getPackageName(), 0);
      g = Integer.toString(versionCode);
      if (versionName == null) {}
      for (String str = "0.0";; str = versionName)
      {
        h = str;
        if (Build.VERSION.SDK_INT < 9) {
          break;
        }
        j = firstInstallTime;
        break label122;
      }
      j = new File(getPackageManagergetApplicationInfogetPackageName0sourceDir).lastModified();
    }
    catch (Exception localException)
    {
      GS.g();
      return false;
    }
    label122:
    return true;
  }
  
  boolean a(long paramLong)
  {
    return (!g()) && (b(paramLong));
  }
  
  boolean b(long paramLong)
  {
    return System.currentTimeMillis() - paramLong < 3600000L;
  }
  
  public String c()
  {
    return "com.crashlytics.sdk.android:answers";
  }
  
  public String d()
  {
    return "1.1.2.37";
  }
  
  protected Boolean e()
  {
    Context localContext = C();
    a(localContext);
    try
    {
      JE localJE = Jy.a().b();
      if (localJE == null) {
        return Boolean.valueOf(false);
      }
      if (d.d)
      {
        a.a(e, f());
        return Boolean.valueOf(true);
      }
      Hw.a(localContext, "Disabling analytics collection based on settings flag value.");
      a.a();
      return Boolean.valueOf(false);
    }
    catch (Exception localException)
    {
      GS.g();
    }
    return Boolean.valueOf(false);
  }
  
  String f()
  {
    return Hw.b(C(), "com.crashlytics.ApiEndpoint");
  }
  
  boolean g()
  {
    return i.a().getBoolean("analytics_launched", false);
  }
  
  File h()
  {
    return new Jf(this).a();
  }
}

/* Location:
 * Qualified Name:     bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
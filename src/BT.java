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

abstract class bt
  extends HK<Boolean>
{
  bA a;
  private String g;
  private String h;
  private JO i;
  private long j;
  
  @SuppressLint({"CommitPrefEdits"})
  @TargetApi(14)
  private void a(Context paramContext)
  {
    try
    {
      bz localbz = new bz(paramContext, new bF(), new IA(), new Jt(C(), h(), "session_analytics.tap", "session_analytics_to_send"));
      Object localObject3 = B();
      Object localObject4 = ((Iq)localObject3).g();
      Object localObject1 = paramContext.getPackageName();
      Object localObject2 = ((Iq)localObject3).b();
      String str1 = (String)((Map)localObject4).get(Ir.d);
      String str2 = (String)((Map)localObject4).get(Ir.g);
      localObject4 = (String)((Map)localObject4).get(Ir.c);
      String str3 = Ie.m(paramContext);
      String str4 = ((Iq)localObject3).d();
      localObject3 = ((Iq)localObject3).e();
      localObject1 = new bE((String)localObject1, UUID.randomUUID().toString(), (String)localObject2, str1, str2, (String)localObject4, str3, str4, (String)localObject3, g, h);
      localObject2 = (Application)C().getApplicationContext();
      if ((localObject2 != null) && (Build.VERSION.SDK_INT >= 14)) {}
      for (a = bu.a((Application)localObject2, (bE)localObject1, localbz, new Jx(HA.g())); a(j); a = bA.a(paramContext, (bE)localObject1, localbz, new Jx(HA.g())))
      {
        HA.g();
        a.b();
        i.a(i.b().putBoolean("analytics_launched", true));
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      Ie.a(paramContext, "Crashlytics failed to initialize session analytics.", localException);
    }
  }
  
  public void a(Ii paramIi)
  {
    if (a != null) {
      a.a(paramIi.a());
    }
  }
  
  @SuppressLint({"NewApi"})
  protected boolean a()
  {
    try
    {
      i = new JP(this);
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
      HA.g();
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
      Km localKm = Kg.a().b();
      if (localKm == null) {
        return Boolean.valueOf(false);
      }
      if (d.d)
      {
        a.a(e, f());
        return Boolean.valueOf(true);
      }
      Ie.a(localContext, "Disabling analytics collection based on settings flag value.");
      a.a();
      return Boolean.valueOf(false);
    }
    catch (Exception localException)
    {
      HA.g();
    }
    return Boolean.valueOf(false);
  }
  
  String f()
  {
    return Ie.b(C(), "com.crashlytics.ApiEndpoint");
  }
  
  boolean g()
  {
    return i.a().getBoolean("analytics_launched", false);
  }
  
  File h()
  {
    return new JN(this).a();
  }
}

/* Location:
 * Qualified Name:     bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
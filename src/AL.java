import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.io.File;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Ih(a={bT.class})
public class al
  extends Hc<Void>
  implements Hd
{
  private final long a = System.currentTimeMillis();
  private final ConcurrentHashMap<String, String> g = new ConcurrentHashMap();
  private final Collection<Hc<Boolean>> h;
  private File i;
  private aA j;
  private aD k;
  private String l = null;
  private String m = null;
  private String n = null;
  private String o;
  private String p;
  private String q;
  private String r;
  private String s;
  private float t;
  private boolean u;
  private final bn v;
  private Ja w;
  private ax x;
  private bT y;
  
  public al()
  {
    this(1.0F, null, null, false);
  }
  
  al(float paramFloat, aA paramaA, bn parambn, boolean paramBoolean)
  {
    this(paramFloat, paramaA, parambn, paramBoolean, HE.a("Crashlytics Exception Handler"));
  }
  
  al(float paramFloat, aA paramaA, bn parambn, boolean paramBoolean, ExecutorService paramExecutorService)
  {
    t = paramFloat;
    j = paramaA;
    v = parambn;
    u = paramBoolean;
    x = new ax(paramExecutorService);
    h = Collections.unmodifiableCollection(Arrays.asList(new Hc[] { new bw(), new bM() }));
  }
  
  private void H()
  {
    Object localObject = new am(this);
    Iterator localIterator = G().iterator();
    while (localIterator.hasNext()) {
      ((Im)localObject).a((Is)localIterator.next());
    }
    localObject = D().e().submit((Callable)localObject);
    GS.g();
    try
    {
      ((Future)localObject).get(4L, TimeUnit.SECONDS);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      GS.g();
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      GS.g();
      return;
    }
    catch (TimeoutException localTimeoutException)
    {
      GS.g();
    }
  }
  
  private static boolean I()
  {
    al localal = f();
    return (localal == null) || (u);
  }
  
  private int a(float paramFloat, int paramInt)
  {
    return (int)(paramInt * paramFloat);
  }
  
  public static void a(int paramInt, String paramString1, String paramString2)
  {
    b(paramInt, paramString1, paramString2);
    GS.g().a(paramInt, "" + paramString1, "" + paramString2, true);
  }
  
  private void a(Context paramContext, String paramString)
  {
    Object localObject;
    if (v != null)
    {
      localObject = new aC(v);
      w = new IP(GS.g());
      w.a((Jc)localObject);
    }
    for (;;)
    {
      try
      {
        p = paramContext.getPackageName();
        q = B().h();
        GS.g();
        new StringBuilder().append("Installer package name is: ").append(q).toString();
        localObject = paramContext.getPackageManager().getPackageInfo(p, 0);
        r = Integer.toString(versionCode);
        if (versionName != null) {
          continue;
        }
        localObject = "0.0";
        s = ((String)localObject);
        o = Hw.m(paramContext);
      }
      catch (Exception localException)
      {
        GS.g();
        continue;
      }
      B().m();
      b(o, b(paramContext)).a(paramString, p);
      return;
      localObject = null;
      break;
      localObject = versionName;
    }
  }
  
  static void a(String paramString)
  {
    bw localbw = (bw)GS.a(bw.class);
    if (localbw != null) {
      localbw.a(new HA(paramString));
    }
  }
  
  public static void a(String paramString1, String paramString2)
  {
    if (I()) {
      return;
    }
    if (paramString1 == null)
    {
      if ((f().C() != null) && (Hw.i(f().C()))) {
        throw new IllegalArgumentException("Custom attribute key must not be null.");
      }
      GS.g();
      return;
    }
    String str = b(paramString1);
    if ((fg.size() < 64) || (fg.containsKey(str)))
    {
      if (paramString2 == null) {}
      for (paramString1 = "";; paramString1 = b(paramString2))
      {
        fg.put(str, paramString1);
        return;
      }
    }
    GS.g();
  }
  
  public static void a(String paramString, boolean paramBoolean)
  {
    a(paramString, Boolean.toString(paramBoolean));
  }
  
  private boolean a(Activity paramActivity, Jw paramJw)
  {
    aX localaX = new aX(paramActivity, paramJw);
    aw localaw = new aw(this, null);
    paramActivity.runOnUiThread(new as(this, paramActivity, localaw, localaX, paramJw));
    GS.g();
    localaw.b();
    return localaw.a();
  }
  
  private static boolean a(String paramString, al paramal)
  {
    if ((paramal == null) || (k == null))
    {
      GS.g();
      new StringBuilder().append("Crashlytics must be initialized by calling Fabric.with(Context) ").append(paramString).toString();
      return false;
    }
    return true;
  }
  
  private static String b(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      paramString = paramString.trim();
      str = paramString;
      if (paramString.length() > 1024) {
        str = paramString.substring(0, 1024);
      }
    }
    return str;
  }
  
  private static void b(int paramInt, String paramString1, String paramString2)
  {
    if (I()) {}
    al localal;
    do
    {
      return;
      localal = f();
    } while (!a("prior to logging messages.", localal));
    long l1 = System.currentTimeMillis();
    long l2 = a;
    k.a(l1 - l2, c(paramInt, paramString1, paramString2));
  }
  
  private boolean b(Context paramContext)
  {
    return Hw.a(paramContext, "com.crashlytics.RequireBuildId", true);
  }
  
  private static String c(int paramInt, String paramString1, String paramString2)
  {
    return Hw.a(paramInt) + "/" + paramString1 + " " + paramString2;
  }
  
  public static al f()
  {
    try
    {
      al localal = (al)GS.a(al.class);
      return localal;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      GS.g();
      throw localIllegalStateException;
    }
  }
  
  aV a(JE paramJE)
  {
    if (paramJE != null) {
      return new aW(this, l(), a.d, w);
    }
    return null;
  }
  
  @SuppressLint({"CommitPrefEdits"})
  void a(boolean paramBoolean)
  {
    Jh localJh = new Jh(this);
    localJh.a(localJh.b().putBoolean("always_send_reports_opt_in", paramBoolean));
  }
  
  protected boolean a()
  {
    return a(super.C());
  }
  
  boolean a(Context paramContext)
  {
    if (u) {
      return false;
    }
    Object localObject = new Hu().a(paramContext);
    if (localObject == null) {
      return false;
    }
    GS.g();
    new StringBuilder().append("Initializing Crashlytics ").append(d()).toString();
    i = new File(u(), "initialization_marker");
    for (;;)
    {
      try
      {
        a(paramContext, (String)localObject);
      }
      catch (aB paramContext)
      {
        throw new It(paramContext);
        return true;
      }
      catch (Exception paramContext)
      {
        GS.g();
        return false;
      }
      try
      {
        localObject = new bs(C(), o, h());
        GS.g();
        k = new aD(Thread.getDefaultUncaughtExceptionHandler(), j, x, B(), (bs)localObject, this);
        bool = s();
      }
      catch (Exception localException2)
      {
        bool = false;
        continue;
      }
      try
      {
        k.b();
        Thread.setDefaultUncaughtExceptionHandler(k);
        GS.g();
        if ((!bool) || (!Hw.n(paramContext))) {
          continue;
        }
        H();
        return false;
      }
      catch (Exception localException1)
      {
        continue;
      }
      GS.g();
    }
  }
  
  ae b(String paramString, boolean paramBoolean)
  {
    return new ae(paramString, paramBoolean);
  }
  
  protected Void b()
  {
    q();
    k.g();
    int i3 = 1;
    i2 = 1;
    i1 = i3;
    for (;;)
    {
      try
      {
        Object localObject1 = Jy.a().b();
        if (localObject1 == null)
        {
          i1 = i3;
          GS.g();
          return null;
        }
        i1 = i3;
        if (d.c)
        {
          i3 = 0;
          i2 = 0;
          i1 = i3;
          k.d();
          i1 = i3;
          localObject1 = a((JE)localObject1);
          if (localObject1 == null) {
            continue;
          }
          i1 = i3;
          new bp((aV)localObject1).a(t);
        }
      }
      catch (Exception localException1)
      {
        GS.g();
        i2 = i1;
        continue;
      }
      finally
      {
        r();
      }
      if (i2 != 0) {}
      try
      {
        GS.g();
        r();
        return null;
      }
      catch (Exception localException2)
      {
        GS.g();
        r();
        return null;
      }
      i1 = i3;
      GS.g();
    }
  }
  
  public String c()
  {
    return "com.crashlytics.sdk.android:crashlytics";
  }
  
  public String d()
  {
    return "2.2.2.37";
  }
  
  public Collection<? extends Hc> e()
  {
    return h;
  }
  
  Map<String, String> g()
  {
    return Collections.unmodifiableMap(g);
  }
  
  String h()
  {
    return p;
  }
  
  String i()
  {
    return q;
  }
  
  String j()
  {
    return s;
  }
  
  String k()
  {
    return r;
  }
  
  String l()
  {
    return Hw.b(f().C(), "com.crashlytics.ApiEndpoint");
  }
  
  aD m()
  {
    return k;
  }
  
  String n()
  {
    if (B().a()) {
      return l;
    }
    return null;
  }
  
  String o()
  {
    if (B().a()) {
      return m;
    }
    return null;
  }
  
  String p()
  {
    if (B().a()) {
      return n;
    }
    return null;
  }
  
  void q()
  {
    x.a(new an(this));
  }
  
  void r()
  {
    x.b(new ao(this));
  }
  
  boolean s()
  {
    return ((Boolean)x.a(new ap(this))).booleanValue();
  }
  
  bW t()
  {
    bW localbW = null;
    if (y != null) {
      localbW = y.a();
    }
    return localbW;
  }
  
  File u()
  {
    return new Jf(this).a();
  }
  
  boolean v()
  {
    return ((Boolean)Jy.a().a(new aq(this), Boolean.valueOf(false))).booleanValue();
  }
  
  boolean w()
  {
    return new Jh(this).a().getBoolean("always_send_reports_opt_in", false);
  }
  
  boolean x()
  {
    return ((Boolean)Jy.a().a(new ar(this), Boolean.valueOf(true))).booleanValue();
  }
  
  Jx y()
  {
    JE localJE = Jy.a().b();
    if (localJE == null) {
      return null;
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
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

@IP(a={bP.class})
public class ah
  extends HK<Void>
  implements HL
{
  private final long a = System.currentTimeMillis();
  private final ConcurrentHashMap<String, String> g = new ConcurrentHashMap();
  private final Collection<HK<Boolean>> h;
  private File i;
  private aw j;
  private az k;
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
  private final bj v;
  private JI w;
  private at x;
  private bP y;
  
  public ah()
  {
    this(1.0F, null, null, false);
  }
  
  ah(float paramFloat, aw paramaw, bj parambj, boolean paramBoolean)
  {
    this(paramFloat, paramaw, parambj, paramBoolean, Im.a("Crashlytics Exception Handler"));
  }
  
  ah(float paramFloat, aw paramaw, bj parambj, boolean paramBoolean, ExecutorService paramExecutorService)
  {
    t = paramFloat;
    j = paramaw;
    v = parambj;
    u = paramBoolean;
    x = new at(paramExecutorService);
    h = Collections.unmodifiableCollection(Arrays.asList(new HK[] { new bs(), new bI() }));
  }
  
  private void H()
  {
    Object localObject = new ai(this);
    Iterator localIterator = G().iterator();
    while (localIterator.hasNext()) {
      ((IU)localObject).a((Ja)localIterator.next());
    }
    localObject = D().e().submit((Callable)localObject);
    HA.g();
    try
    {
      ((Future)localObject).get(4L, TimeUnit.SECONDS);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      HA.g();
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      HA.g();
      return;
    }
    catch (TimeoutException localTimeoutException)
    {
      HA.g();
    }
  }
  
  private static boolean I()
  {
    ah localah = f();
    return (localah == null) || (u);
  }
  
  private int a(float paramFloat, int paramInt)
  {
    return (int)(paramInt * paramFloat);
  }
  
  public static void a(int paramInt, String paramString1, String paramString2)
  {
    b(paramInt, paramString1, paramString2);
    HA.g().a(paramInt, "" + paramString1, "" + paramString2, true);
  }
  
  private void a(Context paramContext, String paramString)
  {
    Object localObject;
    if (v != null)
    {
      localObject = new ay(v);
      w = new Jx(HA.g());
      w.a((JK)localObject);
    }
    for (;;)
    {
      try
      {
        p = paramContext.getPackageName();
        q = B().h();
        HA.g();
        new StringBuilder().append("Installer package name is: ").append(q).toString();
        localObject = paramContext.getPackageManager().getPackageInfo(p, 0);
        r = Integer.toString(versionCode);
        if (versionName != null) {
          continue;
        }
        localObject = "0.0";
        s = ((String)localObject);
        o = Ie.m(paramContext);
      }
      catch (Exception localException)
      {
        HA.g();
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
    bs localbs = (bs)HA.a(bs.class);
    if (localbs != null) {
      localbs.a(new Ii(paramString));
    }
  }
  
  public static void a(String paramString1, String paramString2)
  {
    if (I()) {
      return;
    }
    if (paramString1 == null)
    {
      if ((f().C() != null) && (Ie.i(f().C()))) {
        throw new IllegalArgumentException("Custom attribute key must not be null.");
      }
      HA.g();
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
    HA.g();
  }
  
  public static void a(String paramString, boolean paramBoolean)
  {
    a(paramString, Boolean.toString(paramBoolean));
  }
  
  private boolean a(Activity paramActivity, Ke paramKe)
  {
    aT localaT = new aT(paramActivity, paramKe);
    as localas = new as(this, null);
    paramActivity.runOnUiThread(new ao(this, paramActivity, localas, localaT, paramKe));
    HA.g();
    localas.b();
    return localas.a();
  }
  
  private static boolean a(String paramString, ah paramah)
  {
    if ((paramah == null) || (k == null))
    {
      HA.g();
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
    ah localah;
    do
    {
      return;
      localah = f();
    } while (!a("prior to logging messages.", localah));
    long l1 = System.currentTimeMillis();
    long l2 = a;
    k.a(l1 - l2, c(paramInt, paramString1, paramString2));
  }
  
  private boolean b(Context paramContext)
  {
    return Ie.a(paramContext, "com.crashlytics.RequireBuildId", true);
  }
  
  private static String c(int paramInt, String paramString1, String paramString2)
  {
    return Ie.a(paramInt) + "/" + paramString1 + " " + paramString2;
  }
  
  public static ah f()
  {
    try
    {
      ah localah = (ah)HA.a(ah.class);
      return localah;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      HA.g();
      throw localIllegalStateException;
    }
  }
  
  aR a(Km paramKm)
  {
    if (paramKm != null) {
      return new aS(this, l(), a.d, w);
    }
    return null;
  }
  
  @SuppressLint({"CommitPrefEdits"})
  void a(boolean paramBoolean)
  {
    JP localJP = new JP(this);
    localJP.a(localJP.b().putBoolean("always_send_reports_opt_in", paramBoolean));
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
    Object localObject = new Ic().a(paramContext);
    if (localObject == null) {
      return false;
    }
    HA.g();
    new StringBuilder().append("Initializing Crashlytics ").append(d()).toString();
    i = new File(u(), "initialization_marker");
    for (;;)
    {
      try
      {
        a(paramContext, (String)localObject);
      }
      catch (ax paramContext)
      {
        throw new Jb(paramContext);
        return true;
      }
      catch (Exception paramContext)
      {
        HA.g();
        return false;
      }
      try
      {
        localObject = new bo(C(), o, h());
        HA.g();
        k = new az(Thread.getDefaultUncaughtExceptionHandler(), j, x, B(), (bo)localObject, this);
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
        HA.g();
        if ((!bool) || (!Ie.n(paramContext))) {
          continue;
        }
        H();
        return false;
      }
      catch (Exception localException1)
      {
        continue;
      }
      HA.g();
    }
  }
  
  aa b(String paramString, boolean paramBoolean)
  {
    return new aa(paramString, paramBoolean);
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
        Object localObject1 = Kg.a().b();
        if (localObject1 == null)
        {
          i1 = i3;
          HA.g();
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
          localObject1 = a((Km)localObject1);
          if (localObject1 == null) {
            continue;
          }
          i1 = i3;
          new bl((aR)localObject1).a(t);
        }
      }
      catch (Exception localException1)
      {
        HA.g();
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
        HA.g();
        r();
        return null;
      }
      catch (Exception localException2)
      {
        HA.g();
        r();
        return null;
      }
      i1 = i3;
      HA.g();
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
  
  public Collection<? extends HK> e()
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
    return Ie.b(f().C(), "com.crashlytics.ApiEndpoint");
  }
  
  az m()
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
    x.a(new aj(this));
  }
  
  void r()
  {
    x.b(new ak(this));
  }
  
  boolean s()
  {
    return ((Boolean)x.a(new al(this))).booleanValue();
  }
  
  bS t()
  {
    bS localbS = null;
    if (y != null) {
      localbS = y.a();
    }
    return localbS;
  }
  
  File u()
  {
    return new JN(this).a();
  }
  
  boolean v()
  {
    return ((Boolean)Kg.a().a(new am(this), Boolean.valueOf(false))).booleanValue();
  }
  
  boolean w()
  {
    return new JP(this).a().getBoolean("always_send_reports_opt_in", false);
  }
  
  boolean x()
  {
    return ((Boolean)Kg.a().a(new an(this), Boolean.valueOf(true))).booleanValue();
  }
  
  Kf y()
  {
    Km localKm = Kg.a().b();
    if (localKm == null) {
      return null;
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
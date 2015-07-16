import android.content.Context;
import com.google.analytics.tracking.android.Tracker;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class fn
  extends fE
{
  private static fn g;
  private boolean a;
  private eG b;
  private Context c;
  private volatile Boolean d = Boolean.valueOf(false);
  private final Map<String, Tracker> e = new HashMap();
  private fr f;
  
  @VisibleForTesting
  protected fn(Context paramContext)
  {
    this(paramContext, fg.a(paramContext));
  }
  
  private fn(Context paramContext, eG parameG)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context cannot be null");
    }
    c = paramContext.getApplicationContext();
    b = parameG;
    eH.a(c);
    fz.a(c);
    eI.a(c);
    f = new eL();
  }
  
  static fn a()
  {
    try
    {
      fn localfn = g;
      return localfn;
    }
    finally {}
  }
  
  public static fn a(Context paramContext)
  {
    try
    {
      if (g == null) {
        g = new fn(paramContext);
      }
      paramContext = g;
      return paramContext;
    }
    finally {}
  }
  
  void a(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      try
      {
        throw new IllegalArgumentException("hit cannot be null");
      }
      finally {}
    }
    fF.a(paramMap, "&ul", fF.a(Locale.getDefault()));
    fF.a(paramMap, "&sr", fz.a().b("&sr"));
    paramMap.put("&_u", fl.a().c());
    fl.a().b();
    b.a(paramMap);
  }
  
  public void a(boolean paramBoolean)
  {
    fl.a().a(fm.ac);
    a = paramBoolean;
  }
  
  public void b(boolean paramBoolean)
  {
    fl.a().a(fm.Q);
    d = Boolean.valueOf(paramBoolean);
    if (d.booleanValue()) {
      b.b();
    }
  }
  
  public boolean b()
  {
    fl.a().a(fm.ad);
    return a;
  }
  
  public boolean c()
  {
    fl.a().a(fm.R);
    return d.booleanValue();
  }
  
  public fr d()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     fn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
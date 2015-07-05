import android.content.Context;
import com.google.analytics.tracking.android.Tracker;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class fq
  extends fH
{
  private static fq g;
  private boolean a;
  private eK b;
  private Context c;
  private volatile Boolean d = Boolean.valueOf(false);
  private final Map<String, Tracker> e = new HashMap();
  private fu f;
  
  @VisibleForTesting
  protected fq(Context paramContext)
  {
    this(paramContext, fk.a(paramContext));
  }
  
  private fq(Context paramContext, eK parameK)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context cannot be null");
    }
    c = paramContext.getApplicationContext();
    b = parameK;
    eL.a(c);
    fC.a(c);
    eM.a(c);
    f = new eP();
  }
  
  static fq a()
  {
    try
    {
      fq localfq = g;
      return localfq;
    }
    finally {}
  }
  
  public static fq a(Context paramContext)
  {
    try
    {
      if (g == null) {
        g = new fq(paramContext);
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
    fI.a(paramMap, "&ul", fI.a(Locale.getDefault()));
    fI.a(paramMap, "&sr", fC.a().b("&sr"));
    paramMap.put("&_u", fo.a().c());
    fo.a().b();
    b.a(paramMap);
  }
  
  public void a(boolean paramBoolean)
  {
    fo.a().a(fp.ac);
    a = paramBoolean;
  }
  
  public boolean b()
  {
    fo.a().a(fp.ad);
    return a;
  }
  
  public boolean c()
  {
    fo.a().a(fp.R);
    return d.booleanValue();
  }
  
  public fu d()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     fq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
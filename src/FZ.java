import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.android.gms.common.util.VisibleForTesting;

public class fz
  implements eM
{
  private static fz a;
  private static Object b = new Object();
  private final Context c;
  
  @VisibleForTesting
  protected fz(Context paramContext)
  {
    c = paramContext;
  }
  
  public static fz a()
  {
    synchronized (b)
    {
      fz localfz = a;
      return localfz;
    }
  }
  
  public static void a(Context paramContext)
  {
    synchronized (b)
    {
      if (a == null) {
        a = new fz(paramContext);
      }
      return;
    }
  }
  
  public boolean a(String paramString)
  {
    return "&sr".equals(paramString);
  }
  
  protected String b()
  {
    DisplayMetrics localDisplayMetrics = c.getResources().getDisplayMetrics();
    return widthPixels + "x" + heightPixels;
  }
  
  public String b(String paramString)
  {
    if (paramString == null) {}
    while (!paramString.equals("&sr")) {
      return null;
    }
    return b();
  }
}

/* Location:
 * Qualified Name:     fz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
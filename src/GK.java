import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class gk
  implements gR
{
  private static gk a;
  private static Object b = new Object();
  private final Context c;
  
  protected gk(Context paramContext)
  {
    c = paramContext;
  }
  
  public static gk a()
  {
    synchronized (b)
    {
      gk localgk = a;
      return localgk;
    }
  }
  
  public static void a(Context paramContext)
  {
    synchronized (b)
    {
      if (a == null) {
        a = new gk(paramContext);
      }
      return;
    }
  }
  
  public String a(String paramString)
  {
    if (paramString == null) {}
    while (!paramString.equals("&sr")) {
      return null;
    }
    return b();
  }
  
  protected String b()
  {
    DisplayMetrics localDisplayMetrics = c.getResources().getDisplayMetrics();
    return widthPixels + "x" + heightPixels;
  }
  
  public boolean b(String paramString)
  {
    return "&sr".equals(paramString);
  }
}

/* Location:
 * Qualified Name:     gk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
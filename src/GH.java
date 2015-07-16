import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class gh
  implements gO
{
  private static gh a;
  private static Object b = new Object();
  private final Context c;
  
  protected gh(Context paramContext)
  {
    c = paramContext;
  }
  
  public static gh a()
  {
    synchronized (b)
    {
      gh localgh = a;
      return localgh;
    }
  }
  
  public static void a(Context paramContext)
  {
    synchronized (b)
    {
      if (a == null) {
        a = new gh(paramContext);
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
 * Qualified Name:     gh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
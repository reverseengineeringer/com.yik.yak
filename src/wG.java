import android.app.Activity;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.WindowManager;

public class wg
{
  private static final wh a = new wk();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new wj();
      return;
    }
    if (Build.VERSION.SDK_INT >= 13)
    {
      a = new wi();
      return;
    }
  }
  
  public static int a(Activity paramActivity, Float paramFloat)
  {
    paramActivity = paramActivity.getWindowManager().getDefaultDisplay();
    Point localPoint = new Point();
    b(paramActivity, localPoint);
    return (int)(x * paramFloat.floatValue());
  }
  
  public static void a(Display paramDisplay, Point paramPoint)
  {
    a.a(paramDisplay, paramPoint);
  }
  
  public static void b(Display paramDisplay, Point paramPoint)
  {
    a.b(paramDisplay, paramPoint);
  }
}

/* Location:
 * Qualified Name:     wg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
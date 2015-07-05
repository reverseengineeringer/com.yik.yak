import android.annotation.TargetApi;
import android.graphics.Point;
import android.view.Display;

@TargetApi(17)
class wa
  extends vY
{
  void a(Display paramDisplay, Point paramPoint)
  {
    paramDisplay.getSize(paramPoint);
  }
  
  void b(Display paramDisplay, Point paramPoint)
  {
    paramDisplay.getRealSize(paramPoint);
  }
}

/* Location:
 * Qualified Name:     wa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import android.annotation.TargetApi;
import android.content.Context;
import android.view.View;
import android.view.ViewParent;
import com.nispok.snackbar.Snackbar;

@TargetApi(16)
public class wv
  extends View
{
  public wv(Context paramContext)
  {
    super(paramContext);
    setSaveEnabled(false);
    setWillNotDraw(true);
    setVisibility(8);
  }
  
  public void onWindowSystemUiVisibilityChanged(int paramInt)
  {
    super.onWindowSystemUiVisibilityChanged(paramInt);
    ViewParent localViewParent = getParent();
    if ((localViewParent instanceof Snackbar)) {
      ((Snackbar)localViewParent).b(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     wv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
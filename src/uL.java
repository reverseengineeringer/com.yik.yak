import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import java.lang.ref.WeakReference;

class ul
  implements ViewTreeObserver.OnGlobalLayoutListener, Runnable
{
  private volatile boolean a;
  private boolean b;
  private final WeakReference<View> c;
  private final uS d;
  private final Handler e;
  
  public ul(View paramView, uS paramuS, Handler paramHandler)
  {
    d = paramuS;
    c = new WeakReference(paramView);
    e = paramHandler;
    b = true;
    a = false;
    paramView = paramView.getViewTreeObserver();
    if (paramView.isAlive()) {
      paramView.addOnGlobalLayoutListener(this);
    }
    run();
  }
  
  private void b()
  {
    if (b)
    {
      Object localObject = (View)c.get();
      if (localObject != null)
      {
        localObject = ((View)localObject).getViewTreeObserver();
        if (((ViewTreeObserver)localObject).isAlive()) {
          ((ViewTreeObserver)localObject).removeGlobalOnLayoutListener(this);
        }
      }
      d.a();
    }
    b = false;
  }
  
  public void a()
  {
    a = true;
    e.post(this);
  }
  
  public void onGlobalLayout()
  {
    run();
  }
  
  public void run()
  {
    if (!b) {
      return;
    }
    View localView = (View)c.get();
    if ((localView == null) || (a))
    {
      b();
      return;
    }
    d.b(localView);
    e.removeCallbacks(this);
    e.postDelayed(this, 1000L);
  }
}

/* Location:
 * Qualified Name:     ul
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
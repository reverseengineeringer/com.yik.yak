import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.Window;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

class uj
  extends uC<Activity>
{
  private final Handler a = new Handler(Looper.getMainLooper());
  private final Map<String, List<uS>> b = new HashMap();
  private final Set<ul> c = new HashSet();
  
  private void a(View paramView, List<uS> paramList)
  {
    synchronized (c)
    {
      int j = paramList.size();
      int i = 0;
      while (i < j)
      {
        ul localul = new ul(paramView, (uS)paramList.get(i), a);
        c.add(localul);
        i += 1;
      }
      return;
    }
  }
  
  private void c()
  {
    if (Thread.currentThread() == a.getLooper().getThread())
    {
      d();
      return;
    }
    a.post(new uk(this));
  }
  
  private void d()
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext())
    {
      ??? = (Activity)localIterator.next();
      Object localObject3 = ???.getClass().getCanonicalName();
      View localView = ((Activity)???).getWindow().getDecorView().getRootView();
      synchronized (b)
      {
        localObject3 = (List)b.get(localObject3);
        List localList = (List)b.get(null);
        if (localObject3 != null) {
          a(localView, (List)localObject3);
        }
        if (localList != null) {
          a(localView, localList);
        }
      }
    }
  }
  
  public void a(Activity paramActivity)
  {
    super.b(paramActivity);
    c();
  }
  
  public void a(Map<String, List<uS>> paramMap)
  {
    synchronized (c)
    {
      Iterator localIterator = c.iterator();
      if (localIterator.hasNext()) {
        ((ul)localIterator.next()).a();
      }
    }
    c.clear();
    synchronized (b)
    {
      b.clear();
      b.putAll(paramMap);
      c();
      return;
    }
  }
  
  public void b(Activity paramActivity)
  {
    super.a(paramActivity);
  }
}

/* Location:
 * Qualified Name:     uj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
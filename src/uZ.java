import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;

class uz
  implements Callable<List<uA>>
{
  private uo<Activity> a;
  private final List<uA> b = new ArrayList();
  private final DisplayMetrics c = new DisplayMetrics();
  private final ux d = new ux();
  private final int e = 160;
  
  private void a(uA paramuA)
  {
    View localView = b;
    try
    {
      Object localObject1 = View.class.getDeclaredMethod("createSnapshot", new Class[] { Bitmap.Config.class, Integer.TYPE, Boolean.TYPE });
      ((Method)localObject1).setAccessible(true);
      localObject1 = (Bitmap)((Method)localObject1).invoke(localView, new Object[] { Bitmap.Config.RGB_565, Integer.valueOf(-1), Boolean.valueOf(false) });
      localObject7 = null;
      if (localObject1 == null)
      {
        try
        {
          Boolean localBoolean = Boolean.valueOf(localView.isDrawingCacheEnabled());
          localObject7 = localBoolean;
          localView.setDrawingCacheEnabled(true);
          localObject7 = localBoolean;
          localView.buildDrawingCache(true);
          localObject7 = localBoolean;
          Bitmap localBitmap = localView.getDrawingCache();
          localObject7 = localBitmap;
          localObject1 = localBoolean;
        }
        catch (RuntimeException localRuntimeException)
        {
          for (;;)
          {
            float f1;
            float f2;
            int i;
            int j;
            int k;
            int m;
            boolean bool;
            Object localObject2;
            Object localObject3;
            Object localObject4;
            Object localObject5;
            if (sD.a) {
              new StringBuilder().append("Can't take a bitmap snapshot of view ").append(localView).append(", skipping for now.").toString();
            }
            Object localObject8 = localObject6;
            localObject6 = localObject7;
            localObject7 = localObject8;
          }
        }
        f1 = 1.0F;
        f2 = f1;
        if (localObject7 != null)
        {
          i = ((Bitmap)localObject7).getDensity();
          if (i != 0) {
            f1 = 160.0F / i;
          }
          i = ((Bitmap)localObject7).getWidth();
          j = ((Bitmap)localObject7).getHeight();
          k = (int)(((Bitmap)localObject7).getWidth() * f1 + 0.5D);
          m = (int)(((Bitmap)localObject7).getHeight() * f1 + 0.5D);
          f2 = f1;
          if (i > 0)
          {
            f2 = f1;
            if (j > 0)
            {
              f2 = f1;
              if (k > 0)
              {
                f2 = f1;
                if (m > 0)
                {
                  d.a(k, m, 160, (Bitmap)localObject7);
                  f2 = f1;
                }
              }
            }
          }
        }
        if ((localObject1 != null) && (!((Boolean)localObject1).booleanValue())) {
          localView.setDrawingCacheEnabled(false);
        }
        d = f2;
        c = d;
        return;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        bool = sD.a;
        localObject2 = null;
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        localObject3 = null;
      }
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;)
      {
        localObject4 = null;
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;)
      {
        localObject5 = null;
      }
    }
    catch (ClassCastException localClassCastException)
    {
      for (;;)
      {
        Object localObject6 = null;
        continue;
        Object localObject7 = localObject6;
        localObject6 = null;
      }
    }
  }
  
  public List<uA> a()
  {
    b.clear();
    Iterator localIterator = a.a().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Activity)localIterator.next();
      String str = localObject.getClass().getCanonicalName();
      View localView = ((Activity)localObject).getWindow().getDecorView().getRootView();
      ((Activity)localObject).getWindowManager().getDefaultDisplay().getMetrics(c);
      localObject = new uA(str, localView);
      b.add(localObject);
    }
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      a((uA)b.get(i));
      i += 1;
    }
    return b;
  }
  
  public void a(uo<Activity> paramuo)
  {
    a = paramuo;
  }
}

/* Location:
 * Qualified Name:     uz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
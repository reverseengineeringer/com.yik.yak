import android.view.View;
import android.view.ViewGroup;
import java.util.List;

class uw
{
  private final uy a = new uy();
  
  private View a(uz paramuz, View paramView, int paramInt)
  {
    int i = a.a(paramInt);
    if (a(paramuz, paramView))
    {
      a.b(paramInt);
      if ((c == -1) || (c == i)) {
        return paramView;
      }
    }
    if ((a == 1) && ((paramView instanceof ViewGroup)))
    {
      paramView = (ViewGroup)paramView;
      int j = paramView.getChildCount();
      i = 0;
      while (i < j)
      {
        View localView = a(paramuz, paramView.getChildAt(i), paramInt);
        if (localView != null) {
          return localView;
        }
        i += 1;
      }
    }
    return null;
  }
  
  private static boolean a(Object paramObject, String paramString)
  {
    for (paramObject = paramObject.getClass();; paramObject = ((Class)paramObject).getSuperclass())
    {
      if (((Class)paramObject).getCanonicalName().equals(paramString)) {
        return true;
      }
      if (paramObject == Object.class) {
        return false;
      }
    }
  }
  
  private boolean a(uz paramuz, View paramView)
  {
    if ((b != null) && (!a(paramView, b))) {}
    String str;
    do
    {
      do
      {
        return false;
      } while (((-1 != d) && (paramView.getId() != d)) || ((e != null) && (!e.equals(paramView.getContentDescription()))));
      str = f;
    } while ((f != null) && ((paramView.getTag() == null) || (!str.equals(paramView.getTag().toString()))));
    return true;
  }
  
  private void b(View paramView, List<uz> paramList, ux paramux)
  {
    int i = 0;
    if (paramList.isEmpty()) {
      paramux.a(paramView);
    }
    while ((!(paramView instanceof ViewGroup)) || (a.a())) {
      return;
    }
    paramView = (ViewGroup)paramView;
    uz localuz = (uz)paramList.get(0);
    paramList = paramList.subList(1, paramList.size());
    int j = paramView.getChildCount();
    int k = a.b();
    for (;;)
    {
      if (i < j)
      {
        View localView = a(localuz, paramView.getChildAt(i), k);
        if (localView != null) {
          b(localView, paramList, paramux);
        }
        if ((c < 0) || (a.a(k) <= c)) {}
      }
      else
      {
        a.c();
        return;
      }
      i += 1;
    }
  }
  
  public void a(View paramView, List<uz> paramList, ux paramux)
  {
    if (paramList.isEmpty()) {}
    do
    {
      do
      {
        return;
      } while (a.a());
      uz localuz = (uz)paramList.get(0);
      paramList = paramList.subList(1, paramList.size());
      paramView = a(localuz, paramView, a.b());
      a.c();
    } while (paramView == null);
    b(paramView, paramList, paramux);
  }
}

/* Location:
 * Qualified Name:     uw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
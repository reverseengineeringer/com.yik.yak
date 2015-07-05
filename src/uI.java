import android.view.View;
import android.view.ViewGroup;
import java.util.List;

class ui
{
  private final uk a = new uk();
  
  private View a(ul paramul, View paramView, int paramInt)
  {
    int i = a.a(paramInt);
    if (a(paramul, paramView))
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
        View localView = a(paramul, paramView.getChildAt(i), paramInt);
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
  
  private boolean a(ul paramul, View paramView)
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
  
  private void b(View paramView, List<ul> paramList, uj paramuj)
  {
    int i = 0;
    if (paramList.isEmpty()) {
      paramuj.a(paramView);
    }
    while ((!(paramView instanceof ViewGroup)) || (a.a())) {
      return;
    }
    paramView = (ViewGroup)paramView;
    ul localul = (ul)paramList.get(0);
    paramList = paramList.subList(1, paramList.size());
    int j = paramView.getChildCount();
    int k = a.b();
    for (;;)
    {
      if (i < j)
      {
        View localView = a(localul, paramView.getChildAt(i), k);
        if (localView != null) {
          b(localView, paramList, paramuj);
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
  
  public void a(View paramView, List<ul> paramList, uj paramuj)
  {
    if (paramList.isEmpty()) {}
    do
    {
      do
      {
        return;
      } while (a.a());
      ul localul = (ul)paramList.get(0);
      paramList = paramList.subList(1, paramList.size());
      paramView = a(localul, paramView, a.b());
      a.c();
    } while (paramView == null);
    b(paramView, paramList, paramuj);
  }
}

/* Location:
 * Qualified Name:     ui
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
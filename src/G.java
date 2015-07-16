import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

class g
  extends BaseAdapter
{
  private int b = -1;
  
  public g(f paramf)
  {
    a();
  }
  
  public MenuItemImpl a(int paramInt)
  {
    ArrayList localArrayList = a.c.l();
    int i = f.a(a) + paramInt;
    paramInt = i;
    if (b >= 0)
    {
      paramInt = i;
      if (i >= b) {
        paramInt = i + 1;
      }
    }
    return (MenuItemImpl)localArrayList.get(paramInt);
  }
  
  void a()
  {
    MenuItemImpl localMenuItemImpl = a.c.r();
    if (localMenuItemImpl != null)
    {
      ArrayList localArrayList = a.c.l();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        if ((MenuItemImpl)localArrayList.get(i) == localMenuItemImpl)
        {
          b = i;
          return;
        }
        i += 1;
      }
    }
    b = -1;
  }
  
  public int getCount()
  {
    int i = a.c.l().size() - f.a(a);
    if (b < 0) {
      return i;
    }
    return i - 1;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = a.b.inflate(a.f, paramViewGroup, false);
    }
    for (;;)
    {
      ((x)paramView).a(a(paramInt), 0);
      return paramView;
    }
  }
  
  public void notifyDataSetChanged()
  {
    a();
    super.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
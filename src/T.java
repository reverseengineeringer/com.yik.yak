import android.support.v7.internal.view.menu.ListMenuItemView;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

class t
  extends BaseAdapter
{
  private MenuBuilder b;
  private int c = -1;
  
  public t(s params, MenuBuilder paramMenuBuilder)
  {
    b = paramMenuBuilder;
    a();
  }
  
  public MenuItemImpl a(int paramInt)
  {
    if (s.access$100(a)) {}
    for (ArrayList localArrayList = b.l();; localArrayList = b.i())
    {
      int i = paramInt;
      if (c >= 0)
      {
        i = paramInt;
        if (paramInt >= c) {
          i = paramInt + 1;
        }
      }
      return (MenuItemImpl)localArrayList.get(i);
    }
  }
  
  void a()
  {
    MenuItemImpl localMenuItemImpl = s.access$300(a).r();
    if (localMenuItemImpl != null)
    {
      ArrayList localArrayList = s.access$300(a).l();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        if ((MenuItemImpl)localArrayList.get(i) == localMenuItemImpl)
        {
          c = i;
          return;
        }
        i += 1;
      }
    }
    c = -1;
  }
  
  public int getCount()
  {
    if (s.access$100(a)) {}
    for (ArrayList localArrayList = b.l(); c < 0; localArrayList = b.i()) {
      return localArrayList.size();
    }
    return localArrayList.size() - 1;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = s.access$200(a).inflate(s.ITEM_LAYOUT, paramViewGroup, false);
    }
    for (;;)
    {
      paramViewGroup = (x)paramView;
      if (a.mForceShowIcon) {
        ((ListMenuItemView)paramView).setForceShowIcon(true);
      }
      paramViewGroup.a(a(paramInt), 0);
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
 * Qualified Name:     t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.appcompat.R.layout;
import android.support.v7.internal.view.menu.ExpandedMenuView;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

public class f
  implements AdapterView.OnItemClickListener, u
{
  Context a;
  LayoutInflater b;
  MenuBuilder c;
  ExpandedMenuView d;
  int e;
  int f;
  g g;
  private int h;
  private v i;
  private int j;
  
  public f(int paramInt1, int paramInt2)
  {
    f = paramInt1;
    e = paramInt2;
  }
  
  public f(Context paramContext, int paramInt)
  {
    this(paramInt, 0);
    a = paramContext;
    b = LayoutInflater.from(a);
  }
  
  public ListAdapter a()
  {
    if (g == null) {
      g = new g(this);
    }
    return g;
  }
  
  public w a(ViewGroup paramViewGroup)
  {
    if (d == null)
    {
      d = ((ExpandedMenuView)b.inflate(R.layout.abc_expanded_menu_layout, paramViewGroup, false));
      if (g == null) {
        g = new g(this);
      }
      d.setAdapter(g);
      d.setOnItemClickListener(this);
    }
    return d;
  }
  
  public void a(Bundle paramBundle)
  {
    SparseArray localSparseArray = new SparseArray();
    if (d != null) {
      d.saveHierarchyState(localSparseArray);
    }
    paramBundle.putSparseParcelableArray("android:menu:list", localSparseArray);
  }
  
  public void a(v paramv)
  {
    i = paramv;
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle = paramBundle.getSparseParcelableArray("android:menu:list");
    if (paramBundle != null) {
      d.restoreHierarchyState(paramBundle);
    }
  }
  
  public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public int getId()
  {
    return j;
  }
  
  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    if (e != 0)
    {
      a = new ContextThemeWrapper(paramContext, e);
      b = LayoutInflater.from(a);
    }
    for (;;)
    {
      c = paramMenuBuilder;
      if (g != null) {
        g.notifyDataSetChanged();
      }
      return;
      if (a != null)
      {
        a = paramContext;
        if (b == null) {
          b = LayoutInflater.from(a);
        }
      }
    }
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if (i != null) {
      i.onCloseMenu(paramMenuBuilder, paramBoolean);
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    c.a(g.a(paramInt), this, 0);
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    b((Bundle)paramParcelable);
  }
  
  public Parcelable onSaveInstanceState()
  {
    if (d == null) {
      return null;
    }
    Bundle localBundle = new Bundle();
    a(localBundle);
    return localBundle;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    if (!paramSubMenuBuilder.hasVisibleItems()) {
      return false;
    }
    new j(paramSubMenuBuilder).a(null);
    if (i != null) {
      i.onOpenSubMenu(paramSubMenuBuilder);
    }
    return true;
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    if (g != null) {
      g.notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
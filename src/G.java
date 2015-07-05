import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.appcompat.R.layout;
import android.support.v7.internal.view.menu.ExpandedMenuView;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

public class g
  implements AdapterView.OnItemClickListener, x
{
  Context a;
  LayoutInflater b;
  i c;
  ExpandedMenuView d;
  int e;
  int f;
  h g;
  private int h;
  private y i;
  private int j;
  
  public g(int paramInt1, int paramInt2)
  {
    f = paramInt1;
    e = paramInt2;
  }
  
  public g(Context paramContext, int paramInt)
  {
    this(paramInt, 0);
    a = paramContext;
    b = LayoutInflater.from(a);
  }
  
  public ListAdapter a()
  {
    if (g == null) {
      g = new h(this);
    }
    return g;
  }
  
  public z a(ViewGroup paramViewGroup)
  {
    if (d == null)
    {
      d = ((ExpandedMenuView)b.inflate(R.layout.abc_expanded_menu_layout, paramViewGroup, false));
      if (g == null) {
        g = new h(this);
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
  
  public void a(y paramy)
  {
    i = paramy;
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle = paramBundle.getSparseParcelableArray("android:menu:list");
    if (paramBundle != null) {
      d.restoreHierarchyState(paramBundle);
    }
  }
  
  public boolean collapseItemActionView(i parami, m paramm)
  {
    return false;
  }
  
  public boolean expandItemActionView(i parami, m paramm)
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
  
  public void initForMenu(Context paramContext, i parami)
  {
    if (e != 0)
    {
      a = new ContextThemeWrapper(paramContext, e);
      b = LayoutInflater.from(a);
    }
    for (;;)
    {
      c = parami;
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
  
  public void onCloseMenu(i parami, boolean paramBoolean)
  {
    if (i != null) {
      i.onCloseMenu(parami, paramBoolean);
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
  
  public boolean onSubMenuSelected(D paramD)
  {
    if (!paramD.hasVisibleItems()) {
      return false;
    }
    new l(paramD).a(null);
    if (i != null) {
      i.onOpenSubMenu(paramD);
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
 * Qualified Name:     g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
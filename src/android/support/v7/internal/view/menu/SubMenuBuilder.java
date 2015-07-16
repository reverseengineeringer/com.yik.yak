package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import h;

public class SubMenuBuilder
  extends MenuBuilder
  implements SubMenu
{
  private MenuBuilder d;
  private MenuItemImpl e;
  
  public SubMenuBuilder(Context paramContext, MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    super(paramContext);
    d = paramMenuBuilder;
    e = paramMenuItemImpl;
  }
  
  public String a()
  {
    if (e != null) {}
    for (int i = e.getItemId(); i == 0; i = 0) {
      return null;
    }
    return super.a() + ":" + i;
  }
  
  public void a(h paramh)
  {
    d.a(paramh);
  }
  
  boolean a(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    return (super.a(paramMenuBuilder, paramMenuItem)) || (d.a(paramMenuBuilder, paramMenuItem));
  }
  
  public boolean b()
  {
    return d.b();
  }
  
  public boolean c()
  {
    return d.c();
  }
  
  public boolean c(MenuItemImpl paramMenuItemImpl)
  {
    return d.c(paramMenuItemImpl);
  }
  
  public boolean d(MenuItemImpl paramMenuItemImpl)
  {
    return d.d(paramMenuItemImpl);
  }
  
  public MenuItem getItem()
  {
    return e;
  }
  
  public MenuBuilder p()
  {
    return d;
  }
  
  public Menu s()
  {
    return d;
  }
  
  public SubMenu setHeaderIcon(int paramInt)
  {
    super.a(ContextCompat.getDrawable(e(), paramInt));
    return this;
  }
  
  public SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    super.a(paramDrawable);
    return this;
  }
  
  public SubMenu setHeaderTitle(int paramInt)
  {
    super.a(e().getResources().getString(paramInt));
    return this;
  }
  
  public SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    super.a(paramCharSequence);
    return this;
  }
  
  public SubMenu setHeaderView(View paramView)
  {
    super.a(paramView);
    return this;
  }
  
  public SubMenu setIcon(int paramInt)
  {
    e.setIcon(paramInt);
    return this;
  }
  
  public SubMenu setIcon(Drawable paramDrawable)
  {
    e.setIcon(paramDrawable);
    return this;
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    d.setQwertyMode(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.SubMenuBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package android.support.v7.widget;

import android.content.Context;
import android.support.v7.appcompat.R.attr;
import android.support.v7.internal.view.SupportMenuInflater;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnTouchListener;
import h;
import s;
import v;

public class PopupMenu
  implements h, v
{
  private View mAnchor;
  private Context mContext;
  private PopupMenu.OnDismissListener mDismissListener;
  private View.OnTouchListener mDragListener;
  private MenuBuilder mMenu;
  private PopupMenu.OnMenuItemClickListener mMenuItemClickListener;
  private s mPopup;
  
  public PopupMenu(Context paramContext, View paramView)
  {
    this(paramContext, paramView, 0);
  }
  
  public PopupMenu(Context paramContext, View paramView, int paramInt)
  {
    this(paramContext, paramView, paramInt, R.attr.popupMenuStyle, 0);
  }
  
  public PopupMenu(Context paramContext, View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    mContext = paramContext;
    mMenu = new MenuBuilder(paramContext);
    mMenu.a(this);
    mAnchor = paramView;
    mPopup = new s(paramContext, mMenu, paramView, false, paramInt2, paramInt3);
    mPopup.setGravity(paramInt1);
    mPopup.setCallback(this);
  }
  
  public void dismiss()
  {
    mPopup.dismiss();
  }
  
  public View.OnTouchListener getDragToOpenListener()
  {
    if (mDragListener == null) {
      mDragListener = new PopupMenu.1(this, mAnchor);
    }
    return mDragListener;
  }
  
  public Menu getMenu()
  {
    return mMenu;
  }
  
  public MenuInflater getMenuInflater()
  {
    return new SupportMenuInflater(mContext);
  }
  
  public void inflate(int paramInt)
  {
    getMenuInflater().inflate(paramInt, mMenu);
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if (mDismissListener != null) {
      mDismissListener.onDismiss(this);
    }
  }
  
  public void onCloseSubMenu(SubMenuBuilder paramSubMenuBuilder) {}
  
  public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    if (mMenuItemClickListener != null) {
      return mMenuItemClickListener.onMenuItemClick(paramMenuItem);
    }
    return false;
  }
  
  public void onMenuModeChange(MenuBuilder paramMenuBuilder) {}
  
  public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder)
  {
    boolean bool = true;
    if (paramMenuBuilder == null) {
      bool = false;
    }
    while (!paramMenuBuilder.hasVisibleItems()) {
      return bool;
    }
    new s(mContext, paramMenuBuilder, mAnchor).show();
    return true;
  }
  
  public void setOnDismissListener(PopupMenu.OnDismissListener paramOnDismissListener)
  {
    mDismissListener = paramOnDismissListener;
  }
  
  public void setOnMenuItemClickListener(PopupMenu.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    mMenuItemClickListener = paramOnMenuItemClickListener;
  }
  
  public void show()
  {
    mPopup.show();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.PopupMenu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
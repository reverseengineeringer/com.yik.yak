import android.content.Context;
import android.support.v4.view.ViewCompat;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class c
  implements u
{
  private v mCallback;
  public Context mContext;
  private int mId;
  protected LayoutInflater mInflater;
  private int mItemLayoutRes;
  public MenuBuilder mMenu;
  private int mMenuLayoutRes;
  public w mMenuView;
  public Context mSystemContext;
  protected LayoutInflater mSystemInflater;
  
  public c(Context paramContext, int paramInt1, int paramInt2)
  {
    mSystemContext = paramContext;
    mSystemInflater = LayoutInflater.from(paramContext);
    mMenuLayoutRes = paramInt1;
    mItemLayoutRes = paramInt2;
  }
  
  protected void addItemView(View paramView, int paramInt)
  {
    ViewGroup localViewGroup = (ViewGroup)paramView.getParent();
    if (localViewGroup != null) {
      localViewGroup.removeView(paramView);
    }
    ((ViewGroup)mMenuView).addView(paramView, paramInt);
  }
  
  public abstract void bindItemView(MenuItemImpl paramMenuItemImpl, x paramx);
  
  public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public x createItemView(ViewGroup paramViewGroup)
  {
    return (x)mSystemInflater.inflate(mItemLayoutRes, paramViewGroup, false);
  }
  
  public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public boolean filterLeftoverView(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeViewAt(paramInt);
    return true;
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public v getCallback()
  {
    return mCallback;
  }
  
  public int getId()
  {
    return mId;
  }
  
  public View getItemView(MenuItemImpl paramMenuItemImpl, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView instanceof x)) {}
    for (paramView = (x)paramView;; paramView = createItemView(paramViewGroup))
    {
      bindItemView(paramMenuItemImpl, paramView);
      return (View)paramView;
    }
  }
  
  public w getMenuView(ViewGroup paramViewGroup)
  {
    if (mMenuView == null)
    {
      mMenuView = ((w)mSystemInflater.inflate(mMenuLayoutRes, paramViewGroup, false));
      mMenuView.initialize(mMenu);
      updateMenuView(true);
    }
    return mMenuView;
  }
  
  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    mContext = paramContext;
    mInflater = LayoutInflater.from(mContext);
    mMenu = paramMenuBuilder;
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if (mCallback != null) {
      mCallback.onCloseMenu(paramMenuBuilder, paramBoolean);
    }
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    if (mCallback != null) {
      return mCallback.onOpenSubMenu(paramSubMenuBuilder);
    }
    return false;
  }
  
  public void setCallback(v paramv)
  {
    mCallback = paramv;
  }
  
  public void setId(int paramInt)
  {
    mId = paramInt;
  }
  
  public boolean shouldIncludeItem(int paramInt, MenuItemImpl paramMenuItemImpl)
  {
    return true;
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    ViewGroup localViewGroup = (ViewGroup)mMenuView;
    if (localViewGroup == null) {}
    label198:
    label204:
    for (;;)
    {
      return;
      int j;
      if (mMenu != null)
      {
        mMenu.j();
        ArrayList localArrayList = mMenu.i();
        int m = localArrayList.size();
        int k = 0;
        int i = 0;
        j = i;
        if (k < m)
        {
          MenuItemImpl localMenuItemImpl2 = (MenuItemImpl)localArrayList.get(k);
          if (!shouldIncludeItem(i, localMenuItemImpl2)) {
            break label198;
          }
          View localView1 = localViewGroup.getChildAt(i);
          if ((localView1 instanceof x)) {}
          for (MenuItemImpl localMenuItemImpl1 = ((x)localView1).a();; localMenuItemImpl1 = null)
          {
            View localView2 = getItemView(localMenuItemImpl2, localView1, localViewGroup);
            if (localMenuItemImpl2 != localMenuItemImpl1)
            {
              localView2.setPressed(false);
              ViewCompat.jumpDrawablesToCurrentState(localView2);
            }
            if (localView2 != localView1) {
              addItemView(localView2, i);
            }
            i += 1;
            k += 1;
            break;
          }
        }
      }
      for (;;)
      {
        if (j >= localViewGroup.getChildCount()) {
          break label204;
        }
        if (!filterLeftoverView(localViewGroup, j))
        {
          j += 1;
          continue;
          break;
          j = 0;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
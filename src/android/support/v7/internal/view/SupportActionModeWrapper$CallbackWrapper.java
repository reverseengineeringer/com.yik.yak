package android.support.v7.internal.view;

import B;
import android.content.Context;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.util.SimpleArrayMap;
import android.view.Menu;
import android.view.MenuItem;

public class SupportActionModeWrapper$CallbackWrapper
  implements android.support.v7.view.ActionMode.Callback
{
  final SimpleArrayMap<android.support.v7.view.ActionMode, SupportActionModeWrapper> mActionModes;
  final Context mContext;
  final SimpleArrayMap<Menu, Menu> mMenus;
  final android.view.ActionMode.Callback mWrappedCallback;
  
  public SupportActionModeWrapper$CallbackWrapper(Context paramContext, android.view.ActionMode.Callback paramCallback)
  {
    mContext = paramContext;
    mWrappedCallback = paramCallback;
    mActionModes = new SimpleArrayMap();
    mMenus = new SimpleArrayMap();
  }
  
  private android.view.ActionMode getActionModeWrapper(android.support.v7.view.ActionMode paramActionMode)
  {
    SupportActionModeWrapper localSupportActionModeWrapper = (SupportActionModeWrapper)mActionModes.get(paramActionMode);
    if (localSupportActionModeWrapper != null) {
      return localSupportActionModeWrapper;
    }
    localSupportActionModeWrapper = new SupportActionModeWrapper(mContext, paramActionMode);
    mActionModes.put(paramActionMode, localSupportActionModeWrapper);
    return localSupportActionModeWrapper;
  }
  
  private Menu getMenuWrapper(Menu paramMenu)
  {
    Menu localMenu2 = (Menu)mMenus.get(paramMenu);
    Menu localMenu1 = localMenu2;
    if (localMenu2 == null)
    {
      localMenu1 = B.a(mContext, (SupportMenu)paramMenu);
      mMenus.put(paramMenu, localMenu1);
    }
    return localMenu1;
  }
  
  public boolean onActionItemClicked(android.support.v7.view.ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    return mWrappedCallback.onActionItemClicked(getActionModeWrapper(paramActionMode), B.a(mContext, (SupportMenuItem)paramMenuItem));
  }
  
  public boolean onCreateActionMode(android.support.v7.view.ActionMode paramActionMode, Menu paramMenu)
  {
    return mWrappedCallback.onCreateActionMode(getActionModeWrapper(paramActionMode), getMenuWrapper(paramMenu));
  }
  
  public void onDestroyActionMode(android.support.v7.view.ActionMode paramActionMode)
  {
    mWrappedCallback.onDestroyActionMode(getActionModeWrapper(paramActionMode));
  }
  
  public boolean onPrepareActionMode(android.support.v7.view.ActionMode paramActionMode, Menu paramMenu)
  {
    return mWrappedCallback.onPrepareActionMode(getActionModeWrapper(paramActionMode), getMenuWrapper(paramMenu));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.SupportActionModeWrapper.CallbackWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
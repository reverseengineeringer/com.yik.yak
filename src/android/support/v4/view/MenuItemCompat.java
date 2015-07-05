package android.support.v4.view;

import android.os.Build.VERSION;
import android.support.v4.internal.view.SupportMenuItem;
import android.view.MenuItem;
import android.view.View;

public class MenuItemCompat
{
  static final MenuItemCompat.MenuVersionImpl IMPL = new MenuItemCompat.BaseMenuVersionImpl();
  public static final int SHOW_AS_ACTION_ALWAYS = 2;
  public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
  public static final int SHOW_AS_ACTION_IF_ROOM = 1;
  public static final int SHOW_AS_ACTION_NEVER = 0;
  public static final int SHOW_AS_ACTION_WITH_TEXT = 4;
  private static final String TAG = "MenuItemCompat";
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
    {
      IMPL = new MenuItemCompat.IcsMenuVersionImpl();
      return;
    }
    if (i >= 11)
    {
      IMPL = new MenuItemCompat.HoneycombMenuVersionImpl();
      return;
    }
  }
  
  public static boolean collapseActionView(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).collapseActionView();
    }
    return IMPL.collapseActionView(paramMenuItem);
  }
  
  public static boolean expandActionView(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).expandActionView();
    }
    return IMPL.expandActionView(paramMenuItem);
  }
  
  public static ActionProvider getActionProvider(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).getSupportActionProvider();
    }
    return null;
  }
  
  public static View getActionView(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).getActionView();
    }
    return IMPL.getActionView(paramMenuItem);
  }
  
  public static boolean isActionViewExpanded(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).isActionViewExpanded();
    }
    return IMPL.isActionViewExpanded(paramMenuItem);
  }
  
  public static MenuItem setActionProvider(MenuItem paramMenuItem, ActionProvider paramActionProvider)
  {
    Object localObject = paramMenuItem;
    if ((paramMenuItem instanceof SupportMenuItem)) {
      localObject = ((SupportMenuItem)paramMenuItem).setSupportActionProvider(paramActionProvider);
    }
    return (MenuItem)localObject;
  }
  
  public static MenuItem setActionView(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).setActionView(paramInt);
    }
    return IMPL.setActionView(paramMenuItem, paramInt);
  }
  
  public static MenuItem setActionView(MenuItem paramMenuItem, View paramView)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).setActionView(paramView);
    }
    return IMPL.setActionView(paramMenuItem, paramView);
  }
  
  public static MenuItem setOnActionExpandListener(MenuItem paramMenuItem, MenuItemCompat.OnActionExpandListener paramOnActionExpandListener)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).setSupportOnActionExpandListener(paramOnActionExpandListener);
    }
    return IMPL.setOnActionExpandListener(paramMenuItem, paramOnActionExpandListener);
  }
  
  public static void setShowAsAction(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof SupportMenuItem))
    {
      ((SupportMenuItem)paramMenuItem).setShowAsAction(paramInt);
      return;
    }
    IMPL.setShowAsAction(paramMenuItem, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.MenuItemCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
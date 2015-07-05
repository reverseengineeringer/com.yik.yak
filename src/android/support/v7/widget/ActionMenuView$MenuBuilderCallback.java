package android.support.v7.widget;

import android.view.MenuItem;
import i;
import j;

class ActionMenuView$MenuBuilderCallback
  implements j
{
  private ActionMenuView$MenuBuilderCallback(ActionMenuView paramActionMenuView) {}
  
  public boolean onMenuItemSelected(i parami, MenuItem paramMenuItem)
  {
    return (ActionMenuView.access$200(this$0) != null) && (ActionMenuView.access$200(this$0).onMenuItemClick(paramMenuItem));
  }
  
  public void onMenuModeChange(i parami)
  {
    if (ActionMenuView.access$300(this$0) != null) {
      ActionMenuView.access$300(this$0).onMenuModeChange(parami);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuView.MenuBuilderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package android.support.v7.internal.app;

import android.support.v7.internal.widget.DecorToolbar;
import android.view.MenuItem;
import android.view.Window.Callback;
import i;
import j;

final class ToolbarActionBar$MenuBuilderCallback
  implements j
{
  private ToolbarActionBar$MenuBuilderCallback(ToolbarActionBar paramToolbarActionBar) {}
  
  public boolean onMenuItemSelected(i parami, MenuItem paramMenuItem)
  {
    return false;
  }
  
  public void onMenuModeChange(i parami)
  {
    if (ToolbarActionBar.access$000(this$0) != null)
    {
      if (!ToolbarActionBar.access$300(this$0).isOverflowMenuShowing()) {
        break label41;
      }
      ToolbarActionBar.access$000(this$0).onPanelClosed(8, parami);
    }
    label41:
    while (!ToolbarActionBar.access$000(this$0).onPreparePanel(0, null, parami)) {
      return;
    }
    ToolbarActionBar.access$000(this$0).onMenuOpened(8, parami);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.app.ToolbarActionBar.MenuBuilderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
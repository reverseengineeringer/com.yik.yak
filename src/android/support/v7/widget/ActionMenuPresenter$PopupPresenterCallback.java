package android.support.v7.widget;

import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.view.MenuItem;
import v;

class ActionMenuPresenter$PopupPresenterCallback
  implements v
{
  private ActionMenuPresenter$PopupPresenterCallback(ActionMenuPresenter paramActionMenuPresenter) {}
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if ((paramMenuBuilder instanceof SubMenuBuilder)) {
      ((SubMenuBuilder)paramMenuBuilder).p().a(false);
    }
    v localv = this$0.getCallback();
    if (localv != null) {
      localv.onCloseMenu(paramMenuBuilder, paramBoolean);
    }
  }
  
  public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder)
  {
    if (paramMenuBuilder == null) {
      return false;
    }
    this$0.mOpenSubMenuId = ((SubMenuBuilder)paramMenuBuilder).getItem().getItemId();
    v localv = this$0.getCallback();
    if (localv != null) {}
    for (boolean bool = localv.onOpenSubMenu(paramMenuBuilder);; bool = false) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter.PopupPresenterCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
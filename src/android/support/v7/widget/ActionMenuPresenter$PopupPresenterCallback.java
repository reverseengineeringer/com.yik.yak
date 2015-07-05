package android.support.v7.widget;

import D;
import android.view.MenuItem;
import i;
import y;

class ActionMenuPresenter$PopupPresenterCallback
  implements y
{
  private ActionMenuPresenter$PopupPresenterCallback(ActionMenuPresenter paramActionMenuPresenter) {}
  
  public void onCloseMenu(i parami, boolean paramBoolean)
  {
    if ((parami instanceof D)) {
      ((D)parami).p().a(false);
    }
    y localy = this$0.getCallback();
    if (localy != null) {
      localy.onCloseMenu(parami, paramBoolean);
    }
  }
  
  public boolean onOpenSubMenu(i parami)
  {
    if (parami == null) {
      return false;
    }
    this$0.mOpenSubMenuId = ((D)parami).getItem().getItemId();
    y localy = this$0.getCallback();
    if (localy != null) {}
    for (boolean bool = localy.onOpenSubMenu(parami);; bool = false) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter.PopupPresenterCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
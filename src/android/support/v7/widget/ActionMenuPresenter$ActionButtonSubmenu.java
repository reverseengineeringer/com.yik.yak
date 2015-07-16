package android.support.v7.widget;

import android.content.Context;
import android.support.v7.appcompat.R.attr;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.view.MenuItem;
import android.view.View;
import s;

class ActionMenuPresenter$ActionButtonSubmenu
  extends s
{
  private SubMenuBuilder mSubMenu;
  
  public ActionMenuPresenter$ActionButtonSubmenu(ActionMenuPresenter paramActionMenuPresenter, Context paramContext, SubMenuBuilder paramSubMenuBuilder)
  {
    super(paramContext, paramSubMenuBuilder, null, false, R.attr.actionOverflowMenuStyle);
    mSubMenu = paramSubMenuBuilder;
    int j;
    int i;
    if (!((MenuItemImpl)paramSubMenuBuilder.getItem()).i())
    {
      if (ActionMenuPresenter.access$500(paramActionMenuPresenter) == null)
      {
        paramContext = (View)ActionMenuPresenter.access$600(paramActionMenuPresenter);
        setAnchorView(paramContext);
      }
    }
    else
    {
      setCallback(mPopupPresenterCallback);
      j = paramSubMenuBuilder.size();
      i = 0;
    }
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        paramActionMenuPresenter = paramSubMenuBuilder.getItem(i);
        if ((paramActionMenuPresenter.isVisible()) && (paramActionMenuPresenter.getIcon() != null)) {
          bool1 = true;
        }
      }
      else
      {
        setForceShowIcon(bool1);
        return;
        paramContext = ActionMenuPresenter.access$500(paramActionMenuPresenter);
        break;
      }
      i += 1;
    }
  }
  
  public void onDismiss()
  {
    super.onDismiss();
    ActionMenuPresenter.access$702(this$0, null);
    this$0.mOpenSubMenuId = 0;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter.ActionButtonSubmenu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
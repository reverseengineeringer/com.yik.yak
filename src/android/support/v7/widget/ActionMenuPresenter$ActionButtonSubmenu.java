package android.support.v7.widget;

import D;
import android.content.Context;
import android.support.v7.appcompat.R.attr;
import android.view.MenuItem;
import android.view.View;
import m;
import v;

class ActionMenuPresenter$ActionButtonSubmenu
  extends v
{
  private D mSubMenu;
  
  public ActionMenuPresenter$ActionButtonSubmenu(ActionMenuPresenter paramActionMenuPresenter, Context paramContext, D paramD)
  {
    super(paramContext, paramD, null, false, R.attr.actionOverflowMenuStyle);
    mSubMenu = paramD;
    int j;
    int i;
    if (!((m)paramD.getItem()).i())
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
      j = paramD.size();
      i = 0;
    }
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        paramActionMenuPresenter = paramD.getItem(i);
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
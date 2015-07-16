package android.support.v7.widget;

import android.content.Context;
import android.support.v7.appcompat.R.attr;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.view.View;
import s;

class ActionMenuPresenter$OverflowPopup
  extends s
{
  public ActionMenuPresenter$OverflowPopup(ActionMenuPresenter paramActionMenuPresenter, Context paramContext, MenuBuilder paramMenuBuilder, View paramView, boolean paramBoolean)
  {
    super(paramContext, paramMenuBuilder, paramView, paramBoolean, R.attr.actionOverflowMenuStyle);
    setGravity(8388613);
    setCallback(mPopupPresenterCallback);
  }
  
  public void onDismiss()
  {
    super.onDismiss();
    ActionMenuPresenter.access$400(this$0).close();
    ActionMenuPresenter.access$202(this$0, null);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter.OverflowPopup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
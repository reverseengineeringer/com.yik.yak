package android.support.v7.app;

import android.view.Window.Callback;
import i;
import y;

final class AppCompatDelegateImplV7$PanelMenuPresenterCallback
  implements y
{
  private AppCompatDelegateImplV7$PanelMenuPresenterCallback(AppCompatDelegateImplV7 paramAppCompatDelegateImplV7) {}
  
  public void onCloseMenu(i parami, boolean paramBoolean)
  {
    i locali = parami.p();
    if (locali != parami) {}
    for (int i = 1;; i = 0)
    {
      AppCompatDelegateImplV7 localAppCompatDelegateImplV7 = this$0;
      if (i != 0) {
        parami = locali;
      }
      parami = AppCompatDelegateImplV7.access$600(localAppCompatDelegateImplV7, parami);
      if (parami != null)
      {
        if (i == 0) {
          break;
        }
        AppCompatDelegateImplV7.access$700(this$0, featureId, parami, locali);
        AppCompatDelegateImplV7.access$800(this$0, parami, true);
      }
      return;
    }
    AppCompatDelegateImplV7.access$800(this$0, parami, paramBoolean);
  }
  
  public boolean onOpenSubMenu(i parami)
  {
    if ((parami == null) && (this$0.mHasActionBar))
    {
      Window.Callback localCallback = this$0.getWindowCallback();
      if ((localCallback != null) && (!this$0.isDestroyed())) {
        localCallback.onMenuOpened(8, parami);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplV7.PanelMenuPresenterCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
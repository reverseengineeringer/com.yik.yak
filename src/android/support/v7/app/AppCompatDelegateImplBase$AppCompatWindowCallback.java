package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.os.Build.VERSION;
import android.support.v7.internal.view.WindowCallbackWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.Window.Callback;
import i;

class AppCompatDelegateImplBase$AppCompatWindowCallback
  extends WindowCallbackWrapper
{
  AppCompatDelegateImplBase$AppCompatWindowCallback(AppCompatDelegateImplBase paramAppCompatDelegateImplBase, Window.Callback paramCallback)
  {
    super(paramCallback);
  }
  
  private boolean bypassPrepareOptionsPanelIfNeeded()
  {
    if ((Build.VERSION.SDK_INT < 16) && ((this$0.mOriginalWindowCallback instanceof Activity))) {}
    while ((this$0.mOriginalWindowCallback instanceof Dialog)) {
      return true;
    }
    return false;
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (this$0.dispatchKeyEvent(paramKeyEvent)) {
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public boolean dispatchKeyShortcutEvent(KeyEvent paramKeyEvent)
  {
    if (this$0.onKeyShortcut(paramKeyEvent.getKeyCode(), paramKeyEvent)) {
      return true;
    }
    return super.dispatchKeyShortcutEvent(paramKeyEvent);
  }
  
  public void onContentChanged() {}
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if ((paramInt == 0) && (!(paramMenu instanceof i))) {
      return false;
    }
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }
  
  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    if (this$0.onMenuOpened(paramInt, paramMenu)) {
      return true;
    }
    return super.onMenuOpened(paramInt, paramMenu);
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    if (this$0.onPanelClosed(paramInt, paramMenu)) {
      return;
    }
    super.onPanelClosed(paramInt, paramMenu);
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if ((paramInt == 0) && (!(paramMenu instanceof i))) {}
    do
    {
      return false;
      if ((paramInt != 0) || (!bypassPrepareOptionsPanelIfNeeded())) {
        break;
      }
      if ((this$0.mOriginalWindowCallback instanceof Activity)) {
        return ((Activity)this$0.mOriginalWindowCallback).onPrepareOptionsMenu(paramMenu);
      }
    } while (!(this$0.mOriginalWindowCallback instanceof Dialog));
    return ((Dialog)this$0.mOriginalWindowCallback).onPrepareOptionsMenu(paramMenu);
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplBase.AppCompatWindowCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
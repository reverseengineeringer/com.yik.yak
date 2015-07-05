package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.internal.view.SupportMenuInflater;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ActionMode.Callback;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.Window;
import android.view.Window.Callback;

abstract class AppCompatDelegateImplBase
  extends AppCompatDelegate
{
  private ActionBar mActionBar;
  final AppCompatCallback mAppCompatCallback;
  final Context mContext;
  boolean mHasActionBar;
  private boolean mIsDestroyed;
  boolean mIsFloating;
  private MenuInflater mMenuInflater;
  final Window.Callback mOriginalWindowCallback;
  boolean mOverlayActionBar;
  boolean mOverlayActionMode;
  private CharSequence mTitle;
  final Window mWindow;
  boolean mWindowNoTitle;
  
  AppCompatDelegateImplBase(Context paramContext, Window paramWindow, AppCompatCallback paramAppCompatCallback)
  {
    mContext = paramContext;
    mWindow = paramWindow;
    mAppCompatCallback = paramAppCompatCallback;
    mOriginalWindowCallback = mWindow.getCallback();
    if ((mOriginalWindowCallback instanceof AppCompatDelegateImplBase.AppCompatWindowCallback)) {
      throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }
    mWindow.setCallback(new AppCompatDelegateImplBase.AppCompatWindowCallback(this, mOriginalWindowCallback));
  }
  
  abstract ActionBar createSupportActionBar();
  
  abstract boolean dispatchKeyEvent(KeyEvent paramKeyEvent);
  
  final Context getActionBarThemedContext()
  {
    Context localContext = null;
    Object localObject = getSupportActionBar();
    if (localObject != null) {
      localContext = ((ActionBar)localObject).getThemedContext();
    }
    localObject = localContext;
    if (localContext == null) {
      localObject = mContext;
    }
    return (Context)localObject;
  }
  
  public final ActionBarDrawerToggle.Delegate getDrawerToggleDelegate()
  {
    return new AppCompatDelegateImplBase.ActionBarDrawableToggleImpl(this, null);
  }
  
  public MenuInflater getMenuInflater()
  {
    if (mMenuInflater == null) {
      mMenuInflater = new SupportMenuInflater(getActionBarThemedContext());
    }
    return mMenuInflater;
  }
  
  public ActionBar getSupportActionBar()
  {
    if ((mHasActionBar) && (mActionBar == null)) {
      mActionBar = createSupportActionBar();
    }
    return mActionBar;
  }
  
  final CharSequence getTitle()
  {
    if ((mOriginalWindowCallback instanceof Activity)) {
      return ((Activity)mOriginalWindowCallback).getTitle();
    }
    return mTitle;
  }
  
  final Window.Callback getWindowCallback()
  {
    return mWindow.getCallback();
  }
  
  final boolean isDestroyed()
  {
    return mIsDestroyed;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    paramBundle = mContext.obtainStyledAttributes(R.styleable.Theme);
    if (!paramBundle.hasValue(R.styleable.Theme_windowActionBar))
    {
      paramBundle.recycle();
      throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }
    if (paramBundle.getBoolean(R.styleable.Theme_windowActionBar, false)) {
      mHasActionBar = true;
    }
    if (paramBundle.getBoolean(R.styleable.Theme_windowActionBarOverlay, false)) {
      mOverlayActionBar = true;
    }
    if (paramBundle.getBoolean(R.styleable.Theme_windowActionModeOverlay, false)) {
      mOverlayActionMode = true;
    }
    mIsFloating = paramBundle.getBoolean(R.styleable.Theme_android_windowIsFloating, false);
    mWindowNoTitle = paramBundle.getBoolean(R.styleable.Theme_windowNoTitle, false);
    paramBundle.recycle();
  }
  
  public final void onDestroy()
  {
    mIsDestroyed = true;
  }
  
  abstract boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent);
  
  abstract boolean onMenuOpened(int paramInt, Menu paramMenu);
  
  abstract boolean onPanelClosed(int paramInt, Menu paramMenu);
  
  abstract void onTitleChanged(CharSequence paramCharSequence);
  
  final ActionBar peekSupportActionBar()
  {
    return mActionBar;
  }
  
  final void setSupportActionBar(ActionBar paramActionBar)
  {
    mActionBar = paramActionBar;
  }
  
  public final void setTitle(CharSequence paramCharSequence)
  {
    mTitle = paramCharSequence;
    onTitleChanged(paramCharSequence);
  }
  
  abstract ActionMode startSupportActionModeFromWindow(ActionMode.Callback paramCallback);
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
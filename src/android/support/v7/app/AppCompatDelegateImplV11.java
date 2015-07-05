package android.support.v7.app;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.v7.internal.view.SupportActionModeWrapper;
import android.support.v7.internal.view.SupportActionModeWrapper.CallbackWrapper;
import android.support.v7.internal.widget.NativeActionModeAwareLayout;
import android.support.v7.internal.widget.NativeActionModeAwareLayout.OnActionModeForChildListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.LayoutInflater.Factory2;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;

@TargetApi(11)
class AppCompatDelegateImplV11
  extends AppCompatDelegateImplV7
  implements NativeActionModeAwareLayout.OnActionModeForChildListener
{
  private NativeActionModeAwareLayout mNativeActionModeAwareLayout;
  
  AppCompatDelegateImplV11(Context paramContext, Window paramWindow, AppCompatCallback paramAppCompatCallback)
  {
    super(paramContext, paramWindow, paramAppCompatCallback);
  }
  
  View callActivityOnCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    View localView = super.callActivityOnCreateView(paramView, paramString, paramContext, paramAttributeSet);
    if (localView != null) {
      return localView;
    }
    if ((mOriginalWindowCallback instanceof LayoutInflater.Factory2)) {
      return ((LayoutInflater.Factory2)mOriginalWindowCallback).onCreateView(paramView, paramString, paramContext, paramAttributeSet);
    }
    return null;
  }
  
  void onSubDecorInstalled(ViewGroup paramViewGroup)
  {
    mNativeActionModeAwareLayout = ((NativeActionModeAwareLayout)paramViewGroup.findViewById(16908290));
    if (mNativeActionModeAwareLayout != null) {
      mNativeActionModeAwareLayout.setActionModeForChildListener(this);
    }
  }
  
  public ActionMode startActionModeForChild(View paramView, ActionMode.Callback paramCallback)
  {
    paramView = startSupportActionMode(new SupportActionModeWrapper.CallbackWrapper(paramView.getContext(), paramCallback));
    if (paramView != null) {
      return new SupportActionModeWrapper(mContext, paramView);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplV11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
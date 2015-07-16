package com.yik.yak.ui.view;

import FW;
import FX;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.webkit.WebView;

public class PrivacyPolicyWebView
  extends WebView
{
  public FW a = null;
  public FX b = null;
  private boolean c = false;
  
  public PrivacyPolicyWebView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PrivacyPolicyWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public PrivacyPolicyWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = (int)Math.floor(getContentHeight() * getResourcesgetDisplayMetricsdensity) - getHeight() - 10;
    if (paramInt2 >= i) {
      if (!c)
      {
        c = true;
        a.a(this);
      }
    }
    for (;;)
    {
      super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
      if ((paramInt2 < i - (int)getResources().getDimension(2131493001) + 10) && (c))
      {
        c = false;
        b.a(this);
      }
    }
  }
  
  public void setOnBottomReachedListener(FW paramFW)
  {
    a = paramFW;
  }
  
  public void setOnMovedFromBottomListener(FX paramFX)
  {
    b = paramFX;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.PrivacyPolicyWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
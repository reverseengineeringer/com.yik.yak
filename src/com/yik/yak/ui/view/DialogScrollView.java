package com.yik.yak.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View.MeasureSpec;
import android.view.WindowManager;
import android.widget.ScrollView;

public class DialogScrollView
  extends ScrollView
{
  private Context a;
  
  public DialogScrollView(Context paramContext)
  {
    super(paramContext);
    a = paramContext;
  }
  
  public DialogScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = paramContext;
  }
  
  public DialogScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a = paramContext;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int j = paramInt2;
    int k = paramInt2;
    try
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      j = paramInt2;
      k = paramInt2;
      ((WindowManager)a.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
      j = paramInt2;
      k = paramInt2;
      int n = heightPixels;
      j = paramInt2;
      k = paramInt2;
      int m = View.MeasureSpec.getSize(paramInt2);
      int i = m;
      if (m > n * 0.5D) {
        i = (int)(n * 0.5D);
      }
      j = paramInt2;
      k = paramInt2;
      paramInt2 = View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE);
      j = paramInt2;
      k = paramInt2;
      getLayoutParamsheight = i;
      return;
    }
    catch (Exception localException) {}finally
    {
      super.onMeasure(paramInt1, k);
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.DialogScrollView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
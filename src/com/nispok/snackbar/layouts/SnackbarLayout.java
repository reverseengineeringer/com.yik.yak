package com.nispok.snackbar.layouts;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;

public class SnackbarLayout
  extends LinearLayout
{
  private int a = Integer.MAX_VALUE;
  private int b = Integer.MAX_VALUE;
  
  public SnackbarLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public SnackbarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SnackbarLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int j = View.MeasureSpec.getSize(paramInt1);
    int i = paramInt1;
    if (a < j)
    {
      paramInt1 = View.MeasureSpec.getMode(paramInt1);
      i = View.MeasureSpec.makeMeasureSpec(a, paramInt1);
    }
    j = View.MeasureSpec.getSize(paramInt2);
    paramInt1 = paramInt2;
    if (b < j)
    {
      paramInt1 = View.MeasureSpec.getMode(paramInt2);
      paramInt1 = View.MeasureSpec.makeMeasureSpec(b, paramInt1);
    }
    super.onMeasure(i, paramInt1);
  }
  
  public void setMaxHeight(int paramInt)
  {
    b = paramInt;
    requestLayout();
  }
  
  public void setMaxWidth(int paramInt)
  {
    a = paramInt;
    requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.nispok.snackbar.layouts.SnackbarLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
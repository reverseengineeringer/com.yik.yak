package com.yik.yak.ui.view;

import FQ;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import zZ;

public class MultipleStateIconView
  extends ImageView
{
  private boolean a = false;
  private float b = 0.5F;
  private int c;
  private int d;
  private int e;
  private FQ f = FQ.c;
  
  public MultipleStateIconView(Context paramContext)
  {
    super(paramContext);
  }
  
  public MultipleStateIconView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public MultipleStateIconView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private void a(AttributeSet paramAttributeSet)
  {
    paramAttributeSet = getContext().getTheme().obtainStyledAttributes(paramAttributeSet, zZ.MultipleStateIconView, 0, 0);
    int j = paramAttributeSet.getIndexCount();
    int i = 0;
    if (i < j)
    {
      int k = paramAttributeSet.getIndex(i);
      switch (k)
      {
      }
      for (;;)
      {
        i += 1;
        break;
        c = paramAttributeSet.getResourceId(k, 0);
        continue;
        b = paramAttributeSet.getFloat(k, 0.5F);
        continue;
        e = paramAttributeSet.getResourceId(k, 0);
        continue;
        d = paramAttributeSet.getResourceId(k, 0);
      }
    }
    paramAttributeSet.recycle();
    b();
  }
  
  public FQ a()
  {
    return f;
  }
  
  public void b()
  {
    setIconState(f);
    if (a)
    {
      setAlpha(b);
      return;
    }
    setAlpha(1.0F);
  }
  
  public boolean c()
  {
    return a;
  }
  
  public void setDisabled(boolean paramBoolean)
  {
    a = paramBoolean;
    b();
  }
  
  public void setIconState(FQ paramFQ)
  {
    if (f == paramFQ) {
      return;
    }
    switch (FP.a[paramFQ.ordinal()])
    {
    default: 
      setImageResource(c);
    }
    for (;;)
    {
      f = paramFQ;
      return;
      setImageResource(e);
      continue;
      setImageResource(d);
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.MultipleStateIconView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
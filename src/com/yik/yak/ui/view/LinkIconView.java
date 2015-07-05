package com.yik.yak.ui.view;

import Fj;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

public class LinkIconView
  extends ImageView
{
  private Fj a = Fj.c;
  
  public LinkIconView(Context paramContext)
  {
    super(paramContext);
  }
  
  public LinkIconView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public LinkIconView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public Fj a()
  {
    return a;
  }
  
  public void setIconState(Fj paramFj)
  {
    if (a == paramFj) {
      return;
    }
    switch (Fi.a[paramFj.ordinal()])
    {
    }
    for (;;)
    {
      a = paramFj;
      return;
      setImageResource(2130837785);
      continue;
      setImageResource(2130837786);
      continue;
      setImageResource(2130837787);
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.LinkIconView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
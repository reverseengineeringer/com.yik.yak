package com.yik.yak.ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import zZ;

public class VoteArrowView
  extends ImageView
{
  private boolean a = true;
  private boolean b = false;
  private int c;
  private int d;
  private int e;
  
  public VoteArrowView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  private void a()
  {
    int i;
    if (a) {
      if (b) {
        i = d;
      }
    }
    for (;;)
    {
      setImageDrawable(getContext().getResources().getDrawable(i));
      return;
      i = e;
      continue;
      i = c;
    }
  }
  
  private void a(AttributeSet paramAttributeSet)
  {
    paramAttributeSet = getContext().getTheme().obtainStyledAttributes(paramAttributeSet, zZ.VoteArrowView, 0, 0);
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
        a = paramAttributeSet.getBoolean(k, a);
        continue;
        b = paramAttributeSet.getBoolean(k, b);
        continue;
        c = paramAttributeSet.getResourceId(k, 0);
        continue;
        d = paramAttributeSet.getResourceId(k, 0);
        continue;
        e = paramAttributeSet.getResourceId(k, 0);
      }
    }
    paramAttributeSet.recycle();
    a();
  }
  
  public boolean isEnabled()
  {
    return a;
  }
  
  public boolean isSelected()
  {
    return b;
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    if (a != paramBoolean)
    {
      a = paramBoolean;
      a();
    }
  }
  
  public void setSelected(boolean paramBoolean)
  {
    if (b != paramBoolean)
    {
      b = paramBoolean;
      a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.VoteArrowView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
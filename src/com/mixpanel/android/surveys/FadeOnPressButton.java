package com.mixpanel.android.surveys;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;

@TargetApi(16)
public class FadeOnPressButton
  extends Button
{
  private boolean a;
  
  public FadeOnPressButton(Context paramContext)
  {
    super(paramContext);
  }
  
  public FadeOnPressButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public FadeOnPressButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(float paramFloat)
  {
    setAlpha(paramFloat);
  }
  
  protected void drawableStateChanged()
  {
    int k = 0;
    int[] arrayOfInt = getDrawableState();
    int m = arrayOfInt.length;
    int i = 0;
    for (;;)
    {
      int j = k;
      if (i < m)
      {
        if (arrayOfInt[i] == 16842919)
        {
          if (!a) {
            a(0.5F);
          }
          j = 1;
        }
      }
      else
      {
        if ((a) && (j == 0))
        {
          a(1.0F);
          a = true;
        }
        super.drawableStateChanged();
        return;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.mixpanel.android.surveys.FadeOnPressButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
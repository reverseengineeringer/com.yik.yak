package com.mixpanel.android.surveys;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.animation.Animation;
import android.widget.CheckedTextView;
import tJ;

public class SurveyChoiceView
  extends CheckedTextView
{
  private Drawable a;
  private float b;
  private float c;
  
  public SurveyChoiceView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public SurveyChoiceView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public SurveyChoiceView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    b = 0.0F;
    c = 1.5F;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    int i = 0;
    Drawable localDrawable = a;
    float f = getResourcesgetDisplayMetricsdensity;
    if ((localDrawable != null) && (isChecked())) {}
    for (int j = (int)(14.0F * f);; j = 0)
    {
      int k = (int)(12.0F * f);
      int m = (int)(f * 22.0F);
      setCheckMarkDrawable(null);
      setPadding((int)(m + c * j), k, m, k);
      super.onDraw(paramCanvas);
      int n = (int)(m + b * j);
      setPadding(n, k, m, k);
      setCheckMarkDrawable(localDrawable);
      if (localDrawable != null) {
        switch (getGravity() & 0x70)
        {
        }
      }
      for (;;)
      {
        localDrawable.setBounds(n + getScrollX(), i, j + n + getScrollX(), i + j);
        localDrawable.draw(paramCanvas);
        setPadding(m, k, m, k);
        return;
        i = getHeight() - j;
        continue;
        i = (getHeight() - j) / 2;
      }
    }
  }
  
  public void setCheckMarkDrawable(Drawable paramDrawable)
  {
    super.setCheckMarkDrawable(paramDrawable);
    a = paramDrawable;
  }
  
  public void setChecked(boolean paramBoolean)
  {
    boolean bool = isChecked();
    super.setChecked(paramBoolean);
    if ((isChecked()) && (!bool))
    {
      tJ localtJ = new tJ(this, null);
      localtJ.setDuration(300L);
      startAnimation(localtJ);
    }
  }
}

/* Location:
 * Qualified Name:     com.mixpanel.android.surveys.SurveyChoiceView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
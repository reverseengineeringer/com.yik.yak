package com.yik.yak.ui.typeface;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.TypefaceSpan;

public class CustomTypefaceSpan
  extends TypefaceSpan
{
  private final Typeface a;
  private int b;
  
  public CustomTypefaceSpan(int paramInt, Typeface paramTypeface)
  {
    super("");
    a = paramTypeface;
    b = paramInt;
  }
  
  private void a(Paint paramPaint, Typeface paramTypeface)
  {
    Typeface localTypeface = paramPaint.getTypeface();
    if (localTypeface == null) {}
    for (int i = 0;; i = localTypeface.getStyle())
    {
      paramPaint.setColor(b);
      i &= (paramTypeface.getStyle() ^ 0xFFFFFFFF);
      if ((i & 0x1) != 0) {
        paramPaint.setFakeBoldText(true);
      }
      if ((i & 0x2) != 0) {
        paramPaint.setTextSkewX(-0.25F);
      }
      paramPaint.setTypeface(paramTypeface);
      return;
    }
  }
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    a(paramTextPaint, a);
  }
  
  public void updateMeasureState(TextPaint paramTextPaint)
  {
    a(paramTextPaint, a);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.typeface.CustomTypefaceSpan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
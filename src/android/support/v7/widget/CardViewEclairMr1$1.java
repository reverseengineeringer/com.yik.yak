package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

class CardViewEclairMr1$1
  implements RoundRectDrawableWithShadow.RoundRectHelper
{
  CardViewEclairMr1$1(CardViewEclairMr1 paramCardViewEclairMr1) {}
  
  public void drawRoundRect(Canvas paramCanvas, RectF paramRectF, float paramFloat, Paint paramPaint)
  {
    float f2 = 2.0F * paramFloat;
    float f3 = paramRectF.width() - f2 - 1.0F;
    float f4 = paramRectF.height();
    float f1 = paramFloat;
    if (paramFloat >= 1.0F)
    {
      f1 = paramFloat + 0.5F;
      this$0.sCornerRect.set(-f1, -f1, f1, f1);
      int i = paramCanvas.save();
      paramCanvas.translate(left + f1, top + f1);
      paramCanvas.drawArc(this$0.sCornerRect, 180.0F, 90.0F, true, paramPaint);
      paramCanvas.translate(f3, 0.0F);
      paramCanvas.rotate(90.0F);
      paramCanvas.drawArc(this$0.sCornerRect, 180.0F, 90.0F, true, paramPaint);
      paramCanvas.translate(f4 - f2 - 1.0F, 0.0F);
      paramCanvas.rotate(90.0F);
      paramCanvas.drawArc(this$0.sCornerRect, 180.0F, 90.0F, true, paramPaint);
      paramCanvas.translate(f3, 0.0F);
      paramCanvas.rotate(90.0F);
      paramCanvas.drawArc(this$0.sCornerRect, 180.0F, 90.0F, true, paramPaint);
      paramCanvas.restoreToCount(i);
      paramCanvas.drawRect(left + f1 - 1.0F, top, right - f1 + 1.0F, top + f1, paramPaint);
      paramCanvas.drawRect(left + f1 - 1.0F, bottom - f1 + 1.0F, right - f1 + 1.0F, bottom, paramPaint);
    }
    paramFloat = left;
    f2 = top;
    paramCanvas.drawRect(paramFloat, Math.max(0.0F, f1 - 1.0F) + f2, right, bottom - f1 + 1.0F, paramPaint);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.CardViewEclairMr1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
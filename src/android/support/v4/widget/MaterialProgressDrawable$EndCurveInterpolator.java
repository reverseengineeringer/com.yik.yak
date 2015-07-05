package android.support.v4.widget;

import android.view.animation.AccelerateDecelerateInterpolator;

class MaterialProgressDrawable$EndCurveInterpolator
  extends AccelerateDecelerateInterpolator
{
  public float getInterpolation(float paramFloat)
  {
    return super.getInterpolation(Math.max(0.0F, (paramFloat - 0.5F) * 2.0F));
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.MaterialProgressDrawable.EndCurveInterpolator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
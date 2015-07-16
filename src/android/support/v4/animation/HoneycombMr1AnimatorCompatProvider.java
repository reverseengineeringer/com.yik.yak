package android.support.v4.animation;

import android.animation.ValueAnimator;

class HoneycombMr1AnimatorCompatProvider
  implements AnimatorProvider
{
  public ValueAnimatorCompat emptyValueAnimator()
  {
    return new HoneycombMr1AnimatorCompatProvider.HoneycombValueAnimatorCompat(ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F }));
  }
}

/* Location:
 * Qualified Name:     android.support.v4.animation.HoneycombMr1AnimatorCompatProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
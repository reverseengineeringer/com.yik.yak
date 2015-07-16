package android.support.v4.animation;

class DonutAnimatorCompatProvider
  implements AnimatorProvider
{
  public ValueAnimatorCompat emptyValueAnimator()
  {
    return new DonutAnimatorCompatProvider.DonutFloatValueAnimator();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.animation.DonutAnimatorCompatProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
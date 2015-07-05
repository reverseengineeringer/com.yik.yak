package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;

class MaterialProgressDrawable$1
  extends Animation
{
  MaterialProgressDrawable$1(MaterialProgressDrawable paramMaterialProgressDrawable, MaterialProgressDrawable.Ring paramRing) {}
  
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    if (this$0.mFinishing)
    {
      MaterialProgressDrawable.access$200(this$0, paramFloat, val$ring);
      return;
    }
    float f3 = (float)Math.toRadians(val$ring.getStrokeWidth() / (6.283185307179586D * val$ring.getCenterRadius()));
    float f4 = val$ring.getStartingEndTrim();
    float f1 = val$ring.getStartingStartTrim();
    float f2 = val$ring.getStartingRotation();
    float f5 = MaterialProgressDrawable.access$300().getInterpolation(paramFloat);
    val$ring.setEndTrim((0.8F - f3) * f5 + f4);
    f3 = MaterialProgressDrawable.access$400().getInterpolation(paramFloat);
    val$ring.setStartTrim(f3 * 0.8F + f1);
    val$ring.setRotation(0.25F * paramFloat + f2);
    f1 = MaterialProgressDrawable.access$500(this$0) / 5.0F;
    this$0.setRotation(144.0F * paramFloat + 720.0F * f1);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.MaterialProgressDrawable.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
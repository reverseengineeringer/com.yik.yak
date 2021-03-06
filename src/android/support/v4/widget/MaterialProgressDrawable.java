package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;

class MaterialProgressDrawable
  extends Drawable
  implements Animatable
{
  private static final int ANIMATION_DURATION = 1332;
  private static final int ARROW_HEIGHT = 5;
  private static final int ARROW_HEIGHT_LARGE = 6;
  private static final float ARROW_OFFSET_ANGLE = 5.0F;
  private static final int ARROW_WIDTH = 10;
  private static final int ARROW_WIDTH_LARGE = 12;
  private static final float CENTER_RADIUS = 8.75F;
  private static final float CENTER_RADIUS_LARGE = 12.5F;
  private static final int CIRCLE_DIAMETER = 40;
  private static final int CIRCLE_DIAMETER_LARGE = 56;
  private static final float COLOR_START_DELAY_OFFSET = 0.75F;
  static final int DEFAULT = 1;
  private static final float END_TRIM_START_DELAY_OFFSET = 0.5F;
  private static final float FULL_ROTATION = 1080.0F;
  static final int LARGE = 0;
  private static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
  private static final Interpolator MATERIAL_INTERPOLATOR = new FastOutSlowInInterpolator();
  private static final float MAX_PROGRESS_ARC = 0.8F;
  private static final float NUM_POINTS = 5.0F;
  private static final float START_TRIM_DURATION_OFFSET = 0.5F;
  private static final float STROKE_WIDTH = 2.5F;
  private static final float STROKE_WIDTH_LARGE = 3.0F;
  private final int[] COLORS = { -16777216 };
  private Animation mAnimation;
  private final ArrayList<Animation> mAnimators = new ArrayList();
  private final Drawable.Callback mCallback = new MaterialProgressDrawable.3(this);
  boolean mFinishing;
  private double mHeight;
  private View mParent;
  private Resources mResources;
  private final MaterialProgressDrawable.Ring mRing;
  private float mRotation;
  private float mRotationCount;
  private double mWidth;
  
  public MaterialProgressDrawable(Context paramContext, View paramView)
  {
    mParent = paramView;
    mResources = paramContext.getResources();
    mRing = new MaterialProgressDrawable.Ring(mCallback);
    mRing.setColors(COLORS);
    updateSizes(1);
    setupAnimators();
  }
  
  private void applyFinishTranslation(float paramFloat, MaterialProgressDrawable.Ring paramRing)
  {
    updateRingColor(paramFloat, paramRing);
    float f1 = (float)(Math.floor(paramRing.getStartingRotation() / 0.8F) + 1.0D);
    float f2 = getMinProgressArc(paramRing);
    float f3 = paramRing.getStartingStartTrim();
    paramRing.setStartTrim((paramRing.getStartingEndTrim() - f2 - paramRing.getStartingStartTrim()) * paramFloat + f3);
    paramRing.setEndTrim(paramRing.getStartingEndTrim());
    f2 = paramRing.getStartingRotation();
    paramRing.setRotation((f1 - paramRing.getStartingRotation()) * paramFloat + f2);
  }
  
  private int evaluateColorChange(float paramFloat, int paramInt1, int paramInt2)
  {
    int k = Integer.valueOf(paramInt1).intValue();
    paramInt1 = k >> 24 & 0xFF;
    int i = k >> 16 & 0xFF;
    int j = k >> 8 & 0xFF;
    k &= 0xFF;
    paramInt2 = Integer.valueOf(paramInt2).intValue();
    int m = (int)(((paramInt2 >> 24 & 0xFF) - paramInt1) * paramFloat);
    int n = (int)(((paramInt2 >> 16 & 0xFF) - i) * paramFloat);
    int i1 = (int)(((paramInt2 >> 8 & 0xFF) - j) * paramFloat);
    return k + (int)(((paramInt2 & 0xFF) - k) * paramFloat) | paramInt1 + m << 24 | i + n << 16 | i1 + j << 8;
  }
  
  private float getMinProgressArc(MaterialProgressDrawable.Ring paramRing)
  {
    return (float)Math.toRadians(paramRing.getStrokeWidth() / (6.283185307179586D * paramRing.getCenterRadius()));
  }
  
  private float getRotation()
  {
    return mRotation;
  }
  
  private void setSizeParameters(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, float paramFloat1, float paramFloat2)
  {
    MaterialProgressDrawable.Ring localRing = mRing;
    float f = mResources.getDisplayMetrics().density;
    mWidth = (f * paramDouble1);
    mHeight = (f * paramDouble2);
    localRing.setStrokeWidth((float)paramDouble4 * f);
    localRing.setCenterRadius(f * paramDouble3);
    localRing.setColorIndex(0);
    localRing.setArrowDimensions(paramFloat1 * f, f * paramFloat2);
    localRing.setInsets((int)mWidth, (int)mHeight);
  }
  
  private void setupAnimators()
  {
    MaterialProgressDrawable.Ring localRing = mRing;
    MaterialProgressDrawable.1 local1 = new MaterialProgressDrawable.1(this, localRing);
    local1.setRepeatCount(-1);
    local1.setRepeatMode(1);
    local1.setInterpolator(LINEAR_INTERPOLATOR);
    local1.setAnimationListener(new MaterialProgressDrawable.2(this, localRing));
    mAnimation = local1;
  }
  
  private void updateRingColor(float paramFloat, MaterialProgressDrawable.Ring paramRing)
  {
    if (paramFloat > 0.75F) {
      paramRing.setColor(evaluateColorChange((paramFloat - 0.75F) / 0.25F, paramRing.getStartingColor(), paramRing.getNextColor()));
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    int i = paramCanvas.save();
    paramCanvas.rotate(mRotation, localRect.exactCenterX(), localRect.exactCenterY());
    mRing.draw(paramCanvas, localRect);
    paramCanvas.restoreToCount(i);
  }
  
  public int getAlpha()
  {
    return mRing.getAlpha();
  }
  
  public int getIntrinsicHeight()
  {
    return (int)mHeight;
  }
  
  public int getIntrinsicWidth()
  {
    return (int)mWidth;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public boolean isRunning()
  {
    ArrayList localArrayList = mAnimators;
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      Animation localAnimation = (Animation)localArrayList.get(i);
      if ((localAnimation.hasStarted()) && (!localAnimation.hasEnded())) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public void setAlpha(int paramInt)
  {
    mRing.setAlpha(paramInt);
  }
  
  public void setArrowScale(float paramFloat)
  {
    mRing.setArrowScale(paramFloat);
  }
  
  public void setBackgroundColor(int paramInt)
  {
    mRing.setBackgroundColor(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    mRing.setColorFilter(paramColorFilter);
  }
  
  public void setColorSchemeColors(int... paramVarArgs)
  {
    mRing.setColors(paramVarArgs);
    mRing.setColorIndex(0);
  }
  
  public void setProgressRotation(float paramFloat)
  {
    mRing.setRotation(paramFloat);
  }
  
  void setRotation(float paramFloat)
  {
    mRotation = paramFloat;
    invalidateSelf();
  }
  
  public void setStartEndTrim(float paramFloat1, float paramFloat2)
  {
    mRing.setStartTrim(paramFloat1);
    mRing.setEndTrim(paramFloat2);
  }
  
  public void showArrow(boolean paramBoolean)
  {
    mRing.setShowArrow(paramBoolean);
  }
  
  public void start()
  {
    mAnimation.reset();
    mRing.storeOriginals();
    if (mRing.getEndTrim() != mRing.getStartTrim())
    {
      mFinishing = true;
      mAnimation.setDuration(666L);
      mParent.startAnimation(mAnimation);
      return;
    }
    mRing.setColorIndex(0);
    mRing.resetOriginals();
    mAnimation.setDuration(1332L);
    mParent.startAnimation(mAnimation);
  }
  
  public void stop()
  {
    mParent.clearAnimation();
    setRotation(0.0F);
    mRing.setShowArrow(false);
    mRing.setColorIndex(0);
    mRing.resetOriginals();
  }
  
  public void updateSizes(@MaterialProgressDrawable.ProgressDrawableSize int paramInt)
  {
    if (paramInt == 0)
    {
      setSizeParameters(56.0D, 56.0D, 12.5D, 3.0D, 12.0F, 6.0F);
      return;
    }
    setSizeParameters(40.0D, 40.0D, 8.75D, 2.5D, 10.0F, 5.0F);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.MaterialProgressDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
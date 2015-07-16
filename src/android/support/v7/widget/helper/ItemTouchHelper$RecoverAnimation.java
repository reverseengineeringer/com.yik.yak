package android.support.v7.widget.helper;

import android.support.v4.animation.AnimatorCompatHelper;
import android.support.v4.animation.AnimatorListenerCompat;
import android.support.v4.animation.ValueAnimatorCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView.ViewHolder;

class ItemTouchHelper$RecoverAnimation
  implements AnimatorListenerCompat
{
  final int mActionState;
  private final int mAnimationType;
  private boolean mEnded = false;
  private float mFraction;
  public boolean mIsPendingCleanup;
  boolean mOverridden = false;
  final float mStartDx;
  final float mStartDy;
  final float mTargetX;
  final float mTargetY;
  private final ValueAnimatorCompat mValueAnimator;
  final RecyclerView.ViewHolder mViewHolder;
  float mX;
  float mY;
  
  public ItemTouchHelper$RecoverAnimation(ItemTouchHelper paramItemTouchHelper, RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    mActionState = paramInt2;
    mAnimationType = paramInt1;
    mViewHolder = paramViewHolder;
    mStartDx = paramFloat1;
    mStartDy = paramFloat2;
    mTargetX = paramFloat3;
    mTargetY = paramFloat4;
    mValueAnimator = AnimatorCompatHelper.emptyValueAnimator();
    mValueAnimator.addUpdateListener(new ItemTouchHelper.RecoverAnimation.1(this, paramItemTouchHelper));
    mValueAnimator.setTarget(itemView);
    mValueAnimator.addListener(this);
    setFraction(0.0F);
  }
  
  public void cancel()
  {
    mValueAnimator.cancel();
  }
  
  public void onAnimationCancel(ValueAnimatorCompat paramValueAnimatorCompat)
  {
    setFraction(1.0F);
  }
  
  public void onAnimationEnd(ValueAnimatorCompat paramValueAnimatorCompat)
  {
    mEnded = true;
  }
  
  public void onAnimationRepeat(ValueAnimatorCompat paramValueAnimatorCompat) {}
  
  public void onAnimationStart(ValueAnimatorCompat paramValueAnimatorCompat) {}
  
  public void setDuration(long paramLong)
  {
    mValueAnimator.setDuration(paramLong);
  }
  
  public void setFraction(float paramFloat)
  {
    mFraction = paramFloat;
  }
  
  public void start()
  {
    mViewHolder.setIsRecyclable(false);
    mValueAnimator.start();
  }
  
  public void update()
  {
    if (mStartDx == mTargetX) {}
    for (mX = ViewCompat.getTranslationX(mViewHolder.itemView); mStartDy == mTargetY; mX = (mStartDx + mFraction * (mTargetX - mStartDx)))
    {
      mY = ViewCompat.getTranslationY(mViewHolder.itemView);
      return;
    }
    mY = (mStartDy + mFraction * (mTargetY - mStartDy));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.helper.ItemTouchHelper.RecoverAnimation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
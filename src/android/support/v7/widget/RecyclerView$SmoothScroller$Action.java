package android.support.v7.widget;

import android.view.animation.Interpolator;

public class RecyclerView$SmoothScroller$Action
{
  public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
  private boolean changed = false;
  private int consecutiveUpdates = 0;
  private int mDuration;
  private int mDx;
  private int mDy;
  private Interpolator mInterpolator;
  
  public RecyclerView$SmoothScroller$Action(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, Integer.MIN_VALUE, null);
  }
  
  public RecyclerView$SmoothScroller$Action(int paramInt1, int paramInt2, int paramInt3)
  {
    this(paramInt1, paramInt2, paramInt3, null);
  }
  
  public RecyclerView$SmoothScroller$Action(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
  {
    mDx = paramInt1;
    mDy = paramInt2;
    mDuration = paramInt3;
    mInterpolator = paramInterpolator;
  }
  
  private void runIfNecessary(RecyclerView paramRecyclerView)
  {
    if (changed)
    {
      validate();
      if (mInterpolator == null) {
        if (mDuration == Integer.MIN_VALUE) {
          RecyclerView.access$4800(paramRecyclerView).smoothScrollBy(mDx, mDy);
        }
      }
      for (;;)
      {
        consecutiveUpdates += 1;
        changed = false;
        return;
        RecyclerView.access$4800(paramRecyclerView).smoothScrollBy(mDx, mDy, mDuration);
        continue;
        RecyclerView.access$4800(paramRecyclerView).smoothScrollBy(mDx, mDy, mDuration, mInterpolator);
      }
    }
    consecutiveUpdates = 0;
  }
  
  private void validate()
  {
    if ((mInterpolator != null) && (mDuration < 1)) {
      throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
    }
    if (mDuration < 1) {
      throw new IllegalStateException("Scroll duration must be a positive number");
    }
  }
  
  public int getDuration()
  {
    return mDuration;
  }
  
  public int getDx()
  {
    return mDx;
  }
  
  public int getDy()
  {
    return mDy;
  }
  
  public Interpolator getInterpolator()
  {
    return mInterpolator;
  }
  
  public void setDuration(int paramInt)
  {
    changed = true;
    mDuration = paramInt;
  }
  
  public void setDx(int paramInt)
  {
    changed = true;
    mDx = paramInt;
  }
  
  public void setDy(int paramInt)
  {
    changed = true;
    mDy = paramInt;
  }
  
  public void setInterpolator(Interpolator paramInterpolator)
  {
    changed = true;
    mInterpolator = paramInterpolator;
  }
  
  public void update(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
  {
    mDx = paramInt1;
    mDy = paramInt2;
    mDuration = paramInt3;
    mInterpolator = paramInterpolator;
    changed = true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.SmoothScroller.Action
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
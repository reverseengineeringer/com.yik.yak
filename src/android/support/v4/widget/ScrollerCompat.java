package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;

public class ScrollerCompat
{
  static final int CHASE_FRAME_TIME = 16;
  private static final String TAG = "ScrollerCompat";
  ScrollerCompat.ScrollerCompatImpl mImpl;
  Object mScroller;
  
  private ScrollerCompat(int paramInt, Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInt >= 14) {
      mImpl = new ScrollerCompat.ScrollerCompatImplIcs();
    }
    for (;;)
    {
      mScroller = mImpl.createScroller(paramContext, paramInterpolator);
      return;
      if (paramInt >= 9) {
        mImpl = new ScrollerCompat.ScrollerCompatImplGingerbread();
      } else {
        mImpl = new ScrollerCompat.ScrollerCompatImplBase();
      }
    }
  }
  
  ScrollerCompat(Context paramContext, Interpolator paramInterpolator)
  {
    this(Build.VERSION.SDK_INT, paramContext, paramInterpolator);
  }
  
  public static ScrollerCompat create(Context paramContext)
  {
    return create(paramContext, null);
  }
  
  public static ScrollerCompat create(Context paramContext, Interpolator paramInterpolator)
  {
    return new ScrollerCompat(paramContext, paramInterpolator);
  }
  
  public void abortAnimation()
  {
    mImpl.abortAnimation(mScroller);
  }
  
  public boolean computeScrollOffset()
  {
    return mImpl.computeScrollOffset(mScroller);
  }
  
  public void fling(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    mImpl.fling(mScroller, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }
  
  public void fling(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10)
  {
    mImpl.fling(mScroller, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramInt9, paramInt10);
  }
  
  public float getCurrVelocity()
  {
    return mImpl.getCurrVelocity(mScroller);
  }
  
  public int getCurrX()
  {
    return mImpl.getCurrX(mScroller);
  }
  
  public int getCurrY()
  {
    return mImpl.getCurrY(mScroller);
  }
  
  public int getFinalX()
  {
    return mImpl.getFinalX(mScroller);
  }
  
  public int getFinalY()
  {
    return mImpl.getFinalY(mScroller);
  }
  
  public boolean isFinished()
  {
    return mImpl.isFinished(mScroller);
  }
  
  public boolean isOverScrolled()
  {
    return mImpl.isOverScrolled(mScroller);
  }
  
  public void notifyHorizontalEdgeReached(int paramInt1, int paramInt2, int paramInt3)
  {
    mImpl.notifyHorizontalEdgeReached(mScroller, paramInt1, paramInt2, paramInt3);
  }
  
  public void notifyVerticalEdgeReached(int paramInt1, int paramInt2, int paramInt3)
  {
    mImpl.notifyVerticalEdgeReached(mScroller, paramInt1, paramInt2, paramInt3);
  }
  
  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    mImpl.startScroll(mScroller, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    mImpl.startScroll(mScroller, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ScrollerCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
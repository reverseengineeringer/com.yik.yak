package android.support.v7.widget;

import android.support.v4.os.TraceCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ScrollerCompat;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;

class RecyclerView$ViewFlinger
  implements Runnable
{
  private boolean mEatRunOnAnimationRequest = false;
  private Interpolator mInterpolator = RecyclerView.access$2000();
  private int mLastFlingX;
  private int mLastFlingY;
  private boolean mReSchedulePostAnimationCallback = false;
  private ScrollerCompat mScroller;
  
  public RecyclerView$ViewFlinger(RecyclerView paramRecyclerView)
  {
    mScroller = ScrollerCompat.create(paramRecyclerView.getContext(), RecyclerView.access$2000());
  }
  
  private int computeScrollDuration(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = Math.abs(paramInt1);
    int k = Math.abs(paramInt2);
    int i;
    if (j > k)
    {
      i = 1;
      paramInt3 = (int)Math.sqrt(paramInt3 * paramInt3 + paramInt4 * paramInt4);
      paramInt2 = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
      if (i == 0) {
        break label140;
      }
    }
    label140:
    for (paramInt1 = this$0.getWidth();; paramInt1 = this$0.getHeight())
    {
      paramInt4 = paramInt1 / 2;
      float f3 = Math.min(1.0F, paramInt2 * 1.0F / paramInt1);
      float f1 = paramInt4;
      float f2 = paramInt4;
      f3 = distanceInfluenceForSnapDuration(f3);
      if (paramInt3 <= 0) {
        break label151;
      }
      paramInt1 = Math.round(1000.0F * Math.abs((f3 * f2 + f1) / paramInt3)) * 4;
      return Math.min(paramInt1, 2000);
      i = 0;
      break;
    }
    label151:
    if (i != 0) {}
    for (paramInt2 = j;; paramInt2 = k)
    {
      paramInt1 = (int)((paramInt2 / paramInt1 + 1.0F) * 300.0F);
      break;
    }
  }
  
  private void disableRunOnAnimationRequests()
  {
    mReSchedulePostAnimationCallback = false;
    mEatRunOnAnimationRequest = true;
  }
  
  private float distanceInfluenceForSnapDuration(float paramFloat)
  {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D));
  }
  
  private void enableRunOnAnimationRequests()
  {
    mEatRunOnAnimationRequest = false;
    if (mReSchedulePostAnimationCallback) {
      postOnAnimation();
    }
  }
  
  public void fling(int paramInt1, int paramInt2)
  {
    RecyclerView.access$3000(this$0, 2);
    mLastFlingY = 0;
    mLastFlingX = 0;
    mScroller.fling(0, 0, paramInt1, paramInt2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
    postOnAnimation();
  }
  
  void postOnAnimation()
  {
    if (mEatRunOnAnimationRequest)
    {
      mReSchedulePostAnimationCallback = true;
      return;
    }
    this$0.removeCallbacks(this);
    ViewCompat.postOnAnimation(this$0, this);
  }
  
  public void run()
  {
    disableRunOnAnimationRequests();
    RecyclerView.access$2100(this$0);
    ScrollerCompat localScrollerCompat = mScroller;
    RecyclerView.SmoothScroller localSmoothScroller = access$1100this$0).mSmoothScroller;
    int i6;
    int i7;
    int i4;
    int i5;
    int j;
    int m;
    int i1;
    int n;
    int i;
    int k;
    if (localScrollerCompat.computeScrollOffset())
    {
      i6 = localScrollerCompat.getCurrX();
      i7 = localScrollerCompat.getCurrY();
      i4 = i6 - mLastFlingX;
      i5 = i7 - mLastFlingY;
      j = 0;
      int i3 = 0;
      m = 0;
      i1 = 0;
      mLastFlingX = i6;
      mLastFlingY = i7;
      n = 0;
      i = 0;
      k = 0;
      i2 = 0;
      if (RecyclerView.access$2200(this$0) != null)
      {
        this$0.eatRequestLayout();
        RecyclerView.access$2300(this$0);
        TraceCompat.beginSection("RV Scroll");
        j = i3;
        if (i4 != 0)
        {
          j = RecyclerView.access$1100(this$0).scrollHorizontallyBy(i4, this$0.mRecycler, this$0.mState);
          i = i4 - j;
        }
        k = i2;
        m = i1;
        if (i5 != 0)
        {
          m = RecyclerView.access$1100(this$0).scrollVerticallyBy(i5, this$0.mRecycler, this$0.mState);
          k = i5 - m;
        }
        TraceCompat.endSection();
        if (RecyclerView.access$2400(this$0))
        {
          i1 = this$0.mChildHelper.getChildCount();
          n = 0;
          while (n < i1)
          {
            View localView = this$0.mChildHelper.getChildAt(n);
            Object localObject = this$0.getChildViewHolder(localView);
            if ((localObject != null) && (mShadowingHolder != null))
            {
              localObject = mShadowingHolder.itemView;
              i2 = localView.getLeft();
              i3 = localView.getTop();
              if ((i2 != ((View)localObject).getLeft()) || (i3 != ((View)localObject).getTop())) {
                ((View)localObject).layout(i2, i3, ((View)localObject).getWidth() + i2, ((View)localObject).getHeight() + i3);
              }
            }
            n += 1;
          }
        }
        if ((localSmoothScroller != null) && (!localSmoothScroller.isPendingInitialRun()) && (localSmoothScroller.isRunning()))
        {
          n = this$0.mState.getItemCount();
          if (n != 0) {
            break label739;
          }
          localSmoothScroller.stop();
        }
        RecyclerView.access$2600(this$0);
        this$0.resumeRequestLayout(false);
        n = i;
      }
      if (!RecyclerView.access$2700(this$0).isEmpty()) {
        this$0.invalidate();
      }
      if (ViewCompat.getOverScrollMode(this$0) != 2) {
        RecyclerView.access$2800(this$0, i4, i5);
      }
      if ((n != 0) || (k != 0))
      {
        i1 = (int)localScrollerCompat.getCurrVelocity();
        if (n == i6) {
          break label845;
        }
        if (n >= 0) {
          break label790;
        }
        i = -i1;
      }
    }
    label504:
    label521:
    label648:
    label674:
    label694:
    label739:
    label790:
    label823:
    label828:
    label833:
    label845:
    for (int i2 = i;; i2 = 0)
    {
      if (k != i7) {
        if (k < 0) {
          i = -i1;
        }
      }
      for (;;)
      {
        if (ViewCompat.getOverScrollMode(this$0) != 2) {
          this$0.absorbGlows(i2, i);
        }
        if (((i2 != 0) || (n == i6) || (localScrollerCompat.getFinalX() == 0)) && ((i != 0) || (k == i7) || (localScrollerCompat.getFinalY() == 0))) {
          localScrollerCompat.abortAnimation();
        }
        if ((j != 0) || (m != 0)) {
          this$0.dispatchOnScrolled(j, m);
        }
        if (!RecyclerView.access$2900(this$0)) {
          this$0.invalidate();
        }
        if ((i5 != 0) && (RecyclerView.access$1100(this$0).canScrollVertically()) && (m == i5))
        {
          i = 1;
          if ((i4 == 0) || (!RecyclerView.access$1100(this$0).canScrollHorizontally()) || (j != i4)) {
            break label823;
          }
          j = 1;
          if (((i4 != 0) || (i5 != 0)) && (j == 0) && (i == 0)) {
            break label828;
          }
          i = 1;
          if ((!localScrollerCompat.isFinished()) && (i != 0)) {
            break label833;
          }
          RecyclerView.access$3000(this$0, 0);
        }
        for (;;)
        {
          if ((localSmoothScroller != null) && (localSmoothScroller.isPendingInitialRun())) {
            RecyclerView.SmoothScroller.access$2500(localSmoothScroller, 0, 0);
          }
          enableRunOnAnimationRequests();
          return;
          if (localSmoothScroller.getTargetPosition() >= n)
          {
            localSmoothScroller.setTargetPosition(n - 1);
            RecyclerView.SmoothScroller.access$2500(localSmoothScroller, i4 - i, i5 - k);
            break;
          }
          RecyclerView.SmoothScroller.access$2500(localSmoothScroller, i4 - i, i5 - k);
          break;
          if (n > 0)
          {
            i = i1;
            break label504;
          }
          i = 0;
          break label504;
          i = i1;
          if (k > 0) {
            break label521;
          }
          i = 0;
          break label521;
          i = 0;
          break label648;
          j = 0;
          break label674;
          i = 0;
          break label694;
          postOnAnimation();
        }
        i = 0;
      }
    }
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2)
  {
    smoothScrollBy(paramInt1, paramInt2, 0, 0);
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2, int paramInt3)
  {
    smoothScrollBy(paramInt1, paramInt2, paramInt3, RecyclerView.access$2000());
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    smoothScrollBy(paramInt1, paramInt2, computeScrollDuration(paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
  {
    if (mInterpolator != paramInterpolator)
    {
      mInterpolator = paramInterpolator;
      mScroller = ScrollerCompat.create(this$0.getContext(), paramInterpolator);
    }
    RecyclerView.access$3000(this$0, 2);
    mLastFlingY = 0;
    mLastFlingX = 0;
    mScroller.startScroll(0, 0, paramInt1, paramInt2, paramInt3);
    postOnAnimation();
  }
  
  public void stop()
  {
    this$0.removeCallbacks(this);
    mScroller.abortAnimation();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.ViewFlinger
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.yik.yak.ui.pullrefresh;

import FA;
import FB;
import FC;
import FD;
import FE;
import FF;
import FG;
import Fy;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.ImageView;
import java.security.InvalidParameterException;
import zZ;

public class PullRefreshLayout
  extends ViewGroup
{
  private final Animation a = new FA(this);
  private View b;
  private ImageView c;
  private Interpolator d;
  private int e;
  private int f;
  private int g;
  private int h;
  private FF i;
  private int j;
  private Animation.AnimationListener k = new FB(this);
  private boolean l;
  private int m;
  private boolean n;
  private float o;
  private int p;
  private final Animation q = new FC(this);
  private boolean r;
  private Context s;
  private FE t;
  private Animation.AnimationListener u = new FD(this);
  private int[] v;
  private AttributeSet w;
  
  public PullRefreshLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PullRefreshLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (isInEditMode()) {
      return;
    }
    w = paramAttributeSet;
    s = paramContext;
    paramAttributeSet = s.obtainStyledAttributes(w, zZ.PullRefreshLayout);
    int i1 = paramAttributeSet.getInteger(0, 1);
    int i2 = paramAttributeSet.getResourceId(1, 2131296260);
    paramAttributeSet.recycle();
    v = s.getResources().getIntArray(i2);
    d = new DecelerateInterpolator(2.0F);
    e = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    f = getResources().getInteger(17694721);
    i2 = a(64);
    h = i2;
    g = i2;
    c = new ImageView(paramContext);
    setRefreshStyle(i1);
    c.setVisibility(8);
    addView(c);
    setWillNotDraw(false);
  }
  
  private float a(MotionEvent paramMotionEvent, int paramInt)
  {
    paramInt = MotionEventCompat.findPointerIndex(paramMotionEvent, paramInt);
    if (paramInt < 0) {
      return -1.0F;
    }
    return MotionEventCompat.getY(paramMotionEvent, paramInt);
  }
  
  private int a(int paramInt)
  {
    return (int)TypedValue.applyDimension(1, paramInt, getContext().getResources().getDisplayMetrics());
  }
  
  private void a(float paramFloat)
  {
    a(p - (int)(p * paramFloat) - b.getTop(), false);
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    c.bringToFront();
    b.offsetTopAndBottom(paramInt);
    i.a(paramInt);
    j = b.getTop();
    if ((paramBoolean) && (Build.VERSION.SDK_INT < 11)) {
      invalidate();
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i1) == m) {
      if (i1 != 0) {
        break label33;
      }
    }
    label33:
    for (i1 = 1;; i1 = 0)
    {
      m = MotionEventCompat.getPointerId(paramMotionEvent, i1);
      return;
    }
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (l != paramBoolean1)
    {
      r = paramBoolean2;
      c();
      l = paramBoolean1;
      if (l) {
        e();
      }
    }
    else
    {
      return;
    }
    d();
  }
  
  private void c()
  {
    if (b != null) {}
    for (;;)
    {
      return;
      if (getChildCount() > 0)
      {
        int i1 = 0;
        while (i1 < getChildCount())
        {
          View localView = getChildAt(i1);
          if (localView != c) {
            b = localView;
          }
          i1 += 1;
        }
      }
    }
  }
  
  private void d()
  {
    p = j;
    a.reset();
    a.setDuration(f);
    a.setInterpolator(d);
    a.setAnimationListener(k);
    c.clearAnimation();
    c.startAnimation(a);
  }
  
  private void e()
  {
    p = j;
    q.reset();
    q.setDuration(f);
    q.setInterpolator(d);
    q.setAnimationListener(u);
    c.clearAnimation();
    c.startAnimation(q);
  }
  
  private boolean f()
  {
    boolean bool = true;
    if (Build.VERSION.SDK_INT < 14)
    {
      if ((b instanceof AbsListView))
      {
        AbsListView localAbsListView = (AbsListView)b;
        return (localAbsListView.getChildCount() > 0) && ((localAbsListView.getFirstVisiblePosition() > 0) || (localAbsListView.getChildAt(0).getTop() < localAbsListView.getPaddingTop()));
      }
      if (b.getScrollY() > 0) {}
      for (;;)
      {
        return bool;
        bool = false;
      }
    }
    return ViewCompat.canScrollVertically(b, -1);
  }
  
  public boolean a()
  {
    if (i == null) {
      return false;
    }
    return i.isRunning();
  }
  
  public int b()
  {
    return g;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((!isEnabled()) || (f()) || (l)) {
      return false;
    }
    switch (MotionEventCompat.getActionMasked(paramMotionEvent))
    {
    }
    for (;;)
    {
      return n;
      a(0, true);
      m = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      n = false;
      float f1 = a(paramMotionEvent, m);
      if (f1 == -1.0F) {
        break;
      }
      o = f1;
      continue;
      if (m == -1) {
        break;
      }
      f1 = a(paramMotionEvent, m);
      if (f1 == -1.0F) {
        break;
      }
      if ((f1 - o > e) && (!n))
      {
        n = true;
        continue;
        n = false;
        m = -1;
        continue;
        a(paramMotionEvent);
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    c();
    if (b == null) {
      return;
    }
    paramInt1 = getMeasuredHeight();
    paramInt2 = getMeasuredWidth();
    paramInt3 = getPaddingLeft();
    paramInt4 = getPaddingTop();
    int i1 = getPaddingRight();
    int i2 = getPaddingBottom();
    b.layout(paramInt3, j + paramInt4, paramInt3 + paramInt2 - i1, paramInt4 + paramInt1 - i2 + j);
    c.layout(paramInt3, paramInt4, paramInt2 + paramInt3 - i1, paramInt1 + paramInt4 - i2);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    c();
    if (b == null) {
      return;
    }
    paramInt1 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - getPaddingRight() - getPaddingLeft(), 1073741824);
    paramInt2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), 1073741824);
    b.measure(paramInt1, paramInt2);
    c.measure(paramInt1, paramInt2);
  }
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    boolean bool1;
    if (!n) {
      bool1 = super.onTouchEvent(paramMotionEvent);
    }
    do
    {
      return bool1;
      switch (MotionEventCompat.getActionMasked(paramMotionEvent))
      {
      case 4: 
      default: 
      case 2: 
      case 5: 
      case 6: 
        for (;;)
        {
          return true;
          int i1 = MotionEventCompat.findPointerIndex(paramMotionEvent, m);
          bool1 = bool2;
          if (i1 < 0) {
            break;
          }
          f2 = (MotionEventCompat.getY(paramMotionEvent, i1) - o) * 0.5F;
          f1 = f2 / h;
          bool1 = bool2;
          if (f1 < 0.0F) {
            break;
          }
          f1 = Math.min(1.0F, Math.abs(f1));
          float f3 = Math.abs(f2);
          float f4 = h;
          f2 = g;
          f3 = Math.max(0.0F, Math.min(f3 - f4, f2 * 2.0F) / f2);
          i1 = (int)((float)(f3 / 4.0F - Math.pow(f3 / 4.0F, 2.0D)) * 2.0F * f2 * 2.0F + f1 * f2);
          if (c.getVisibility() != 0) {
            c.setVisibility(0);
          }
          a(i1 - j, true);
          continue;
          m = MotionEventCompat.getPointerId(paramMotionEvent, MotionEventCompat.getActionIndex(paramMotionEvent));
          continue;
          a(paramMotionEvent);
        }
      }
      bool1 = bool2;
    } while (m == -1);
    float f1 = MotionEventCompat.getY(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, m));
    float f2 = o;
    n = false;
    if ((f1 - f2) * 0.5F > h) {
      a(true, true);
    }
    for (;;)
    {
      m = -1;
      return false;
      l = false;
      d();
    }
  }
  
  public void setAnimationBackgroundColor(int paramInt) {}
  
  public void setColorSchemeColors(int[] paramArrayOfInt)
  {
    v = paramArrayOfInt;
  }
  
  public void setMaxDragDistance(int paramInt)
  {
    h = paramInt;
    g = paramInt;
  }
  
  public void setOnRefreshListener(FE paramFE)
  {
    t = paramFE;
  }
  
  public void setRefreshImage(int paramInt)
  {
    i.a(getResources().getDrawable(paramInt));
  }
  
  public void setRefreshImage(Drawable paramDrawable)
  {
    i.a(paramDrawable);
  }
  
  public void setRefreshStyle(int paramInt)
  {
    setRefreshing(false);
    switch (paramInt)
    {
    default: 
      throw new InvalidParameterException("Type does not exist");
    case 1: 
      c.setImageResource(2130837876);
    }
    for (i = new FG(getContext(), this);; i = new Fy(getContext(), this))
    {
      c.setImageDrawable(i);
      return;
    }
  }
  
  public void setRefreshing(boolean paramBoolean)
  {
    if (l != paramBoolean) {
      a(paramBoolean, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.pullrefresh.PullRefreshLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
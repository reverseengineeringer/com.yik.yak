package com.yik.yak.ui.view;

import Fq;
import Fr;
import Fs;
import Ft;
import Fu;
import Fv;
import Fx;
import GB;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;

public class PromotedActionButtonView
  extends ImageView
{
  private final int a = 16;
  private Animation b;
  private Animation c;
  private Fx d = Fx.a;
  private Runnable e;
  
  public PromotedActionButtonView(Context paramContext)
  {
    super(paramContext);
  }
  
  public PromotedActionButtonView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public PromotedActionButtonView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a()
  {
    if (e != null)
    {
      e.run();
      e = null;
    }
  }
  
  private void a(Runnable paramRunnable)
  {
    clearAnimation();
    Animation localAnimation = g();
    e = paramRunnable;
    localAnimation.setAnimationListener(new Fv(this));
    startAnimation(localAnimation);
  }
  
  private void b()
  {
    if (d == Fx.a)
    {
      setImageResource(Fx.b.b());
      e();
    }
    while (d != Fx.c) {
      return;
    }
    a(new Fs(this));
  }
  
  private void c()
  {
    if (d == Fx.a)
    {
      setImageResource(Fx.c.b());
      e();
    }
    while (d != Fx.b) {
      return;
    }
    a(new Ft(this));
  }
  
  private void d()
  {
    if (d == Fx.a) {
      return;
    }
    a(new Fu(this));
  }
  
  private void e()
  {
    clearAnimation();
    setVisibility(0);
    startAnimation(f());
  }
  
  private Animation f()
  {
    if (c == null) {
      c = AnimationUtils.loadAnimation(getContext(), 2130968593);
    }
    return c;
  }
  
  private Animation g()
  {
    if (b == null) {
      b = AnimationUtils.loadAnimation(getContext(), 2130968594);
    }
    return b;
  }
  
  public void a(Fx paramFx)
  {
    a();
    switch (Fw.a[paramFx.ordinal()])
    {
    }
    for (;;)
    {
      d = paramFx;
      return;
      b();
      continue;
      c();
      continue;
      d();
    }
  }
  
  public void a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)getLayoutParams();
    if (paramBoolean)
    {
      if (bottomMargin == paramInt2) {
        return;
      }
      ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { paramInt1, paramInt2 });
      localValueAnimator.setInterpolator(new BounceInterpolator());
      localValueAnimator.setDuration(500L);
      localValueAnimator.addUpdateListener(new Fq(this, localLayoutParams));
      localValueAnimator.start();
      return;
    }
    bottomMargin = paramInt2;
    setLayoutParams(localLayoutParams);
  }
  
  public void b(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)getLayoutParams();
    if (paramBoolean)
    {
      if (bottomMargin == paramInt2) {
        return;
      }
      ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { paramInt1, paramInt2 });
      localValueAnimator.setInterpolator(new OvershootInterpolator());
      localValueAnimator.setDuration(500L);
      localValueAnimator.addUpdateListener(new Fr(this, localLayoutParams));
      localValueAnimator.start();
      return;
    }
    bottomMargin = paramInt2;
    setLayoutParams(localLayoutParams);
  }
  
  public void setBottomOffset(int paramInt, boolean paramBoolean)
  {
    paramInt += GB.a(16);
    int i = getLayoutParamsbottomMargin;
    if (paramInt != i)
    {
      if (paramInt > i) {
        b(paramBoolean, i, paramInt);
      }
    }
    else {
      return;
    }
    a(paramBoolean, i, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.PromotedActionButtonView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
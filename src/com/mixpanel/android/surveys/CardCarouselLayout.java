package com.mixpanel.android.surveys;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ri;
import tg;
import ts;
import tv;
import tw;
import tx;

public class CardCarouselLayout
  extends ViewGroup
{
  private static int a = 45;
  private static float b = 0.8F;
  private static float c = 0.5F;
  private static float d = 0.5F;
  private final List<View> e = new ArrayList(1);
  private tx f;
  private tx g;
  private tw h = null;
  
  public CardCarouselLayout(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public CardCarouselLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public CardCarouselLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private Animation a()
  {
    AnimationSet localAnimationSet = new AnimationSet(false);
    Object localObject = new RotateAnimation(a, 0.0F, 1, c, 1, d);
    ((RotateAnimation)localObject).setDuration(198L);
    localAnimationSet.addAnimation((Animation)localObject);
    localObject = new ScaleAnimation(b, 1.0F, b, 1.0F, 1, c, 1, d);
    ((ScaleAnimation)localObject).setDuration(198L);
    localAnimationSet.addAnimation((Animation)localObject);
    localObject = new TranslateAnimation(2, 1.3F, 2, 0.0F, 2, 0.0F, 2, 0.0F);
    ((TranslateAnimation)localObject).setDuration(330L);
    localAnimationSet.addAnimation((Animation)localObject);
    return localAnimationSet;
  }
  
  private void a(Context paramContext)
  {
    Object localObject = LayoutInflater.from(paramContext);
    paramContext = ((LayoutInflater)localObject).inflate(ri.com_mixpanel_android_question_card, this, false);
    f = new tx(this, paramContext);
    localObject = ((LayoutInflater)localObject).inflate(ri.com_mixpanel_android_question_card, this, false);
    g = new tx(this, (View)localObject);
    addView(paramContext);
    addView((View)localObject);
  }
  
  private Animation b()
  {
    AnimationSet localAnimationSet = new AnimationSet(false);
    Object localObject = new RotateAnimation(0.0F, a, 1, c, 1, d);
    ((RotateAnimation)localObject).setDuration(198L);
    ((RotateAnimation)localObject).setStartOffset(132L);
    localAnimationSet.addAnimation((Animation)localObject);
    localObject = new ScaleAnimation(1.0F, b, 1.0F, b, 1, c, 1, d);
    ((ScaleAnimation)localObject).setDuration(198L);
    ((ScaleAnimation)localObject).setStartOffset(132L);
    localAnimationSet.addAnimation((Animation)localObject);
    localObject = new TranslateAnimation(2, -1.0F, 2, 0.3F, 2, 0.0F, 2, 0.0F);
    ((TranslateAnimation)localObject).setInterpolator(new AccelerateInterpolator());
    ((TranslateAnimation)localObject).setDuration(330L);
    localAnimationSet.addAnimation((Animation)localObject);
    return localAnimationSet;
  }
  
  private Animation c()
  {
    AnimationSet localAnimationSet = new AnimationSet(false);
    Object localObject = new RotateAnimation(-a, 0.0F, 1, c, 1, d);
    ((RotateAnimation)localObject).setDuration(198L);
    localAnimationSet.addAnimation((Animation)localObject);
    localObject = new ScaleAnimation(b, 1.0F, b, 1.0F, 1, c, 1, d);
    ((ScaleAnimation)localObject).setDuration(198L);
    localAnimationSet.addAnimation((Animation)localObject);
    localObject = new TranslateAnimation(2, -1.3F, 2, 0.0F, 2, 0.0F, 2, 0.0F);
    ((TranslateAnimation)localObject).setDuration(330L);
    localAnimationSet.addAnimation((Animation)localObject);
    return localAnimationSet;
  }
  
  private Animation d()
  {
    AnimationSet localAnimationSet = new AnimationSet(false);
    Object localObject = new RotateAnimation(0.0F, -a, 1, c, 1, d);
    ((RotateAnimation)localObject).setDuration(330L);
    ((RotateAnimation)localObject).setStartOffset(132L);
    localAnimationSet.addAnimation((Animation)localObject);
    localObject = new ScaleAnimation(1.0F, b, 1.0F, b, 1, c, 1, d);
    ((ScaleAnimation)localObject).setDuration(330L);
    ((ScaleAnimation)localObject).setStartOffset(132L);
    localAnimationSet.addAnimation((Animation)localObject);
    localObject = new TranslateAnimation(2, -1.0F, 2, -2.3F, 2, 0.0F, 2, 0.0F);
    ((TranslateAnimation)localObject).setInterpolator(new AccelerateInterpolator());
    ((TranslateAnimation)localObject).setDuration(330L);
    localAnimationSet.addAnimation((Animation)localObject);
    return localAnimationSet;
  }
  
  public void a(tg paramtg, String paramString)
  {
    f.a(paramtg, paramString);
    removeAllViews();
    addView(f.a());
    addView(g.a());
    invalidate();
  }
  
  public void a(tg paramtg, String paramString, tv paramtv)
  {
    Object localObject1 = null;
    Object localObject2 = g;
    g = f;
    f = ((tx)localObject2);
    f.a(paramtg, paramString);
    localObject2 = g.a();
    View localView = f.a();
    ((View)localObject2).setVisibility(0);
    localView.setVisibility(0);
    switch (tt.a[paramtv.ordinal()])
    {
    default: 
      paramString = null;
      paramtg = (tg)localObject1;
    }
    for (;;)
    {
      paramString.setAnimationListener(new ts(this, (View)localObject2));
      ((View)localObject2).startAnimation(paramString);
      localView.startAnimation(paramtg);
      invalidate();
      return;
      paramString = d();
      paramtg = a();
      continue;
      paramString = b();
      paramtg = c();
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = f.a();
    if (localView.getVisibility() != 8)
    {
      paramInt1 = localView.getMeasuredWidth();
      localView.layout(0, 0, paramInt1, localView.getMeasuredHeight());
    }
    for (;;)
    {
      localView = g.a();
      if (localView.getVisibility() != 8) {
        localView.layout(paramInt1, 0, localView.getMeasuredWidth() + paramInt1, localView.getMeasuredHeight());
      }
      return;
      paramInt1 = 0;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = getChildCount();
    if ((View.MeasureSpec.getMode(paramInt1) != 1073741824) || (View.MeasureSpec.getMode(paramInt2) != 1073741824)) {}
    int j;
    int i1;
    int k;
    Object localObject2;
    for (int i = 1;; i = 0)
    {
      e.clear();
      j = 0;
      i1 = 0;
      int n;
      for (k = 0; j < i2; k = n)
      {
        localObject1 = getChildAt(j);
        int m = i1;
        n = k;
        if (((View)localObject1).getVisibility() != 8)
        {
          localObject2 = ((View)localObject1).getLayoutParams();
          ((View)localObject1).measure(getChildMeasureSpec(paramInt1, 0, width), getChildMeasureSpec(paramInt2, 0, height));
          i1 = Math.max(i1, ((View)localObject1).getMeasuredWidth());
          k = Math.max(k, ((View)localObject1).getMeasuredHeight());
          m = i1;
          n = k;
          if (i != 0) {
            if (width != -1)
            {
              m = i1;
              n = k;
              if (height != -1) {}
            }
            else
            {
              e.add(localObject1);
              n = k;
              m = i1;
            }
          }
        }
        j += 1;
        i1 = m;
      }
    }
    i = Math.max(k, getSuggestedMinimumHeight());
    setMeasuredDimension(resolveSize(Math.max(i1, getSuggestedMinimumWidth()), paramInt1), resolveSize(i, paramInt2));
    Object localObject1 = e.iterator();
    if (((Iterator)localObject1).hasNext())
    {
      localObject2 = (View)((Iterator)localObject1).next();
      ViewGroup.LayoutParams localLayoutParams = ((View)localObject2).getLayoutParams();
      if (width == -1)
      {
        i = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        label304:
        if (height != -1) {
          break label349;
        }
      }
      label349:
      for (j = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);; j = getChildMeasureSpec(paramInt2, 0, height))
      {
        ((View)localObject2).measure(i, j);
        break;
        i = getChildMeasureSpec(paramInt1, 0, width);
        break label304;
      }
    }
  }
  
  public void setOnQuestionAnsweredListener(tw paramtw)
  {
    h = paramtw;
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.mixpanel.android.surveys.CardCarouselLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
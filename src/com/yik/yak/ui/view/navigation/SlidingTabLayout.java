package com.yik.yak.ui.view.navigation;

import CU;
import Gt;
import Gu;
import Gv;
import Gw;
import Gx;
import Hs;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.TextView;
import com.yik.yak.ui.adapter.MainActivityAdapter;
import java.util.ArrayList;

public class SlidingTabLayout
  extends HorizontalScrollView
{
  private final Gx a;
  private ArrayList<TextView> b = new ArrayList();
  private int c;
  private int d;
  private int e;
  private ViewPager f;
  private ViewPager.OnPageChangeListener g;
  private Gu h;
  
  public SlidingTabLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SlidingTabLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SlidingTabLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setHorizontalScrollBarEnabled(false);
    setFillViewport(true);
    c = ((int)(24.0F * getResourcesgetDisplayMetricsdensity));
    a = new Gx(paramContext);
    addView(a, -1, -2);
  }
  
  private void a()
  {
    MainActivityAdapter localMainActivityAdapter = (MainActivityAdapter)f.getAdapter();
    Gv localGv = new Gv(this, null);
    b.clear();
    int i = 0;
    while (i < localMainActivityAdapter.getCount())
    {
      View localView = LayoutInflater.from(getContext()).inflate(2130903160, a, false);
      ((ImageView)localView.findViewById(2131558856)).setImageResource(localMainActivityAdapter.b(i));
      Object localObject = (TextView)localView.findViewById(2131558857);
      b.add(localObject);
      localView.setOnClickListener(localGv);
      localObject = localView.getLayoutParams();
      int j = CU.a().length;
      width = (agetContextx / j);
      localView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      a.addView(localView);
      a.setBackgroundColor(getContext().getResources().getColor(2131427561));
      i += 1;
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    int i = a.getChildCount();
    if ((i == 0) || (paramInt1 < 0) || (paramInt1 >= i)) {}
    View localView;
    do
    {
      return;
      localView = a.getChildAt(paramInt1);
    } while (localView == null);
    i = 0;
    if (i < a.getChildCount())
    {
      ImageView localImageView = (ImageView)a.getChildAt(i).findViewById(2131558856);
      if (i == paramInt1) {
        localImageView.setAlpha(1.0F);
      }
      for (;;)
      {
        i += 1;
        break;
        localImageView.setAlpha(0.7F);
      }
    }
    i = localView.getLeft() + paramInt2;
    if (paramInt1 <= 0)
    {
      paramInt1 = i;
      if (paramInt2 <= 0) {}
    }
    else
    {
      paramInt1 = i - c;
    }
    scrollTo(paramInt1, 0);
  }
  
  public TextView a(int paramInt)
  {
    TextView localTextView = null;
    if (b.size() >= paramInt) {
      localTextView = (TextView)b.get(paramInt);
    }
    return localTextView;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (f != null) {
      a(f.getCurrentItem(), 0);
    }
  }
  
  public void setCustomTabColorizer(Gw paramGw)
  {
    a.a(paramGw);
  }
  
  public void setCustomTabView(int paramInt1, int paramInt2)
  {
    d = paramInt1;
    e = paramInt2;
  }
  
  public void setDividerColors(int... paramVarArgs)
  {
    a.b(paramVarArgs);
  }
  
  public void setOnPageChangeListener(ViewPager.OnPageChangeListener paramOnPageChangeListener)
  {
    g = paramOnPageChangeListener;
  }
  
  public void setOnTabReselectedListener(Gu paramGu)
  {
    h = paramGu;
  }
  
  public void setSelectedIndicatorColors(int... paramVarArgs)
  {
    a.a(paramVarArgs);
  }
  
  public void setViewPager(ViewPager paramViewPager)
  {
    a.removeAllViews();
    f = paramViewPager;
    if (paramViewPager != null)
    {
      paramViewPager.setOnPageChangeListener(new Gt(this, null));
      a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.navigation.SlidingTabLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
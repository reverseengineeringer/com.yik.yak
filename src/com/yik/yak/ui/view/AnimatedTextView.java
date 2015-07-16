package com.yik.yak.ui.view;

import FI;
import FJ;
import FL;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import java.util.Iterator;
import java.util.LinkedList;
import zZ;

public class AnimatedTextView
  extends View
{
  private final int a = 80;
  private final int b = 10;
  private LinkedList<FJ> c = new LinkedList();
  private int d;
  private int e;
  private Paint f;
  private Paint g;
  
  public AnimatedTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b();
    a(paramAttributeSet);
  }
  
  private void a(AttributeSet paramAttributeSet)
  {
    int i = 0;
    paramAttributeSet = getContext().getTheme().obtainStyledAttributes(paramAttributeSet, zZ.AnimatedTextView, 0, 0);
    int j = paramAttributeSet.getIndexCount();
    if (i < j)
    {
      int k = paramAttributeSet.getIndex(i);
      switch (k)
      {
      }
      for (;;)
      {
        i += 1;
        break;
        setNumber(paramAttributeSet.getInt(k, 10));
        continue;
        setColor(paramAttributeSet.getColor(k, -16777216));
        continue;
        setTextSize(paramAttributeSet.getDimensionPixelSize(k, 80));
      }
    }
    paramAttributeSet.recycle();
  }
  
  private void a(String paramString, FL paramFL, boolean paramBoolean)
  {
    int i;
    if (g()) {
      i = 1;
    }
    for (;;)
    {
      if (i < c.size())
      {
        int j = Integer.valueOf("" + paramString.charAt(i)).intValue();
        ((FJ)c.get(i)).a(j, paramFL);
        i += 1;
      }
      else
      {
        if (paramBoolean)
        {
          requestLayout();
          return;
        }
        invalidate();
        return;
        i = 0;
      }
    }
  }
  
  private boolean a(String paramString)
  {
    int j = paramString.replace("-", "").length();
    int i;
    if (e < 0)
    {
      bool = e();
      i = h();
      if (j == i) {
        break label78;
      }
      label35:
      if (i == j) {
        break label75;
      }
      if (i <= j) {
        break label67;
      }
      d();
    }
    for (;;)
    {
      i = h();
      break label35;
      bool = f();
      break;
      label67:
      c();
    }
    label75:
    boolean bool = true;
    label78:
    return bool;
  }
  
  private void b()
  {
    g = new Paint();
    g.setTextAlign(Paint.Align.CENTER);
    f = new Paint();
    f.setColor(-65536);
    f.setStyle(Paint.Style.STROKE);
  }
  
  private boolean c()
  {
    FJ localFJ1 = new FJ(this);
    if (g())
    {
      FJ localFJ2 = (FJ)c.removeFirst();
      c.addFirst(localFJ1);
      c.addFirst(localFJ2);
    }
    for (;;)
    {
      return true;
      c.addFirst(localFJ1);
    }
  }
  
  private boolean d()
  {
    if (c.isEmpty()) {
      return false;
    }
    FJ localFJ2 = (FJ)c.getFirst();
    FJ localFJ1 = localFJ2;
    if ((localFJ2 instanceof FI)) {
      localFJ1 = (FJ)c.get(1);
    }
    c.remove(localFJ1);
    return true;
  }
  
  private boolean e()
  {
    if (!g())
    {
      c.addFirst(new FI(this));
      return true;
    }
    return false;
  }
  
  private boolean f()
  {
    if (g())
    {
      c.removeFirst();
      return true;
    }
    return false;
  }
  
  private boolean g()
  {
    return (!c.isEmpty()) && ((c.getFirst() instanceof FI));
  }
  
  private int h()
  {
    int j = c.size();
    int i = j;
    if (g()) {
      i = j - 1;
    }
    return i;
  }
  
  private void i()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      ((FJ)localIterator.next()).c();
    }
  }
  
  private void j()
  {
    d = 0;
    if (!c.isEmpty())
    {
      String str = ((FJ)c.get(0)).a();
      Rect localRect = new Rect();
      g.getTextBounds("4", 0, str.length(), localRect);
      d += localRect.width();
    }
  }
  
  public int a()
  {
    return (int)g.getTextSize();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int k = getHeight() / 2;
    int i = d;
    int j = c.size();
    j = getWidth() / 2 - i * j / 2;
    i = 0;
    while (i < c.size())
    {
      ((FJ)c.get(i)).a(paramCanvas, d / 2 + j, k, g);
      j += d;
      i += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    j();
    paramInt1 = getPaddingLeft();
    paramInt2 = getPaddingRight();
    int i = getPaddingTop();
    int j = getPaddingBottom();
    setMeasuredDimension(paramInt1 + paramInt2 + d * c.size() + 24, (int)((i + j + a()) * 1.25D));
  }
  
  public void setColor(int paramInt)
  {
    g.setColor(paramInt);
    invalidate();
  }
  
  public void setNumber(int paramInt)
  {
    FL localFL;
    if (paramInt > e) {
      if (paramInt > 0) {
        localFL = FL.a;
      }
    }
    for (;;)
    {
      setNumber(paramInt, localFL);
      do
      {
        return;
        localFL = FL.b;
        break;
      } while (paramInt >= e);
      if (paramInt >= 0) {
        localFL = FL.b;
      } else {
        localFL = FL.a;
      }
    }
  }
  
  public void setNumber(int paramInt, FL paramFL)
  {
    i();
    e = paramInt;
    String str = String.valueOf(paramInt);
    a(str, paramFL, a(str));
  }
  
  public void setTextSize(int paramInt)
  {
    g.setTextSize(paramInt);
    requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.AnimatedTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
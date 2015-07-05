package com.yik.yak.ui.view;

import Fc;
import Fd;
import Ff;
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
import zP;

public class AnimatedTextView
  extends View
{
  private static final String a = AnimatedTextView.class.getSimpleName();
  private final int b = 80;
  private final int c = 10;
  private LinkedList<Fd> d = new LinkedList();
  private int e;
  private int f;
  private Paint g;
  private Paint h;
  
  public AnimatedTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b();
    a(paramAttributeSet);
  }
  
  private void a(AttributeSet paramAttributeSet)
  {
    int i = 0;
    paramAttributeSet = getContext().getTheme().obtainStyledAttributes(paramAttributeSet, zP.AnimatedTextView, 0, 0);
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
  
  private void a(String paramString, Ff paramFf, boolean paramBoolean)
  {
    int i;
    if (g()) {
      i = 1;
    }
    for (;;)
    {
      if (i < d.size())
      {
        int j = Integer.valueOf("" + paramString.charAt(i)).intValue();
        ((Fd)d.get(i)).a(j, paramFf);
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
    if (f < 0)
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
    h = new Paint();
    h.setTextAlign(Paint.Align.CENTER);
    g = new Paint();
    g.setColor(-65536);
    g.setStyle(Paint.Style.STROKE);
  }
  
  private boolean c()
  {
    Fd localFd1 = new Fd(this);
    if (g())
    {
      Fd localFd2 = (Fd)d.removeFirst();
      d.addFirst(localFd1);
      d.addFirst(localFd2);
    }
    for (;;)
    {
      return true;
      d.addFirst(localFd1);
    }
  }
  
  private boolean d()
  {
    if (d.isEmpty()) {
      return false;
    }
    Fd localFd2 = (Fd)d.getFirst();
    Fd localFd1 = localFd2;
    if ((localFd2 instanceof Fc)) {
      localFd1 = (Fd)d.get(1);
    }
    d.remove(localFd1);
    return true;
  }
  
  private boolean e()
  {
    if (!g())
    {
      d.addFirst(new Fc(this));
      return true;
    }
    return false;
  }
  
  private boolean f()
  {
    if (g())
    {
      d.removeFirst();
      return true;
    }
    return false;
  }
  
  private boolean g()
  {
    return (!d.isEmpty()) && ((d.getFirst() instanceof Fc));
  }
  
  private int h()
  {
    int j = d.size();
    int i = j;
    if (g()) {
      i = j - 1;
    }
    return i;
  }
  
  private void i()
  {
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext()) {
      ((Fd)localIterator.next()).c();
    }
  }
  
  private void j()
  {
    e = 0;
    if (!d.isEmpty())
    {
      String str = ((Fd)d.get(0)).a();
      Rect localRect = new Rect();
      h.getTextBounds("4", 0, str.length(), localRect);
      e += localRect.width();
    }
  }
  
  public int a()
  {
    return (int)h.getTextSize();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int k = getHeight() / 2;
    int i = e;
    int j = d.size();
    j = getWidth() / 2 - i * j / 2;
    i = 0;
    while (i < d.size())
    {
      ((Fd)d.get(i)).a(paramCanvas, e / 2 + j, k, h);
      j += e;
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
    setMeasuredDimension(paramInt1 + paramInt2 + e * d.size() + 24, (int)((i + j + a()) * 1.25D));
  }
  
  public void setColor(int paramInt)
  {
    h.setColor(paramInt);
    invalidate();
  }
  
  public void setNumber(int paramInt)
  {
    Ff localFf;
    if (paramInt > f) {
      if (paramInt > 0) {
        localFf = Ff.a;
      }
    }
    for (;;)
    {
      setNumber(paramInt, localFf);
      do
      {
        return;
        localFf = Ff.b;
        break;
      } while (paramInt >= f);
      if (paramInt >= 0) {
        localFf = Ff.b;
      } else {
        localFf = Ff.a;
      }
    }
  }
  
  public void setNumber(int paramInt, Ff paramFf)
  {
    i();
    f = paramInt;
    String str = String.valueOf(paramInt);
    a(str, paramFf, a(str));
  }
  
  public void setTextSize(int paramInt)
  {
    h.setTextSize(paramInt);
    requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.AnimatedTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
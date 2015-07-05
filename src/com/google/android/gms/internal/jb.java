package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.net.Uri;
import android.widget.ImageView;
import hW;

public final class jb
  extends ImageView
{
  private Uri a;
  private int b;
  private int c;
  private hW d;
  private int e;
  private float f;
  
  public int a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    b = paramInt;
  }
  
  public void a(Uri paramUri)
  {
    a = paramUri;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (d != null) {
      paramCanvas.clipPath(d.a(getWidth(), getHeight()));
    }
    super.onDraw(paramCanvas);
    if (c != 0) {
      paramCanvas.drawColor(c);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    switch (e)
    {
    default: 
      return;
    case 1: 
      paramInt1 = getMeasuredHeight();
      paramInt2 = (int)(paramInt1 * f);
    }
    for (;;)
    {
      setMeasuredDimension(paramInt2, paramInt1);
      return;
      paramInt2 = getMeasuredWidth();
      paramInt1 = (int)(paramInt2 / f);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
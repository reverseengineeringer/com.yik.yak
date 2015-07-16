package com.mixpanel.android.surveys;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.ImageView;
import rk;

public class FadingImageView
  extends ImageView
{
  private Matrix a;
  private Paint b;
  private Shader c;
  private Paint d;
  private Shader e;
  private int f;
  private int g;
  
  public FadingImageView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public FadingImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public FadingImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    a = new Matrix();
    b = new Paint();
    Shader.TileMode localTileMode = Shader.TileMode.CLAMP;
    c = new LinearGradient(0.0F, 0.0F, 0.0F, 1.0F, new int[] { -16777216, -16777216, -452984832, 0 }, new float[] { 0.0F, 0.7F, 0.8F, 1.0F }, localTileMode);
    b.setShader(c);
    b.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    d = new Paint();
    localTileMode = Shader.TileMode.CLAMP;
    e = new LinearGradient(0.0F, 0.0F, 0.0F, 1.0F, new int[] { 0, 0, -16777216, -16777216 }, new float[] { 0.0F, 0.85F, 0.98F, 1.0F }, localTileMode);
    d.setShader(e);
    b.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = paramCanvas.getClipBounds();
    int i = paramCanvas.saveLayer(0.0F, 0.0F, localRect.width(), localRect.height(), null, 31);
    super.draw(paramCanvas);
    if (getResourcesgetConfigurationorientation == 1) {
      paramCanvas.drawRect(0.0F, 0.0F, g, f, b);
    }
    for (;;)
    {
      paramCanvas.restoreToCount(i);
      return;
      paramCanvas.drawRect(getPaddingLeft(), getPaddingTop(), g - getPaddingRight(), f - getPaddingBottom(), d);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    f = getHeight();
    g = getWidth();
    int i = View.MeasureSpec.getSize(paramInt2);
    if (getResourcesgetConfigurationorientation == 1)
    {
      View localView = getRootView().findViewById(rk.com_mixpanel_android_notification_bottom_wrapper);
      paramInt2 = 0;
      paramInt1 = paramInt2;
      if (localView != null)
      {
        paramInt1 = paramInt2;
        if (localView.getHeight() != 0) {
          paramInt1 = localView.getHeight();
        }
      }
      float f1 = TypedValue.applyDimension(1, 15.0F, getResources().getDisplayMetrics());
      a.setScale(1.0F, i - paramInt1 + f1);
    }
    for (;;)
    {
      c.setLocalMatrix(a);
      e.setLocalMatrix(a);
      return;
      a.setScale(1.0F, i);
    }
  }
}

/* Location:
 * Qualified Name:     com.mixpanel.android.surveys.FadingImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
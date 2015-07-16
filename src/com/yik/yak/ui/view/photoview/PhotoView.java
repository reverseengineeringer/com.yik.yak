package com.yik.yak.ui.view.photoview;

import GI;
import GO;
import GT;
import GU;
import GV;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.View.OnLongClickListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

public class PhotoView
  extends ImageView
  implements GI
{
  private final GO a;
  private ImageView.ScaleType b;
  
  public PhotoView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PhotoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public PhotoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    super.setScaleType(ImageView.ScaleType.MATRIX);
    a = new GO(this);
    if (b != null)
    {
      setScaleType(b);
      b = null;
    }
  }
  
  public ImageView.ScaleType getScaleType()
  {
    return a.h();
  }
  
  protected void onDetachedFromWindow()
  {
    a.a();
    super.onDetachedFromWindow();
  }
  
  public void setAllowParentInterceptOnEdge(boolean paramBoolean)
  {
    a.a(paramBoolean);
  }
  
  public void setImageDrawable(Drawable paramDrawable)
  {
    super.setImageDrawable(paramDrawable);
    if (a != null) {
      a.k();
    }
  }
  
  public void setImageResource(int paramInt)
  {
    super.setImageResource(paramInt);
    if (a != null) {
      a.k();
    }
  }
  
  public void setImageURI(Uri paramUri)
  {
    super.setImageURI(paramUri);
    if (a != null) {
      a.k();
    }
  }
  
  @Deprecated
  public void setMaxScale(float paramFloat)
  {
    setMaximumScale(paramFloat);
  }
  
  public void setMaximumScale(float paramFloat)
  {
    a.e(paramFloat);
  }
  
  public void setMediumScale(float paramFloat)
  {
    a.d(paramFloat);
  }
  
  @Deprecated
  public void setMidScale(float paramFloat)
  {
    setMediumScale(paramFloat);
  }
  
  @Deprecated
  public void setMinScale(float paramFloat)
  {
    setMinimumScale(paramFloat);
  }
  
  public void setMinimumScale(float paramFloat)
  {
    a.c(paramFloat);
  }
  
  public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener)
  {
    a.a(paramOnDoubleTapListener);
  }
  
  public void setOnLongClickListener(View.OnLongClickListener paramOnLongClickListener)
  {
    a.a(paramOnLongClickListener);
  }
  
  public void setOnMatrixChangeListener(GT paramGT)
  {
    a.a(paramGT);
  }
  
  public void setOnPhotoTapListener(GU paramGU)
  {
    a.a(paramGU);
  }
  
  public void setOnViewTapListener(GV paramGV)
  {
    a.a(paramGV);
  }
  
  public void setPhotoViewRotation(float paramFloat)
  {
    a.a(paramFloat);
  }
  
  public void setRotationBy(float paramFloat)
  {
    a.b(paramFloat);
  }
  
  public void setRotationTo(float paramFloat)
  {
    a.a(paramFloat);
  }
  
  public void setScale(float paramFloat)
  {
    a.f(paramFloat);
  }
  
  public void setScale(float paramFloat1, float paramFloat2, float paramFloat3, boolean paramBoolean)
  {
    a.a(paramFloat1, paramFloat2, paramFloat3, paramBoolean);
  }
  
  public void setScale(float paramFloat, boolean paramBoolean)
  {
    a.a(paramFloat, paramBoolean);
  }
  
  public void setScaleType(ImageView.ScaleType paramScaleType)
  {
    if (a != null)
    {
      a.a(paramScaleType);
      return;
    }
    b = paramScaleType;
  }
  
  public void setZoomTransitionDuration(int paramInt)
  {
    a.a(paramInt);
  }
  
  public void setZoomable(boolean paramBoolean)
  {
    a.b(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.photoview.PhotoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
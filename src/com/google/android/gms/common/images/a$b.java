package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.internal.jb;
import hQ;
import hZ;
import iA;
import java.lang.ref.WeakReference;

public final class a$b
  extends a
{
  private WeakReference<ImageView> LS;
  
  public a$b(ImageView paramImageView, int paramInt)
  {
    super(null, paramInt);
    hZ.a(paramImageView);
    LS = new WeakReference(paramImageView);
  }
  
  public a$b(ImageView paramImageView, Uri paramUri)
  {
    super(paramUri, 0);
    hZ.a(paramImageView);
    LS = new WeakReference(paramImageView);
  }
  
  private void a(ImageView paramImageView, Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if ((!paramBoolean2) && (!paramBoolean3)) {}
    for (int i = 1; (i != 0) && ((paramImageView instanceof jb)); i = 0)
    {
      int j = ((jb)paramImageView).a();
      if ((LL == 0) || (j != LL)) {
        break;
      }
      return;
    }
    paramBoolean1 = b(paramBoolean1, paramBoolean2);
    if ((LM) && (paramDrawable != null)) {
      paramDrawable = paramDrawable.getConstantState().newDrawable();
    }
    for (;;)
    {
      Object localObject = paramDrawable;
      if (paramBoolean1) {
        localObject = a(paramImageView.getDrawable(), paramDrawable);
      }
      paramImageView.setImageDrawable((Drawable)localObject);
      if ((paramImageView instanceof jb))
      {
        paramDrawable = (jb)paramImageView;
        if (!paramBoolean3) {
          break label171;
        }
        paramImageView = LJ.uri;
        label133:
        paramDrawable.a(paramImageView);
        if (i == 0) {
          break label176;
        }
      }
      label171:
      label176:
      for (i = LL;; i = 0)
      {
        paramDrawable.a(i);
        if (!paramBoolean1) {
          break;
        }
        ((hQ)localObject).a(250);
        return;
        paramImageView = null;
        break label133;
      }
    }
  }
  
  protected void a(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    ImageView localImageView = (ImageView)LS.get();
    if (localImageView != null) {
      a(localImageView, paramDrawable, paramBoolean1, paramBoolean2, paramBoolean3);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    Object localObject = (b)paramObject;
    paramObject = (ImageView)LS.get();
    localObject = (ImageView)LS.get();
    if ((localObject != null) && (paramObject != null) && (iA.a(localObject, paramObject))) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public int hashCode()
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
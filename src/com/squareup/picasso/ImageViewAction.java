package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

class ImageViewAction
  extends Action<ImageView>
{
  Callback callback;
  
  ImageViewAction(Picasso paramPicasso, ImageView paramImageView, Request paramRequest, boolean paramBoolean1, boolean paramBoolean2, int paramInt, Drawable paramDrawable, String paramString, Callback paramCallback)
  {
    super(paramPicasso, paramImageView, paramRequest, paramBoolean1, paramBoolean2, paramInt, paramDrawable, paramString);
    callback = paramCallback;
  }
  
  void cancel()
  {
    super.cancel();
    if (callback != null) {
      callback = null;
    }
  }
  
  public void complete(Bitmap paramBitmap, Picasso.LoadedFrom paramLoadedFrom)
  {
    if (paramBitmap == null) {
      throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", new Object[] { this }));
    }
    ImageView localImageView = (ImageView)target.get();
    if (localImageView == null) {}
    do
    {
      return;
      Context localContext = picasso.context;
      boolean bool = picasso.indicatorsEnabled;
      PicassoDrawable.setBitmap(localImageView, localContext, paramBitmap, paramLoadedFrom, noFade, bool);
    } while (callback == null);
    callback.onSuccess();
  }
  
  public void error()
  {
    ImageView localImageView = (ImageView)target.get();
    if (localImageView == null) {}
    for (;;)
    {
      return;
      if (errorResId != 0) {
        localImageView.setImageResource(errorResId);
      }
      while (callback != null)
      {
        callback.onError();
        return;
        if (errorDrawable != null) {
          localImageView.setImageDrawable(errorDrawable);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.ImageViewAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
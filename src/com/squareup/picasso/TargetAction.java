package com.squareup.picasso;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

final class TargetAction
  extends Action<Target>
{
  TargetAction(Picasso paramPicasso, Target paramTarget, Request paramRequest, boolean paramBoolean, int paramInt, Drawable paramDrawable, String paramString)
  {
    super(paramPicasso, paramTarget, paramRequest, paramBoolean, false, paramInt, paramDrawable, paramString);
  }
  
  void complete(Bitmap paramBitmap, Picasso.LoadedFrom paramLoadedFrom)
  {
    if (paramBitmap == null) {
      throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", new Object[] { this }));
    }
    Target localTarget = (Target)getTarget();
    if (localTarget != null)
    {
      localTarget.onBitmapLoaded(paramBitmap, paramLoadedFrom);
      if (paramBitmap.isRecycled()) {
        throw new IllegalStateException("Target callback must not recycle bitmap!");
      }
    }
  }
  
  void error()
  {
    Target localTarget = (Target)getTarget();
    if (localTarget != null)
    {
      if (errorResId != 0) {
        localTarget.onBitmapFailed(picasso.context.getResources().getDrawable(errorResId));
      }
    }
    else {
      return;
    }
    localTarget.onBitmapFailed(errorDrawable);
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.TargetAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
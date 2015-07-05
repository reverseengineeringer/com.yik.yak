package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

abstract class Action<T>
{
  boolean cancelled;
  final Drawable errorDrawable;
  final int errorResId;
  final String key;
  final boolean noFade;
  final Picasso picasso;
  final Request request;
  final boolean skipCache;
  final WeakReference<T> target;
  boolean willReplay;
  
  Action(Picasso paramPicasso, T paramT, Request paramRequest, boolean paramBoolean1, boolean paramBoolean2, int paramInt, Drawable paramDrawable, String paramString)
  {
    picasso = paramPicasso;
    request = paramRequest;
    target = new Action.RequestWeakReference(this, paramT, referenceQueue);
    skipCache = paramBoolean1;
    noFade = paramBoolean2;
    errorResId = paramInt;
    errorDrawable = paramDrawable;
    key = paramString;
  }
  
  void cancel()
  {
    cancelled = true;
  }
  
  abstract void complete(Bitmap paramBitmap, Picasso.LoadedFrom paramLoadedFrom);
  
  abstract void error();
  
  String getKey()
  {
    return key;
  }
  
  Picasso getPicasso()
  {
    return picasso;
  }
  
  Request getRequest()
  {
    return request;
  }
  
  T getTarget()
  {
    return (T)target.get();
  }
  
  boolean isCancelled()
  {
    return cancelled;
  }
  
  boolean willReplay()
  {
    return willReplay;
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.Action
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
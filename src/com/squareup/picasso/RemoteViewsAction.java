package com.squareup.picasso;

import android.graphics.Bitmap;
import android.widget.RemoteViews;

abstract class RemoteViewsAction
  extends Action<RemoteViewsAction.RemoteViewsTarget>
{
  final RemoteViews remoteViews;
  final int viewId;
  
  RemoteViewsAction(Picasso paramPicasso, Request paramRequest, RemoteViews paramRemoteViews, int paramInt1, int paramInt2, boolean paramBoolean, String paramString)
  {
    super(paramPicasso, new RemoteViewsAction.RemoteViewsTarget(paramRemoteViews, paramInt1), paramRequest, paramBoolean, false, paramInt2, null, paramString);
    remoteViews = paramRemoteViews;
    viewId = paramInt1;
  }
  
  void complete(Bitmap paramBitmap, Picasso.LoadedFrom paramLoadedFrom)
  {
    remoteViews.setImageViewBitmap(viewId, paramBitmap);
    update();
  }
  
  public void error()
  {
    if (errorResId != 0) {
      setImageResource(errorResId);
    }
  }
  
  void setImageResource(int paramInt)
  {
    remoteViews.setImageViewResource(viewId, paramInt);
    update();
  }
  
  abstract void update();
}

/* Location:
 * Qualified Name:     com.squareup.picasso.RemoteViewsAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
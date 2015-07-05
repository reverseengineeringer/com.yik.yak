package com.facebook.widget;

import android.widget.ImageView;
import com.facebook.internal.ImageRequest.Callback;
import com.facebook.internal.ImageResponse;

class GraphObjectAdapter$2
  implements ImageRequest.Callback
{
  GraphObjectAdapter$2(GraphObjectAdapter paramGraphObjectAdapter, String paramString, ImageView paramImageView) {}
  
  public void onCompleted(ImageResponse paramImageResponse)
  {
    GraphObjectAdapter.access$200(this$0, paramImageResponse, val$profileId, val$imageView);
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.GraphObjectAdapter.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
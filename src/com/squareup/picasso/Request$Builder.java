package com.squareup.picasso;

import android.graphics.Bitmap.Config;
import android.net.Uri;
import java.util.ArrayList;
import java.util.List;

public final class Request$Builder
{
  private boolean centerCrop;
  private boolean centerInside;
  private Bitmap.Config config;
  private boolean hasRotationPivot;
  private int resourceId;
  private float rotationDegrees;
  private float rotationPivotX;
  private float rotationPivotY;
  private int targetHeight;
  private int targetWidth;
  private List<Transformation> transformations;
  private Uri uri;
  
  public Request$Builder(int paramInt)
  {
    setResourceId(paramInt);
  }
  
  public Request$Builder(Uri paramUri)
  {
    setUri(paramUri);
  }
  
  Request$Builder(Uri paramUri, int paramInt)
  {
    uri = paramUri;
    resourceId = paramInt;
  }
  
  private Request$Builder(Request paramRequest)
  {
    uri = uri;
    resourceId = resourceId;
    targetWidth = targetWidth;
    targetHeight = targetHeight;
    centerCrop = centerCrop;
    centerInside = centerInside;
    rotationDegrees = rotationDegrees;
    rotationPivotX = rotationPivotX;
    rotationPivotY = rotationPivotY;
    hasRotationPivot = hasRotationPivot;
    if (transformations != null) {
      transformations = new ArrayList(transformations);
    }
    config = config;
  }
  
  public Request build()
  {
    if ((centerInside) && (centerCrop)) {
      throw new IllegalStateException("Center crop and center inside can not be used together.");
    }
    if ((centerCrop) && (targetWidth == 0)) {
      throw new IllegalStateException("Center crop requires calling resize.");
    }
    if ((centerInside) && (targetWidth == 0)) {
      throw new IllegalStateException("Center inside requires calling resize.");
    }
    return new Request(uri, resourceId, transformations, targetWidth, targetHeight, centerCrop, centerInside, rotationDegrees, rotationPivotX, rotationPivotY, hasRotationPivot, config, null);
  }
  
  public Builder centerCrop()
  {
    if (centerInside) {
      throw new IllegalStateException("Center crop can not be used after calling centerInside");
    }
    centerCrop = true;
    return this;
  }
  
  public Builder centerInside()
  {
    if (centerCrop) {
      throw new IllegalStateException("Center inside can not be used after calling centerCrop");
    }
    centerInside = true;
    return this;
  }
  
  public Builder clearCenterCrop()
  {
    centerCrop = false;
    return this;
  }
  
  public Builder clearCenterInside()
  {
    centerInside = false;
    return this;
  }
  
  public Builder clearResize()
  {
    targetWidth = 0;
    targetHeight = 0;
    centerCrop = false;
    centerInside = false;
    return this;
  }
  
  public Builder clearRotation()
  {
    rotationDegrees = 0.0F;
    rotationPivotX = 0.0F;
    rotationPivotY = 0.0F;
    hasRotationPivot = false;
    return this;
  }
  
  public Builder config(Bitmap.Config paramConfig)
  {
    config = paramConfig;
    return this;
  }
  
  boolean hasImage()
  {
    return (uri != null) || (resourceId != 0);
  }
  
  boolean hasSize()
  {
    return targetWidth != 0;
  }
  
  public Builder resize(int paramInt1, int paramInt2)
  {
    if (paramInt1 <= 0) {
      throw new IllegalArgumentException("Width must be positive number.");
    }
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("Height must be positive number.");
    }
    targetWidth = paramInt1;
    targetHeight = paramInt2;
    return this;
  }
  
  public Builder rotate(float paramFloat)
  {
    rotationDegrees = paramFloat;
    return this;
  }
  
  public Builder rotate(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    rotationDegrees = paramFloat1;
    rotationPivotX = paramFloat2;
    rotationPivotY = paramFloat3;
    hasRotationPivot = true;
    return this;
  }
  
  public Builder setResourceId(int paramInt)
  {
    if (paramInt == 0) {
      throw new IllegalArgumentException("Image resource ID may not be 0.");
    }
    resourceId = paramInt;
    uri = null;
    return this;
  }
  
  public Builder setUri(Uri paramUri)
  {
    if (paramUri == null) {
      throw new IllegalArgumentException("Image URI may not be null.");
    }
    uri = paramUri;
    resourceId = 0;
    return this;
  }
  
  public Builder transform(Transformation paramTransformation)
  {
    if (paramTransformation == null) {
      throw new IllegalArgumentException("Transformation must not be null.");
    }
    if (transformations == null) {
      transformations = new ArrayList(2);
    }
    transformations.add(paramTransformation);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.Request.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
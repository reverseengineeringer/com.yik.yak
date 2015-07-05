package com.squareup.picasso;

import android.graphics.Bitmap.Config;
import android.net.Uri;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class Request
{
  private static final long TOO_LONG_LOG = TimeUnit.SECONDS.toNanos(5L);
  public final boolean centerCrop;
  public final boolean centerInside;
  public final Bitmap.Config config;
  public final boolean hasRotationPivot;
  int id;
  public final int resourceId;
  public final float rotationDegrees;
  public final float rotationPivotX;
  public final float rotationPivotY;
  long started;
  public final int targetHeight;
  public final int targetWidth;
  public final List<Transformation> transformations;
  public final Uri uri;
  
  private Request(Uri paramUri, int paramInt1, List<Transformation> paramList, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, float paramFloat1, float paramFloat2, float paramFloat3, boolean paramBoolean3, Bitmap.Config paramConfig)
  {
    uri = paramUri;
    resourceId = paramInt1;
    if (paramList == null) {}
    for (transformations = null;; transformations = Collections.unmodifiableList(paramList))
    {
      targetWidth = paramInt2;
      targetHeight = paramInt3;
      centerCrop = paramBoolean1;
      centerInside = paramBoolean2;
      rotationDegrees = paramFloat1;
      rotationPivotX = paramFloat2;
      rotationPivotY = paramFloat3;
      hasRotationPivot = paramBoolean3;
      config = paramConfig;
      return;
    }
  }
  
  public Request.Builder buildUpon()
  {
    return new Request.Builder(this, null);
  }
  
  String getName()
  {
    if (uri != null) {
      return String.valueOf(uri.getPath());
    }
    return Integer.toHexString(resourceId);
  }
  
  boolean hasCustomTransformations()
  {
    return transformations != null;
  }
  
  public boolean hasSize()
  {
    return targetWidth != 0;
  }
  
  String logId()
  {
    long l = System.nanoTime() - started;
    if (l > TOO_LONG_LOG) {
      return plainId() + '+' + TimeUnit.NANOSECONDS.toSeconds(l) + 's';
    }
    return plainId() + '+' + TimeUnit.NANOSECONDS.toMillis(l) + "ms";
  }
  
  boolean needsMatrixTransform()
  {
    return (targetWidth != 0) || (rotationDegrees != 0.0F);
  }
  
  boolean needsTransformation()
  {
    return (needsMatrixTransform()) || (hasCustomTransformations());
  }
  
  String plainId()
  {
    return "[R" + id + ']';
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Request{");
    if (resourceId > 0) {
      localStringBuilder.append(resourceId);
    }
    while ((transformations != null) && (!transformations.isEmpty()))
    {
      Iterator localIterator = transformations.iterator();
      while (localIterator.hasNext())
      {
        Transformation localTransformation = (Transformation)localIterator.next();
        localStringBuilder.append(' ').append(localTransformation.key());
      }
      localStringBuilder.append(uri);
    }
    if (targetWidth > 0) {
      localStringBuilder.append(" resize(").append(targetWidth).append(',').append(targetHeight).append(')');
    }
    if (centerCrop) {
      localStringBuilder.append(" centerCrop");
    }
    if (centerInside) {
      localStringBuilder.append(" centerInside");
    }
    if (rotationDegrees != 0.0F)
    {
      localStringBuilder.append(" rotation(").append(rotationDegrees);
      if (hasRotationPivot) {
        localStringBuilder.append(" @ ").append(rotationPivotX).append(',').append(rotationPivotY);
      }
      localStringBuilder.append(')');
    }
    if (config != null) {
      localStringBuilder.append(' ').append(config);
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.Request
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
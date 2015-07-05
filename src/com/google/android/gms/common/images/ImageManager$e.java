package com.google.android.gms.common.images;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

final class ImageManager$e
  implements ComponentCallbacks2
{
  private final ImageManager.b Lz;
  
  public ImageManager$e(ImageManager.b paramb)
  {
    Lz = paramb;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onLowMemory()
  {
    Lz.evictAll();
  }
  
  public void onTrimMemory(int paramInt)
  {
    if (paramInt >= 60) {
      Lz.evictAll();
    }
    while (paramInt < 20) {
      return;
    }
    Lz.trimToSize(Lz.size() / 2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
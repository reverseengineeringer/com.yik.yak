package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.os.SystemClock;
import hZ;
import java.util.HashSet;
import java.util.Map;

final class ImageManager$d
  implements Runnable
{
  private final a LH;
  
  public ImageManager$d(ImageManager paramImageManager, a parama)
  {
    LH = parama;
  }
  
  public void run()
  {
    hZ.a("LoadImageRunnable must be executed on the main thread");
    Object localObject1 = (ImageManager.ImageReceiver)ImageManager.a(LF).get(LH);
    if (localObject1 != null)
    {
      ImageManager.a(LF).remove(LH);
      ((ImageManager.ImageReceiver)localObject1).c(LH);
    }
    a.a locala = LH.LJ;
    if (uri == null)
    {
      LH.a(ImageManager.b(LF), ImageManager.c(LF), true);
      return;
    }
    localObject1 = ImageManager.a(LF, locala);
    if (localObject1 != null)
    {
      LH.a(ImageManager.b(LF), (Bitmap)localObject1, true);
      return;
    }
    localObject1 = (Long)ImageManager.d(LF).get(uri);
    if (localObject1 != null)
    {
      if (SystemClock.elapsedRealtime() - ((Long)localObject1).longValue() < 3600000L)
      {
        LH.a(ImageManager.b(LF), ImageManager.c(LF), true);
        return;
      }
      ImageManager.d(LF).remove(uri);
    }
    LH.a(ImageManager.b(LF), ImageManager.c(LF));
    ??? = (ImageManager.ImageReceiver)ImageManager.e(LF).get(uri);
    localObject1 = ???;
    if (??? == null)
    {
      localObject1 = new ImageManager.ImageReceiver(LF, uri);
      ImageManager.e(LF).put(uri, localObject1);
    }
    ((ImageManager.ImageReceiver)localObject1).b(LH);
    if (!(LH instanceof a.c)) {
      ImageManager.a(LF).put(LH, localObject1);
    }
    synchronized (ImageManager.he())
    {
      if (!ImageManager.hf().contains(uri))
      {
        ImageManager.hf().add(uri);
        ((ImageManager.ImageReceiver)localObject1).hg();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
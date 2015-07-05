package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import hZ;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

final class ImageManager$f
  implements Runnable
{
  private boolean LI;
  private final Bitmap mBitmap;
  private final Uri mUri;
  private final CountDownLatch mr;
  
  public ImageManager$f(ImageManager paramImageManager, Uri paramUri, Bitmap paramBitmap, boolean paramBoolean, CountDownLatch paramCountDownLatch)
  {
    mUri = paramUri;
    mBitmap = paramBitmap;
    LI = paramBoolean;
    mr = paramCountDownLatch;
  }
  
  private void a(ImageManager.ImageReceiver paramImageReceiver, boolean paramBoolean)
  {
    paramImageReceiver = ImageManager.ImageReceiver.a(paramImageReceiver);
    int j = paramImageReceiver.size();
    int i = 0;
    if (i < j)
    {
      a locala = (a)paramImageReceiver.get(i);
      if (paramBoolean) {
        locala.a(ImageManager.b(LF), mBitmap, false);
      }
      for (;;)
      {
        if (!(locala instanceof a.c)) {
          ImageManager.a(LF).remove(locala);
        }
        i += 1;
        break;
        ImageManager.d(LF).put(mUri, Long.valueOf(SystemClock.elapsedRealtime()));
        locala.a(ImageManager.b(LF), ImageManager.c(LF), false);
      }
    }
  }
  
  public void run()
  {
    hZ.a("OnBitmapLoadedRunnable must be executed in the main thread");
    boolean bool;
    if (mBitmap != null) {
      bool = true;
    }
    while (ImageManager.h(LF) != null) {
      if (LI)
      {
        ImageManager.h(LF).evictAll();
        System.gc();
        LI = false;
        ImageManager.g(LF).post(this);
        return;
        bool = false;
      }
      else if (bool)
      {
        ImageManager.h(LF).put(new a.a(mUri), mBitmap);
      }
    }
    ??? = (ImageManager.ImageReceiver)ImageManager.e(LF).remove(mUri);
    if (??? != null) {
      a((ImageManager.ImageReceiver)???, bool);
    }
    mr.countDown();
    synchronized (ImageManager.he())
    {
      ImageManager.hf().remove(mUri);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import hX;
import hZ;
import ja;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ImageManager
{
  private static final Object Lu = new Object();
  private static HashSet<Uri> Lv = new HashSet();
  private static ImageManager Lw;
  private static ImageManager Lx;
  private final hX LA;
  private final Map<a, ImageManager.ImageReceiver> LB;
  private final Map<Uri, ImageManager.ImageReceiver> LC;
  private final Map<Uri, Long> LD;
  private final ExecutorService Ly;
  private final ImageManager.b Lz;
  private final Context mContext;
  private final Handler mHandler;
  
  private ImageManager(Context paramContext, boolean paramBoolean)
  {
    mContext = paramContext.getApplicationContext();
    mHandler = new Handler(Looper.getMainLooper());
    Ly = Executors.newFixedThreadPool(4);
    if (paramBoolean)
    {
      Lz = new ImageManager.b(mContext);
      if (ja.c()) {
        hd();
      }
    }
    for (;;)
    {
      LA = new hX();
      LB = new HashMap();
      LC = new HashMap();
      LD = new HashMap();
      return;
      Lz = null;
    }
  }
  
  private Bitmap a(a.a parama)
  {
    if (Lz == null) {
      return null;
    }
    return (Bitmap)Lz.get(parama);
  }
  
  public static ImageManager c(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (Lx == null) {
        Lx = new ImageManager(paramContext, true);
      }
      return Lx;
    }
    if (Lw == null) {
      Lw = new ImageManager(paramContext, false);
    }
    return Lw;
  }
  
  public static ImageManager create(Context paramContext)
  {
    return c(paramContext, false);
  }
  
  private void hd()
  {
    mContext.registerComponentCallbacks(new ImageManager.e(Lz));
  }
  
  public void a(a parama)
  {
    hZ.a("ImageManager.loadImage() must be called in the main thread");
    new ImageManager.d(this, parama).run();
  }
  
  public void loadImage(ImageView paramImageView, int paramInt)
  {
    a(new a.b(paramImageView, paramInt));
  }
  
  public void loadImage(ImageView paramImageView, Uri paramUri)
  {
    a(new a.b(paramImageView, paramUri));
  }
  
  public void loadImage(ImageView paramImageView, Uri paramUri, int paramInt)
  {
    paramImageView = new a.b(paramImageView, paramUri);
    paramImageView.az(paramInt);
    a(paramImageView);
  }
  
  public void loadImage(ImageManager.OnImageLoadedListener paramOnImageLoadedListener, Uri paramUri)
  {
    a(new a.c(paramOnImageLoadedListener, paramUri));
  }
  
  public void loadImage(ImageManager.OnImageLoadedListener paramOnImageLoadedListener, Uri paramUri, int paramInt)
  {
    paramOnImageLoadedListener = new a.c(paramOnImageLoadedListener, paramUri);
    paramOnImageLoadedListener.az(paramInt);
    a(paramOnImageLoadedListener);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
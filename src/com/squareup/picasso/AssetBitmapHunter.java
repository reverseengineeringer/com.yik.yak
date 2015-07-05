package com.squareup.picasso;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.net.Uri;

class AssetBitmapHunter
  extends BitmapHunter
{
  protected static final String ANDROID_ASSET = "android_asset";
  private static final int ASSET_PREFIX_LENGTH = "file:///android_asset/".length();
  private final AssetManager assetManager;
  
  public AssetBitmapHunter(Context paramContext, Picasso paramPicasso, Dispatcher paramDispatcher, Cache paramCache, Stats paramStats, Action paramAction)
  {
    super(paramPicasso, paramDispatcher, paramCache, paramStats, paramAction);
    assetManager = paramContext.getAssets();
  }
  
  Bitmap decode(Request paramRequest)
  {
    return decodeAsset(uri.toString().substring(ASSET_PREFIX_LENGTH));
  }
  
  /* Error */
  Bitmap decodeAsset(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 64	com/squareup/picasso/AssetBitmapHunter:data	Lcom/squareup/picasso/Request;
    //   6: invokestatic 68	com/squareup/picasso/AssetBitmapHunter:createBitmapOptions	(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;
    //   9: astore 4
    //   11: aload 4
    //   13: invokestatic 72	com/squareup/picasso/AssetBitmapHunter:requiresInSampleSize	(Landroid/graphics/BitmapFactory$Options;)Z
    //   16: ifeq +45 -> 61
    //   19: aload_0
    //   20: getfield 38	com/squareup/picasso/AssetBitmapHunter:assetManager	Landroid/content/res/AssetManager;
    //   23: aload_1
    //   24: invokevirtual 78	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   27: astore_3
    //   28: aload_3
    //   29: astore_2
    //   30: aload_3
    //   31: aconst_null
    //   32: aload 4
    //   34: invokestatic 84	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   37: pop
    //   38: aload_3
    //   39: invokestatic 90	com/squareup/picasso/Utils:closeQuietly	(Ljava/io/InputStream;)V
    //   42: aload_0
    //   43: getfield 64	com/squareup/picasso/AssetBitmapHunter:data	Lcom/squareup/picasso/Request;
    //   46: getfield 93	com/squareup/picasso/Request:targetWidth	I
    //   49: aload_0
    //   50: getfield 64	com/squareup/picasso/AssetBitmapHunter:data	Lcom/squareup/picasso/Request;
    //   53: getfield 96	com/squareup/picasso/Request:targetHeight	I
    //   56: aload 4
    //   58: invokestatic 100	com/squareup/picasso/AssetBitmapHunter:calculateInSampleSize	(IILandroid/graphics/BitmapFactory$Options;)V
    //   61: aload_0
    //   62: getfield 38	com/squareup/picasso/AssetBitmapHunter:assetManager	Landroid/content/res/AssetManager;
    //   65: aload_1
    //   66: invokevirtual 78	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   69: astore_1
    //   70: aload_1
    //   71: aconst_null
    //   72: aload 4
    //   74: invokestatic 84	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   77: astore_2
    //   78: aload_1
    //   79: invokestatic 90	com/squareup/picasso/Utils:closeQuietly	(Ljava/io/InputStream;)V
    //   82: aload_2
    //   83: areturn
    //   84: astore_1
    //   85: aload_2
    //   86: invokestatic 90	com/squareup/picasso/Utils:closeQuietly	(Ljava/io/InputStream;)V
    //   89: aload_1
    //   90: athrow
    //   91: astore_2
    //   92: aload_1
    //   93: invokestatic 90	com/squareup/picasso/Utils:closeQuietly	(Ljava/io/InputStream;)V
    //   96: aload_2
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	AssetBitmapHunter
    //   0	98	1	paramString	String
    //   1	85	2	localObject1	Object
    //   91	6	2	localObject2	Object
    //   27	12	3	localInputStream	java.io.InputStream
    //   9	64	4	localOptions	android.graphics.BitmapFactory.Options
    // Exception table:
    //   from	to	target	type
    //   19	28	84	finally
    //   30	38	84	finally
    //   70	78	91	finally
  }
  
  Picasso.LoadedFrom getLoadedFrom()
  {
    return Picasso.LoadedFrom.DISK;
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.AssetBitmapHunter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
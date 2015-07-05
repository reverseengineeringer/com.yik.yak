package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;

class ContentStreamBitmapHunter
  extends BitmapHunter
{
  final Context context;
  
  ContentStreamBitmapHunter(Context paramContext, Picasso paramPicasso, Dispatcher paramDispatcher, Cache paramCache, Stats paramStats, Action paramAction)
  {
    super(paramPicasso, paramDispatcher, paramCache, paramStats, paramAction);
    context = paramContext;
  }
  
  Bitmap decode(Request paramRequest)
  {
    return decodeContentStream(paramRequest);
  }
  
  /* Error */
  protected Bitmap decodeContentStream(Request paramRequest)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 13	com/squareup/picasso/ContentStreamBitmapHunter:context	Landroid/content/Context;
    //   6: invokevirtual 25	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   9: astore 5
    //   11: aload_1
    //   12: invokestatic 29	com/squareup/picasso/ContentStreamBitmapHunter:createBitmapOptions	(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;
    //   15: astore 4
    //   17: aload 4
    //   19: invokestatic 33	com/squareup/picasso/ContentStreamBitmapHunter:requiresInSampleSize	(Landroid/graphics/BitmapFactory$Options;)Z
    //   22: ifeq +40 -> 62
    //   25: aload 5
    //   27: aload_1
    //   28: getfield 39	com/squareup/picasso/Request:uri	Landroid/net/Uri;
    //   31: invokevirtual 45	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   34: astore_3
    //   35: aload_3
    //   36: astore_2
    //   37: aload_3
    //   38: aconst_null
    //   39: aload 4
    //   41: invokestatic 51	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   44: pop
    //   45: aload_3
    //   46: invokestatic 57	com/squareup/picasso/Utils:closeQuietly	(Ljava/io/InputStream;)V
    //   49: aload_1
    //   50: getfield 61	com/squareup/picasso/Request:targetWidth	I
    //   53: aload_1
    //   54: getfield 64	com/squareup/picasso/Request:targetHeight	I
    //   57: aload 4
    //   59: invokestatic 68	com/squareup/picasso/ContentStreamBitmapHunter:calculateInSampleSize	(IILandroid/graphics/BitmapFactory$Options;)V
    //   62: aload 5
    //   64: aload_1
    //   65: getfield 39	com/squareup/picasso/Request:uri	Landroid/net/Uri;
    //   68: invokevirtual 45	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   71: astore_1
    //   72: aload_1
    //   73: aconst_null
    //   74: aload 4
    //   76: invokestatic 51	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   79: astore_2
    //   80: aload_1
    //   81: invokestatic 57	com/squareup/picasso/Utils:closeQuietly	(Ljava/io/InputStream;)V
    //   84: aload_2
    //   85: areturn
    //   86: astore_1
    //   87: aload_2
    //   88: invokestatic 57	com/squareup/picasso/Utils:closeQuietly	(Ljava/io/InputStream;)V
    //   91: aload_1
    //   92: athrow
    //   93: astore_2
    //   94: aload_1
    //   95: invokestatic 57	com/squareup/picasso/Utils:closeQuietly	(Ljava/io/InputStream;)V
    //   98: aload_2
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	ContentStreamBitmapHunter
    //   0	100	1	paramRequest	Request
    //   1	87	2	localObject1	Object
    //   93	6	2	localObject2	Object
    //   34	12	3	localInputStream	java.io.InputStream
    //   15	60	4	localOptions	android.graphics.BitmapFactory.Options
    //   9	54	5	localContentResolver	android.content.ContentResolver
    // Exception table:
    //   from	to	target	type
    //   25	35	86	finally
    //   37	45	86	finally
    //   72	80	93	finally
  }
  
  Picasso.LoadedFrom getLoadedFrom()
  {
    return Picasso.LoadedFrom.DISK;
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.ContentStreamBitmapHunter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
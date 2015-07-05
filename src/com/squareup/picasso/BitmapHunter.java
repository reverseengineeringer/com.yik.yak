package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import android.provider.ContactsContract.Contacts;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;

abstract class BitmapHunter
  implements Runnable
{
  private static final Object DECODE_LOCK = new Object();
  private static final ThreadLocal<StringBuilder> NAME_BUILDER = new BitmapHunter.1();
  Action action;
  List<Action> actions;
  final Cache cache;
  final Request data;
  final Dispatcher dispatcher;
  Exception exception;
  int exifRotation;
  Future<?> future;
  final String key;
  Picasso.LoadedFrom loadedFrom;
  final Picasso picasso;
  Bitmap result;
  final boolean skipMemoryCache;
  final Stats stats;
  
  BitmapHunter(Picasso paramPicasso, Dispatcher paramDispatcher, Cache paramCache, Stats paramStats, Action paramAction)
  {
    picasso = paramPicasso;
    dispatcher = paramDispatcher;
    cache = paramCache;
    stats = paramStats;
    key = paramAction.getKey();
    data = paramAction.getRequest();
    skipMemoryCache = skipCache;
    action = paramAction;
  }
  
  static Bitmap applyCustomTransformations(List<Transformation> paramList, Bitmap paramBitmap)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      Transformation localTransformation = (Transformation)paramList.get(i);
      Bitmap localBitmap = localTransformation.transform(paramBitmap);
      if (localBitmap == null)
      {
        paramBitmap = new StringBuilder().append("Transformation ").append(localTransformation.key()).append(" returned null after ").append(i).append(" previous transformation(s).\n\nTransformation list:\n");
        paramList = paramList.iterator();
        while (paramList.hasNext()) {
          paramBitmap.append(((Transformation)paramList.next()).key()).append('\n');
        }
        Picasso.HANDLER.post(new BitmapHunter.2(paramBitmap));
        return null;
      }
      if ((localBitmap == paramBitmap) && (paramBitmap.isRecycled()))
      {
        Picasso.HANDLER.post(new BitmapHunter.3(localTransformation));
        return null;
      }
      if ((localBitmap != paramBitmap) && (!paramBitmap.isRecycled()))
      {
        Picasso.HANDLER.post(new BitmapHunter.4(localTransformation));
        return null;
      }
      i += 1;
      paramBitmap = localBitmap;
    }
    return paramBitmap;
  }
  
  static void calculateInSampleSize(int paramInt1, int paramInt2, int paramInt3, int paramInt4, BitmapFactory.Options paramOptions)
  {
    int i = 1;
    if ((paramInt4 > paramInt2) || (paramInt3 > paramInt1))
    {
      i = (int)Math.floor(paramInt4 / paramInt2);
      paramInt1 = (int)Math.floor(paramInt3 / paramInt1);
      if (i >= paramInt1) {
        break label56;
      }
    }
    for (;;)
    {
      inSampleSize = i;
      inJustDecodeBounds = false;
      return;
      label56:
      i = paramInt1;
    }
  }
  
  static void calculateInSampleSize(int paramInt1, int paramInt2, BitmapFactory.Options paramOptions)
  {
    calculateInSampleSize(paramInt1, paramInt2, outWidth, outHeight, paramOptions);
  }
  
  static BitmapFactory.Options createBitmapOptions(Request paramRequest)
  {
    boolean bool = paramRequest.hasSize();
    if (config != null) {}
    for (int i = 1;; i = 0)
    {
      Object localObject = null;
      if ((bool) || (i != 0))
      {
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        inJustDecodeBounds = bool;
        localObject = localOptions;
        if (i != 0)
        {
          inPreferredConfig = config;
          localObject = localOptions;
        }
      }
      return (BitmapFactory.Options)localObject;
    }
  }
  
  static BitmapHunter forRequest(Context paramContext, Picasso paramPicasso, Dispatcher paramDispatcher, Cache paramCache, Stats paramStats, Action paramAction, Downloader paramDownloader)
  {
    if (getRequestresourceId != 0) {
      return new ResourceBitmapHunter(paramContext, paramPicasso, paramDispatcher, paramCache, paramStats, paramAction);
    }
    Uri localUri = getRequesturi;
    String str = localUri.getScheme();
    if ("content".equals(str))
    {
      if ((ContactsContract.Contacts.CONTENT_URI.getHost().equals(localUri.getHost())) && (!localUri.getPathSegments().contains("photo"))) {
        return new ContactsPhotoBitmapHunter(paramContext, paramPicasso, paramDispatcher, paramCache, paramStats, paramAction);
      }
      if ("media".equals(localUri.getAuthority())) {
        return new MediaStoreBitmapHunter(paramContext, paramPicasso, paramDispatcher, paramCache, paramStats, paramAction);
      }
      return new ContentStreamBitmapHunter(paramContext, paramPicasso, paramDispatcher, paramCache, paramStats, paramAction);
    }
    if ("file".equals(str))
    {
      if ((!localUri.getPathSegments().isEmpty()) && ("android_asset".equals(localUri.getPathSegments().get(0)))) {
        return new AssetBitmapHunter(paramContext, paramPicasso, paramDispatcher, paramCache, paramStats, paramAction);
      }
      return new FileBitmapHunter(paramContext, paramPicasso, paramDispatcher, paramCache, paramStats, paramAction);
    }
    if ("android.resource".equals(str)) {
      return new ResourceBitmapHunter(paramContext, paramPicasso, paramDispatcher, paramCache, paramStats, paramAction);
    }
    return new NetworkBitmapHunter(paramPicasso, paramDispatcher, paramCache, paramStats, paramAction, paramDownloader);
  }
  
  static boolean requiresInSampleSize(BitmapFactory.Options paramOptions)
  {
    return (paramOptions != null) && (inJustDecodeBounds);
  }
  
  static Bitmap transformResult(Request paramRequest, Bitmap paramBitmap, int paramInt)
  {
    int m = 0;
    int k = paramBitmap.getWidth();
    int i = paramBitmap.getHeight();
    Object localObject = new Matrix();
    int j;
    int n;
    float f1;
    float f2;
    float f3;
    if (paramRequest.needsMatrixTransform())
    {
      j = targetWidth;
      n = targetHeight;
      f1 = rotationDegrees;
      if (f1 != 0.0F)
      {
        if (hasRotationPivot) {
          ((Matrix)localObject).setRotate(f1, rotationPivotX, rotationPivotY);
        }
      }
      else
      {
        if (!centerCrop) {
          break label262;
        }
        f1 = j / k;
        f2 = n / i;
        if (f1 <= f2) {
          break label217;
        }
        f3 = i;
        n = (int)Math.ceil(f2 / f1 * f3);
        i = (i - n) / 2;
        j = k;
        k = n;
        label142:
        ((Matrix)localObject).preScale(f1, f1);
        n = j;
        j = i;
        i = m;
      }
    }
    for (;;)
    {
      if (paramInt != 0) {
        ((Matrix)localObject).preRotate(paramInt);
      }
      localObject = Bitmap.createBitmap(paramBitmap, i, j, n, k, (Matrix)localObject, true);
      paramRequest = paramBitmap;
      if (localObject != paramBitmap)
      {
        paramBitmap.recycle();
        paramRequest = (Request)localObject;
      }
      return paramRequest;
      ((Matrix)localObject).setRotate(f1);
      break;
      label217:
      f3 = k;
      j = (int)Math.ceil(f1 / f2 * f3);
      m = (k - j) / 2;
      f1 = f2;
      n = 0;
      k = i;
      i = n;
      break label142;
      label262:
      if (centerInside)
      {
        f1 = j / k;
        f2 = n / i;
        if (f1 < f2) {}
        for (;;)
        {
          ((Matrix)localObject).preScale(f1, f1);
          j = 0;
          m = i;
          n = 0;
          i = j;
          j = n;
          n = k;
          k = m;
          break;
          f1 = f2;
        }
      }
      if ((j != 0) && (n != 0) && ((j != k) || (n != i))) {
        ((Matrix)localObject).preScale(j / k, n / i);
      }
      j = 0;
      m = i;
      n = 0;
      i = j;
      j = n;
      n = k;
      k = m;
    }
  }
  
  static void updateThreadName(Request paramRequest)
  {
    paramRequest = paramRequest.getName();
    StringBuilder localStringBuilder = (StringBuilder)NAME_BUILDER.get();
    localStringBuilder.ensureCapacity("Picasso-".length() + paramRequest.length());
    localStringBuilder.replace("Picasso-".length(), localStringBuilder.length(), paramRequest);
    Thread.currentThread().setName(localStringBuilder.toString());
  }
  
  void attach(Action paramAction)
  {
    boolean bool = picasso.loggingEnabled;
    Request localRequest = request;
    if (action == null)
    {
      action = paramAction;
      if (bool)
      {
        if ((actions != null) && (!actions.isEmpty())) {
          break label65;
        }
        Utils.log("Hunter", "joined", localRequest.logId(), "to empty hunter");
      }
    }
    label65:
    do
    {
      return;
      Utils.log("Hunter", "joined", localRequest.logId(), Utils.getLogIdsForHunter(this, "to "));
      return;
      if (actions == null) {
        actions = new ArrayList(3);
      }
      actions.add(paramAction);
    } while (!bool);
    Utils.log("Hunter", "joined", localRequest.logId(), Utils.getLogIdsForHunter(this, "to "));
  }
  
  boolean cancel()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (action == null) {
      if (actions != null)
      {
        bool1 = bool2;
        if (!actions.isEmpty()) {}
      }
      else
      {
        bool1 = bool2;
        if (future != null)
        {
          bool1 = bool2;
          if (future.cancel(false)) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  abstract Bitmap decode(Request paramRequest);
  
  void detach(Action paramAction)
  {
    if (action == paramAction) {
      action = null;
    }
    for (;;)
    {
      if (picasso.loggingEnabled) {
        Utils.log("Hunter", "removed", request.logId(), Utils.getLogIdsForHunter(this, "from "));
      }
      return;
      if (actions != null) {
        actions.remove(paramAction);
      }
    }
  }
  
  Action getAction()
  {
    return action;
  }
  
  List<Action> getActions()
  {
    return actions;
  }
  
  Request getData()
  {
    return data;
  }
  
  Exception getException()
  {
    return exception;
  }
  
  String getKey()
  {
    return key;
  }
  
  Picasso.LoadedFrom getLoadedFrom()
  {
    return loadedFrom;
  }
  
  Picasso getPicasso()
  {
    return picasso;
  }
  
  Bitmap getResult()
  {
    return result;
  }
  
  Bitmap hunt()
  {
    Object localObject3;
    Object localObject1;
    if (!skipMemoryCache)
    {
      localObject3 = cache.get(key);
      if (localObject3 != null)
      {
        stats.dispatchCacheHit();
        loadedFrom = Picasso.LoadedFrom.MEMORY;
        localObject1 = localObject3;
        if (picasso.loggingEnabled)
        {
          Utils.log("Hunter", "decoded", data.logId(), "from cache");
          localObject1 = localObject3;
        }
      }
    }
    for (;;)
    {
      return (Bitmap)localObject1;
      localObject3 = decode(data);
      localObject1 = localObject3;
      if (localObject3 == null) {
        continue;
      }
      if (picasso.loggingEnabled) {
        Utils.log("Hunter", "decoded", data.logId());
      }
      stats.dispatchBitmapDecoded((Bitmap)localObject3);
      if (!data.needsTransformation())
      {
        localObject1 = localObject3;
        if (exifRotation == 0) {
          continue;
        }
      }
      synchronized (DECODE_LOCK)
      {
        if (!data.needsMatrixTransform())
        {
          localObject1 = localObject3;
          if (exifRotation == 0) {}
        }
        else
        {
          localObject3 = transformResult(data, (Bitmap)localObject3, exifRotation);
          localObject1 = localObject3;
          if (picasso.loggingEnabled)
          {
            Utils.log("Hunter", "transformed", data.logId());
            localObject1 = localObject3;
          }
        }
        localObject3 = localObject1;
        if (data.hasCustomTransformations())
        {
          localObject1 = applyCustomTransformations(data.transformations, (Bitmap)localObject1);
          localObject3 = localObject1;
          if (picasso.loggingEnabled)
          {
            Utils.log("Hunter", "transformed", data.logId(), "from custom transformations");
            localObject3 = localObject1;
          }
        }
        localObject1 = localObject3;
        if (localObject3 == null) {
          continue;
        }
        stats.dispatchBitmapTransformed((Bitmap)localObject3);
        return (Bitmap)localObject3;
      }
    }
  }
  
  boolean isCancelled()
  {
    return (future != null) && (future.isCancelled());
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 77	com/squareup/picasso/BitmapHunter:data	Lcom/squareup/picasso/Request;
    //   4: invokestatic 529	com/squareup/picasso/BitmapHunter:updateThreadName	(Lcom/squareup/picasso/Request;)V
    //   7: aload_0
    //   8: getfield 57	com/squareup/picasso/BitmapHunter:picasso	Lcom/squareup/picasso/Picasso;
    //   11: getfield 394	com/squareup/picasso/Picasso:loggingEnabled	Z
    //   14: ifeq +16 -> 30
    //   17: ldc_w 401
    //   20: ldc_w 531
    //   23: aload_0
    //   24: invokestatic 534	com/squareup/picasso/Utils:getLogIdsForHunter	(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;
    //   27: invokestatic 489	com/squareup/picasso/Utils:log	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   30: aload_0
    //   31: aload_0
    //   32: invokevirtual 536	com/squareup/picasso/BitmapHunter:hunt	()Landroid/graphics/Bitmap;
    //   35: putfield 464	com/squareup/picasso/BitmapHunter:result	Landroid/graphics/Bitmap;
    //   38: aload_0
    //   39: getfield 464	com/squareup/picasso/BitmapHunter:result	Landroid/graphics/Bitmap;
    //   42: ifnonnull +21 -> 63
    //   45: aload_0
    //   46: getfield 59	com/squareup/picasso/BitmapHunter:dispatcher	Lcom/squareup/picasso/Dispatcher;
    //   49: aload_0
    //   50: invokevirtual 542	com/squareup/picasso/Dispatcher:dispatchFailed	(Lcom/squareup/picasso/BitmapHunter;)V
    //   53: invokestatic 382	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   56: ldc_w 544
    //   59: invokevirtual 389	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   62: return
    //   63: aload_0
    //   64: getfield 59	com/squareup/picasso/BitmapHunter:dispatcher	Lcom/squareup/picasso/Dispatcher;
    //   67: aload_0
    //   68: invokevirtual 547	com/squareup/picasso/Dispatcher:dispatchComplete	(Lcom/squareup/picasso/BitmapHunter;)V
    //   71: goto -18 -> 53
    //   74: astore_1
    //   75: aload_0
    //   76: aload_1
    //   77: putfield 454	com/squareup/picasso/BitmapHunter:exception	Ljava/lang/Exception;
    //   80: aload_0
    //   81: getfield 59	com/squareup/picasso/BitmapHunter:dispatcher	Lcom/squareup/picasso/Dispatcher;
    //   84: aload_0
    //   85: invokevirtual 542	com/squareup/picasso/Dispatcher:dispatchFailed	(Lcom/squareup/picasso/BitmapHunter;)V
    //   88: invokestatic 382	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   91: ldc_w 544
    //   94: invokevirtual 389	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   97: return
    //   98: astore_1
    //   99: aload_0
    //   100: aload_1
    //   101: putfield 454	com/squareup/picasso/BitmapHunter:exception	Ljava/lang/Exception;
    //   104: aload_0
    //   105: getfield 59	com/squareup/picasso/BitmapHunter:dispatcher	Lcom/squareup/picasso/Dispatcher;
    //   108: aload_0
    //   109: invokevirtual 550	com/squareup/picasso/Dispatcher:dispatchRetry	(Lcom/squareup/picasso/BitmapHunter;)V
    //   112: invokestatic 382	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   115: ldc_w 544
    //   118: invokevirtual 389	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   121: return
    //   122: astore_1
    //   123: new 552	java/io/StringWriter
    //   126: dup
    //   127: invokespecial 553	java/io/StringWriter:<init>	()V
    //   130: astore_2
    //   131: aload_0
    //   132: getfield 63	com/squareup/picasso/BitmapHunter:stats	Lcom/squareup/picasso/Stats;
    //   135: invokevirtual 557	com/squareup/picasso/Stats:createSnapshot	()Lcom/squareup/picasso/StatsSnapshot;
    //   138: new 559	java/io/PrintWriter
    //   141: dup
    //   142: aload_2
    //   143: invokespecial 562	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   146: invokevirtual 568	com/squareup/picasso/StatsSnapshot:dump	(Ljava/io/PrintWriter;)V
    //   149: aload_0
    //   150: new 570	java/lang/RuntimeException
    //   153: dup
    //   154: aload_2
    //   155: invokevirtual 571	java/io/StringWriter:toString	()Ljava/lang/String;
    //   158: aload_1
    //   159: invokespecial 574	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   162: putfield 454	com/squareup/picasso/BitmapHunter:exception	Ljava/lang/Exception;
    //   165: aload_0
    //   166: getfield 59	com/squareup/picasso/BitmapHunter:dispatcher	Lcom/squareup/picasso/Dispatcher;
    //   169: aload_0
    //   170: invokevirtual 542	com/squareup/picasso/Dispatcher:dispatchFailed	(Lcom/squareup/picasso/BitmapHunter;)V
    //   173: invokestatic 382	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   176: ldc_w 544
    //   179: invokevirtual 389	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   182: return
    //   183: astore_1
    //   184: aload_0
    //   185: aload_1
    //   186: putfield 454	com/squareup/picasso/BitmapHunter:exception	Ljava/lang/Exception;
    //   189: aload_0
    //   190: getfield 59	com/squareup/picasso/BitmapHunter:dispatcher	Lcom/squareup/picasso/Dispatcher;
    //   193: aload_0
    //   194: invokevirtual 542	com/squareup/picasso/Dispatcher:dispatchFailed	(Lcom/squareup/picasso/BitmapHunter;)V
    //   197: invokestatic 382	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   200: ldc_w 544
    //   203: invokevirtual 389	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   206: return
    //   207: astore_1
    //   208: invokestatic 382	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   211: ldc_w 544
    //   214: invokevirtual 389	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   217: aload_1
    //   218: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	219	0	this	BitmapHunter
    //   74	3	1	localResponseException	Downloader.ResponseException
    //   98	3	1	localIOException	java.io.IOException
    //   122	37	1	localOutOfMemoryError	OutOfMemoryError
    //   183	3	1	localException	Exception
    //   207	11	1	localObject	Object
    //   130	25	2	localStringWriter	java.io.StringWriter
    // Exception table:
    //   from	to	target	type
    //   0	30	74	com/squareup/picasso/Downloader$ResponseException
    //   30	53	74	com/squareup/picasso/Downloader$ResponseException
    //   63	71	74	com/squareup/picasso/Downloader$ResponseException
    //   0	30	98	java/io/IOException
    //   30	53	98	java/io/IOException
    //   63	71	98	java/io/IOException
    //   0	30	122	java/lang/OutOfMemoryError
    //   30	53	122	java/lang/OutOfMemoryError
    //   63	71	122	java/lang/OutOfMemoryError
    //   0	30	183	java/lang/Exception
    //   30	53	183	java/lang/Exception
    //   63	71	183	java/lang/Exception
    //   0	30	207	finally
    //   30	53	207	finally
    //   63	71	207	finally
    //   75	88	207	finally
    //   99	112	207	finally
    //   123	173	207	finally
    //   184	197	207	finally
  }
  
  protected void setExifRotation(int paramInt)
  {
    exifRotation = paramInt;
  }
  
  boolean shouldRetry(boolean paramBoolean, NetworkInfo paramNetworkInfo)
  {
    return false;
  }
  
  boolean shouldSkipMemoryCache()
  {
    return skipMemoryCache;
  }
  
  boolean supportsReplay()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.BitmapHunter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
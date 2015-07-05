package com.facebook.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import java.io.Closeable;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;

public class ImageDownloader
{
  private static final int CACHE_READ_QUEUE_MAX_CONCURRENT = 2;
  private static final int DOWNLOAD_QUEUE_MAX_CONCURRENT = 8;
  private static WorkQueue cacheReadQueue = new WorkQueue(2);
  private static WorkQueue downloadQueue = new WorkQueue(8);
  private static Handler handler;
  private static final Map<ImageDownloader.RequestKey, ImageDownloader.DownloaderContext> pendingRequests = new HashMap();
  
  public static boolean cancelRequest(ImageRequest arg0)
  {
    ImageDownloader.RequestKey localRequestKey = new ImageDownloader.RequestKey(???.getImageUri(), ???.getCallerTag());
    for (;;)
    {
      synchronized (pendingRequests)
      {
        ImageDownloader.DownloaderContext localDownloaderContext = (ImageDownloader.DownloaderContext)pendingRequests.get(localRequestKey);
        if (localDownloaderContext != null)
        {
          if (workItem.cancel())
          {
            pendingRequests.remove(localRequestKey);
            bool = true;
            return bool;
          }
          isCancelled = true;
          bool = true;
        }
      }
      boolean bool = false;
    }
  }
  
  public static void clearCache(Context paramContext)
  {
    ImageResponseCache.clearCache(paramContext);
    UrlRedirectCache.clearCache(paramContext);
  }
  
  /* Error */
  private static void download(ImageDownloader.RequestKey paramRequestKey, Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 12
    //   3: aconst_null
    //   4: astore 10
    //   6: aconst_null
    //   7: astore 11
    //   9: iconst_1
    //   10: istore_3
    //   11: iconst_1
    //   12: istore 4
    //   14: iconst_1
    //   15: istore_2
    //   16: new 104	java/net/URL
    //   19: dup
    //   20: aload_0
    //   21: getfield 108	com/facebook/internal/ImageDownloader$RequestKey:uri	Ljava/net/URI;
    //   24: invokevirtual 114	java/net/URI:toString	()Ljava/lang/String;
    //   27: invokespecial 117	java/net/URL:<init>	(Ljava/lang/String;)V
    //   30: invokevirtual 121	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   33: checkcast 123	java/net/HttpURLConnection
    //   36: astore 6
    //   38: aload 6
    //   40: iconst_0
    //   41: invokevirtual 127	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   44: aload 6
    //   46: invokevirtual 131	java/net/HttpURLConnection:getResponseCode	()I
    //   49: lookupswitch	default:+540->589, 200:+297->346, 301:+196->245, 302:+196->245
    //   84: aload 6
    //   86: invokevirtual 135	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   89: astore 7
    //   91: aload 7
    //   93: astore 8
    //   95: aload 7
    //   97: astore 9
    //   99: aload 7
    //   101: astore 10
    //   103: new 137	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   110: astore 13
    //   112: aload 7
    //   114: ifnull +347 -> 461
    //   117: aload 7
    //   119: astore 8
    //   121: aload 7
    //   123: astore 9
    //   125: aload 7
    //   127: astore 10
    //   129: new 140	java/io/InputStreamReader
    //   132: dup
    //   133: aload 7
    //   135: invokespecial 143	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   138: astore_1
    //   139: aload 7
    //   141: astore 8
    //   143: aload 7
    //   145: astore 9
    //   147: aload 7
    //   149: astore 10
    //   151: sipush 128
    //   154: newarray <illegal type>
    //   156: astore 14
    //   158: aload 7
    //   160: astore 8
    //   162: aload 7
    //   164: astore 9
    //   166: aload 7
    //   168: astore 10
    //   170: aload_1
    //   171: aload 14
    //   173: iconst_0
    //   174: aload 14
    //   176: arraylength
    //   177: invokevirtual 147	java/io/InputStreamReader:read	([CII)I
    //   180: istore 5
    //   182: iload 5
    //   184: ifle +196 -> 380
    //   187: aload 7
    //   189: astore 8
    //   191: aload 7
    //   193: astore 9
    //   195: aload 7
    //   197: astore 10
    //   199: aload 13
    //   201: aload 14
    //   203: iconst_0
    //   204: iload 5
    //   206: invokevirtual 151	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   209: pop
    //   210: goto -52 -> 158
    //   213: astore_1
    //   214: aload 8
    //   216: astore 7
    //   218: aload 7
    //   220: invokestatic 157	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   223: aload 6
    //   225: invokestatic 161	com/facebook/internal/Utility:disconnectQuietly	(Ljava/net/URLConnection;)V
    //   228: aload 11
    //   230: astore 9
    //   232: iload_2
    //   233: ifeq +11 -> 244
    //   236: aload_0
    //   237: aload_1
    //   238: aload 9
    //   240: iconst_0
    //   241: invokestatic 165	com/facebook/internal/ImageDownloader:issueResponse	(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    //   244: return
    //   245: aload 6
    //   247: ldc -89
    //   249: invokevirtual 171	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   252: astore 7
    //   254: aload 7
    //   256: invokestatic 175	com/facebook/internal/Utility:isNullOrEmpty	(Ljava/lang/String;)Z
    //   259: ifne +316 -> 575
    //   262: new 110	java/net/URI
    //   265: dup
    //   266: aload 7
    //   268: invokespecial 176	java/net/URI:<init>	(Ljava/lang/String;)V
    //   271: astore 7
    //   273: aload_1
    //   274: aload_0
    //   275: getfield 108	com/facebook/internal/ImageDownloader$RequestKey:uri	Ljava/net/URI;
    //   278: aload 7
    //   280: invokestatic 180	com/facebook/internal/UrlRedirectCache:cacheUriRedirect	(Landroid/content/Context;Ljava/net/URI;Ljava/net/URI;)V
    //   283: aload_0
    //   284: invokestatic 184	com/facebook/internal/ImageDownloader:removePendingRequest	(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    //   287: astore_1
    //   288: aload_1
    //   289: ifnull +31 -> 320
    //   292: aload_1
    //   293: getfield 89	com/facebook/internal/ImageDownloader$DownloaderContext:isCancelled	Z
    //   296: ifne +24 -> 320
    //   299: aload_1
    //   300: getfield 188	com/facebook/internal/ImageDownloader$DownloaderContext:request	Lcom/facebook/internal/ImageRequest;
    //   303: new 51	com/facebook/internal/ImageDownloader$RequestKey
    //   306: dup
    //   307: aload 7
    //   309: aload_0
    //   310: getfield 192	com/facebook/internal/ImageDownloader$RequestKey:tag	Ljava/lang/Object;
    //   313: invokespecial 64	com/facebook/internal/ImageDownloader$RequestKey:<init>	(Ljava/net/URI;Ljava/lang/Object;)V
    //   316: iconst_0
    //   317: invokestatic 196	com/facebook/internal/ImageDownloader:enqueueCacheRead	(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    //   320: iconst_0
    //   321: istore_2
    //   322: aconst_null
    //   323: astore 8
    //   325: aconst_null
    //   326: astore_1
    //   327: aload 12
    //   329: astore 9
    //   331: aload_1
    //   332: invokestatic 157	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   335: aload 6
    //   337: invokestatic 161	com/facebook/internal/Utility:disconnectQuietly	(Ljava/net/URLConnection;)V
    //   340: aload 8
    //   342: astore_1
    //   343: goto -111 -> 232
    //   346: aload_1
    //   347: aload 6
    //   349: invokestatic 200	com/facebook/internal/ImageResponseCache:interceptAndCacheImageStream	(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    //   352: astore_1
    //   353: aload_1
    //   354: astore 8
    //   356: aload_1
    //   357: astore 9
    //   359: aload_1
    //   360: astore 10
    //   362: aload_1
    //   363: invokestatic 206	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   366: astore 7
    //   368: aconst_null
    //   369: astore 8
    //   371: aload 7
    //   373: astore 9
    //   375: iload_3
    //   376: istore_2
    //   377: goto -46 -> 331
    //   380: aload 7
    //   382: astore 8
    //   384: aload 7
    //   386: astore 9
    //   388: aload 7
    //   390: astore 10
    //   392: aload_1
    //   393: invokestatic 157	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   396: aload 7
    //   398: astore 8
    //   400: aload 7
    //   402: astore 9
    //   404: aload 7
    //   406: astore 10
    //   408: new 208	com/facebook/FacebookException
    //   411: dup
    //   412: aload 13
    //   414: invokevirtual 209	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   417: invokespecial 210	com/facebook/FacebookException:<init>	(Ljava/lang/String;)V
    //   420: astore_1
    //   421: iload_3
    //   422: istore_2
    //   423: aload 12
    //   425: astore 9
    //   427: aload_1
    //   428: astore 8
    //   430: aload 7
    //   432: astore_1
    //   433: goto -102 -> 331
    //   436: astore_1
    //   437: aload 9
    //   439: astore 7
    //   441: iload 4
    //   443: istore_2
    //   444: aload 7
    //   446: invokestatic 157	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   449: aload 6
    //   451: invokestatic 161	com/facebook/internal/Utility:disconnectQuietly	(Ljava/net/URLConnection;)V
    //   454: aload 11
    //   456: astore 9
    //   458: goto -226 -> 232
    //   461: aload 7
    //   463: astore 8
    //   465: aload 7
    //   467: astore 9
    //   469: aload 7
    //   471: astore 10
    //   473: aload 13
    //   475: aload_1
    //   476: getstatic 215	com/facebook/android/R$string:com_facebook_image_download_unknown_error	I
    //   479: invokevirtual 221	android/content/Context:getString	(I)Ljava/lang/String;
    //   482: invokevirtual 224	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   485: pop
    //   486: goto -90 -> 396
    //   489: astore_0
    //   490: aload 6
    //   492: astore_1
    //   493: aload 10
    //   495: invokestatic 157	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   498: aload_1
    //   499: invokestatic 161	com/facebook/internal/Utility:disconnectQuietly	(Ljava/net/URLConnection;)V
    //   502: aload_0
    //   503: athrow
    //   504: astore_0
    //   505: aconst_null
    //   506: astore_1
    //   507: goto -14 -> 493
    //   510: astore_0
    //   511: aload 6
    //   513: astore_1
    //   514: goto -21 -> 493
    //   517: astore_1
    //   518: aconst_null
    //   519: astore 7
    //   521: aconst_null
    //   522: astore 6
    //   524: iload 4
    //   526: istore_2
    //   527: goto -83 -> 444
    //   530: astore_1
    //   531: aconst_null
    //   532: astore 7
    //   534: iload 4
    //   536: istore_2
    //   537: goto -93 -> 444
    //   540: astore_1
    //   541: aconst_null
    //   542: astore 7
    //   544: iconst_0
    //   545: istore_2
    //   546: goto -102 -> 444
    //   549: astore_1
    //   550: aconst_null
    //   551: astore 7
    //   553: aconst_null
    //   554: astore 6
    //   556: goto -338 -> 218
    //   559: astore_1
    //   560: aconst_null
    //   561: astore 7
    //   563: goto -345 -> 218
    //   566: astore_1
    //   567: aconst_null
    //   568: astore 7
    //   570: iconst_0
    //   571: istore_2
    //   572: goto -354 -> 218
    //   575: iconst_0
    //   576: istore_2
    //   577: aconst_null
    //   578: astore 8
    //   580: aconst_null
    //   581: astore_1
    //   582: aload 12
    //   584: astore 9
    //   586: goto -255 -> 331
    //   589: goto -505 -> 84
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	592	0	paramRequestKey	ImageDownloader.RequestKey
    //   0	592	1	paramContext	Context
    //   15	562	2	i	int
    //   10	412	3	j	int
    //   12	523	4	k	int
    //   180	25	5	m	int
    //   36	519	6	localHttpURLConnection	java.net.HttpURLConnection
    //   89	480	7	localObject1	Object
    //   93	486	8	localObject2	Object
    //   97	488	9	localObject3	Object
    //   4	490	10	localObject4	Object
    //   7	448	11	localObject5	Object
    //   1	582	12	localObject6	Object
    //   110	364	13	localStringBuilder	StringBuilder
    //   156	46	14	arrayOfChar	char[]
    // Exception table:
    //   from	to	target	type
    //   103	112	213	java/io/IOException
    //   129	139	213	java/io/IOException
    //   151	158	213	java/io/IOException
    //   170	182	213	java/io/IOException
    //   199	210	213	java/io/IOException
    //   362	368	213	java/io/IOException
    //   392	396	213	java/io/IOException
    //   408	421	213	java/io/IOException
    //   473	486	213	java/io/IOException
    //   103	112	436	java/net/URISyntaxException
    //   129	139	436	java/net/URISyntaxException
    //   151	158	436	java/net/URISyntaxException
    //   170	182	436	java/net/URISyntaxException
    //   199	210	436	java/net/URISyntaxException
    //   362	368	436	java/net/URISyntaxException
    //   392	396	436	java/net/URISyntaxException
    //   408	421	436	java/net/URISyntaxException
    //   473	486	436	java/net/URISyntaxException
    //   103	112	489	finally
    //   129	139	489	finally
    //   151	158	489	finally
    //   170	182	489	finally
    //   199	210	489	finally
    //   362	368	489	finally
    //   392	396	489	finally
    //   408	421	489	finally
    //   473	486	489	finally
    //   16	38	504	finally
    //   38	84	510	finally
    //   84	91	510	finally
    //   245	288	510	finally
    //   292	320	510	finally
    //   346	353	510	finally
    //   16	38	517	java/net/URISyntaxException
    //   38	84	530	java/net/URISyntaxException
    //   84	91	530	java/net/URISyntaxException
    //   346	353	530	java/net/URISyntaxException
    //   245	288	540	java/net/URISyntaxException
    //   292	320	540	java/net/URISyntaxException
    //   16	38	549	java/io/IOException
    //   38	84	559	java/io/IOException
    //   84	91	559	java/io/IOException
    //   346	353	559	java/io/IOException
    //   245	288	566	java/io/IOException
    //   292	320	566	java/io/IOException
  }
  
  public static void downloadAsync(ImageRequest paramImageRequest)
  {
    if (paramImageRequest == null) {
      return;
    }
    ImageDownloader.RequestKey localRequestKey = new ImageDownloader.RequestKey(paramImageRequest.getImageUri(), paramImageRequest.getCallerTag());
    for (;;)
    {
      synchronized (pendingRequests)
      {
        ImageDownloader.DownloaderContext localDownloaderContext = (ImageDownloader.DownloaderContext)pendingRequests.get(localRequestKey);
        if (localDownloaderContext != null)
        {
          request = paramImageRequest;
          isCancelled = false;
          workItem.moveToFront();
          return;
        }
      }
      enqueueCacheRead(paramImageRequest, localRequestKey, paramImageRequest.isCachedRedirectAllowed());
    }
  }
  
  private static void enqueueCacheRead(ImageRequest paramImageRequest, ImageDownloader.RequestKey paramRequestKey, boolean paramBoolean)
  {
    enqueueRequest(paramImageRequest, paramRequestKey, cacheReadQueue, new ImageDownloader.CacheReadWorkItem(paramImageRequest.getContext(), paramRequestKey, paramBoolean));
  }
  
  private static void enqueueDownload(ImageRequest paramImageRequest, ImageDownloader.RequestKey paramRequestKey)
  {
    enqueueRequest(paramImageRequest, paramRequestKey, downloadQueue, new ImageDownloader.DownloadImageWorkItem(paramImageRequest.getContext(), paramRequestKey));
  }
  
  private static void enqueueRequest(ImageRequest paramImageRequest, ImageDownloader.RequestKey paramRequestKey, WorkQueue paramWorkQueue, Runnable paramRunnable)
  {
    synchronized (pendingRequests)
    {
      ImageDownloader.DownloaderContext localDownloaderContext = new ImageDownloader.DownloaderContext(null);
      request = paramImageRequest;
      pendingRequests.put(paramRequestKey, localDownloaderContext);
      workItem = paramWorkQueue.addActiveWorkItem(paramRunnable);
      return;
    }
  }
  
  private static Handler getHandler()
  {
    try
    {
      if (handler == null) {
        handler = new Handler(Looper.getMainLooper());
      }
      Handler localHandler = handler;
      return localHandler;
    }
    finally {}
  }
  
  private static void issueResponse(ImageDownloader.RequestKey paramRequestKey, Exception paramException, Bitmap paramBitmap, boolean paramBoolean)
  {
    paramRequestKey = removePendingRequest(paramRequestKey);
    if ((paramRequestKey != null) && (!isCancelled))
    {
      paramRequestKey = request;
      ImageRequest.Callback localCallback = paramRequestKey.getCallback();
      if (localCallback != null) {
        getHandler().post(new ImageDownloader.1(paramRequestKey, paramException, paramBoolean, paramBitmap, localCallback));
      }
    }
  }
  
  public static void prioritizeRequest(ImageRequest arg0)
  {
    Object localObject1 = new ImageDownloader.RequestKey(???.getImageUri(), ???.getCallerTag());
    synchronized (pendingRequests)
    {
      localObject1 = (ImageDownloader.DownloaderContext)pendingRequests.get(localObject1);
      if (localObject1 != null) {
        workItem.moveToFront();
      }
      return;
    }
  }
  
  private static void readFromCache(ImageDownloader.RequestKey paramRequestKey, Context paramContext, boolean paramBoolean)
  {
    boolean bool = false;
    Object localObject;
    if (paramBoolean)
    {
      localObject = UrlRedirectCache.getRedirectedUri(paramContext, uri);
      if (localObject != null)
      {
        localObject = ImageResponseCache.getCachedImageStream((URI)localObject, paramContext);
        paramBoolean = bool;
        if (localObject != null) {
          paramBoolean = true;
        }
      }
    }
    for (;;)
    {
      if (!paramBoolean) {
        localObject = ImageResponseCache.getCachedImageStream(uri, paramContext);
      }
      if (localObject != null)
      {
        paramContext = BitmapFactory.decodeStream((InputStream)localObject);
        Utility.closeQuietly((Closeable)localObject);
        issueResponse(paramRequestKey, null, paramContext, paramBoolean);
      }
      do
      {
        return;
        paramContext = removePendingRequest(paramRequestKey);
      } while ((paramContext == null) || (isCancelled));
      enqueueDownload(request, paramRequestKey);
      return;
      paramBoolean = false;
      localObject = null;
    }
  }
  
  private static ImageDownloader.DownloaderContext removePendingRequest(ImageDownloader.RequestKey paramRequestKey)
  {
    synchronized (pendingRequests)
    {
      paramRequestKey = (ImageDownloader.DownloaderContext)pendingRequests.remove(paramRequestKey);
      return paramRequestKey;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.ImageDownloader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
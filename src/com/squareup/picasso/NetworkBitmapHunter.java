package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import java.io.IOException;
import java.io.InputStream;

class NetworkBitmapHunter
  extends BitmapHunter
{
  static final int DEFAULT_RETRY_COUNT = 2;
  private static final int MARKER = 65536;
  private final Downloader downloader;
  int retryCount;
  
  public NetworkBitmapHunter(Picasso paramPicasso, Dispatcher paramDispatcher, Cache paramCache, Stats paramStats, Action paramAction, Downloader paramDownloader)
  {
    super(paramPicasso, paramDispatcher, paramCache, paramStats, paramAction);
    downloader = paramDownloader;
    retryCount = 2;
  }
  
  private Bitmap decodeStream(InputStream paramInputStream, Request paramRequest)
  {
    Object localObject = new MarkableInputStream(paramInputStream);
    long l = ((MarkableInputStream)localObject).savePosition(65536);
    paramInputStream = createBitmapOptions(paramRequest);
    boolean bool1 = requiresInSampleSize(paramInputStream);
    boolean bool2 = Utils.isWebPFile((InputStream)localObject);
    ((MarkableInputStream)localObject).reset(l);
    if (bool2)
    {
      localObject = Utils.toByteArray((InputStream)localObject);
      if (bool1)
      {
        BitmapFactory.decodeByteArray((byte[])localObject, 0, localObject.length, paramInputStream);
        calculateInSampleSize(targetWidth, targetHeight, paramInputStream);
      }
      paramInputStream = BitmapFactory.decodeByteArray((byte[])localObject, 0, localObject.length, paramInputStream);
    }
    do
    {
      return paramInputStream;
      if (bool1)
      {
        BitmapFactory.decodeStream((InputStream)localObject, null, paramInputStream);
        calculateInSampleSize(targetWidth, targetHeight, paramInputStream);
        ((MarkableInputStream)localObject).reset(l);
      }
      paramRequest = BitmapFactory.decodeStream((InputStream)localObject, null, paramInputStream);
      paramInputStream = paramRequest;
    } while (paramRequest != null);
    throw new IOException("Failed to decode stream.");
  }
  
  Bitmap decode(Request paramRequest)
  {
    if (retryCount == 0) {}
    Downloader.Response localResponse;
    for (boolean bool = true;; bool = false)
    {
      localResponse = downloader.load(uri, bool);
      if (localResponse != null) {
        break;
      }
      localObject = null;
      return (Bitmap)localObject;
    }
    if (cached) {}
    for (Object localObject = Picasso.LoadedFrom.DISK;; localObject = Picasso.LoadedFrom.NETWORK)
    {
      loadedFrom = ((Picasso.LoadedFrom)localObject);
      Bitmap localBitmap = localResponse.getBitmap();
      localObject = localBitmap;
      if (localBitmap != null) {
        break;
      }
      localObject = localResponse.getInputStream();
      if (localObject != null) {
        break label90;
      }
      return null;
    }
    label90:
    if (localResponse.getContentLength() == 0L)
    {
      Utils.closeQuietly((InputStream)localObject);
      throw new IOException("Received response with 0 content-length header.");
    }
    if ((loadedFrom == Picasso.LoadedFrom.NETWORK) && (localResponse.getContentLength() > 0L)) {
      stats.dispatchDownloadFinished(localResponse.getContentLength());
    }
    try
    {
      paramRequest = decodeStream((InputStream)localObject, paramRequest);
      return paramRequest;
    }
    finally
    {
      Utils.closeQuietly((InputStream)localObject);
    }
  }
  
  boolean shouldRetry(boolean paramBoolean, NetworkInfo paramNetworkInfo)
  {
    int i;
    if (retryCount > 0)
    {
      i = 1;
      if (i != 0) {
        break label20;
      }
    }
    label20:
    do
    {
      return false;
      i = 0;
      break;
      retryCount -= 1;
    } while ((paramNetworkInfo != null) && (!paramNetworkInfo.isConnected()));
    return true;
  }
  
  boolean supportsReplay()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.NetworkBitmapHunter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
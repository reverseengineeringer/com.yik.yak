package com.squareup.picasso;

import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public class UrlConnectionDownloader
  implements Downloader
{
  static final String RESPONSE_SOURCE = "X-Android-Response-Source";
  static volatile Object cache;
  private static final Object lock = new Object();
  private final Context context;
  
  public UrlConnectionDownloader(Context paramContext)
  {
    context = paramContext.getApplicationContext();
  }
  
  private static void installCacheIfNeeded(Context paramContext)
  {
    if (cache == null) {
      try
      {
        synchronized (lock)
        {
          if (cache == null) {
            cache = UrlConnectionDownloader.ResponseCacheIcs.install(paramContext);
          }
          return;
        }
        return;
      }
      catch (IOException paramContext) {}
    }
  }
  
  public Downloader.Response load(Uri paramUri, boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      installCacheIfNeeded(context);
    }
    paramUri = openConnection(paramUri);
    paramUri.setUseCaches(true);
    if (paramBoolean) {
      paramUri.setRequestProperty("Cache-Control", "only-if-cached,max-age=2147483647");
    }
    int i = paramUri.getResponseCode();
    if (i >= 300)
    {
      paramUri.disconnect();
      throw new Downloader.ResponseException(i + " " + paramUri.getResponseMessage());
    }
    long l = paramUri.getHeaderFieldInt("Content-Length", -1);
    paramBoolean = Utils.parseResponseSourceHeader(paramUri.getHeaderField("X-Android-Response-Source"));
    return new Downloader.Response(paramUri.getInputStream(), paramBoolean, l);
  }
  
  protected HttpURLConnection openConnection(Uri paramUri)
  {
    paramUri = (HttpURLConnection)new URL(paramUri.toString()).openConnection();
    paramUri.setConnectTimeout(15000);
    paramUri.setReadTimeout(20000);
    return paramUri;
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.UrlConnectionDownloader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
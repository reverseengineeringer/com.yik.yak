package com.squareup.picasso;

import android.content.Context;
import android.net.Uri;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import wO;
import xA;
import xy;

public class OkHttpDownloader
  implements Downloader
{
  static final String RESPONSE_SOURCE_ANDROID = "X-Android-Response-Source";
  static final String RESPONSE_SOURCE_OKHTTP = "OkHttp-Response-Source";
  private final xA urlFactory;
  
  public OkHttpDownloader(Context paramContext)
  {
    this(Utils.createDefaultCacheDir(paramContext));
  }
  
  public OkHttpDownloader(Context paramContext, long paramLong)
  {
    this(Utils.createDefaultCacheDir(paramContext), paramLong);
  }
  
  public OkHttpDownloader(File paramFile)
  {
    this(paramFile, Utils.calculateDiskCacheSize(paramFile));
  }
  
  public OkHttpDownloader(File paramFile, long paramLong)
  {
    this(new xy());
    try
    {
      urlFactory.a().a(new wO(paramFile, paramLong));
      return;
    }
    catch (IOException paramFile) {}
  }
  
  public OkHttpDownloader(xy paramxy)
  {
    urlFactory = new xA(paramxy);
  }
  
  protected xy getClient()
  {
    return urlFactory.a();
  }
  
  public Downloader.Response load(Uri paramUri, boolean paramBoolean)
  {
    HttpURLConnection localHttpURLConnection = openConnection(paramUri);
    localHttpURLConnection.setUseCaches(true);
    if (paramBoolean) {
      localHttpURLConnection.setRequestProperty("Cache-Control", "only-if-cached,max-age=2147483647");
    }
    int i = localHttpURLConnection.getResponseCode();
    if (i >= 300)
    {
      localHttpURLConnection.disconnect();
      throw new Downloader.ResponseException(i + " " + localHttpURLConnection.getResponseMessage());
    }
    String str = localHttpURLConnection.getHeaderField("OkHttp-Response-Source");
    paramUri = str;
    if (str == null) {
      paramUri = localHttpURLConnection.getHeaderField("X-Android-Response-Source");
    }
    long l = localHttpURLConnection.getHeaderFieldInt("Content-Length", -1);
    paramBoolean = Utils.parseResponseSourceHeader(paramUri);
    return new Downloader.Response(localHttpURLConnection.getInputStream(), paramBoolean, l);
  }
  
  protected HttpURLConnection openConnection(Uri paramUri)
  {
    paramUri = urlFactory.a(new URL(paramUri.toString()));
    paramUri.setConnectTimeout(15000);
    paramUri.setReadTimeout(20000);
    return paramUri;
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.OkHttpDownloader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
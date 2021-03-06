package com.squareup.picasso;

import android.content.Context;
import android.net.http.HttpResponseCache;
import java.io.File;

class UrlConnectionDownloader$ResponseCacheIcs
{
  static Object install(Context paramContext)
  {
    File localFile = Utils.createDefaultCacheDir(paramContext);
    HttpResponseCache localHttpResponseCache = HttpResponseCache.getInstalled();
    paramContext = localHttpResponseCache;
    if (localHttpResponseCache == null) {
      paramContext = HttpResponseCache.install(localFile, Utils.calculateDiskCacheSize(localFile));
    }
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.UrlConnectionDownloader.ResponseCacheIcs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
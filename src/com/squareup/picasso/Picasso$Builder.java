package com.squareup.picasso;

import android.content.Context;
import java.util.concurrent.ExecutorService;

public class Picasso$Builder
{
  private Cache cache;
  private final Context context;
  private Downloader downloader;
  private boolean indicatorsEnabled;
  private Picasso.Listener listener;
  private boolean loggingEnabled;
  private ExecutorService service;
  private Picasso.RequestTransformer transformer;
  
  public Picasso$Builder(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Context must not be null.");
    }
    context = paramContext.getApplicationContext();
  }
  
  public Picasso build()
  {
    Context localContext = context;
    if (downloader == null) {
      downloader = Utils.createDefaultDownloader(localContext);
    }
    if (cache == null) {
      cache = new LruCache(localContext);
    }
    if (service == null) {
      service = new PicassoExecutorService();
    }
    if (transformer == null) {
      transformer = Picasso.RequestTransformer.IDENTITY;
    }
    Stats localStats = new Stats(cache);
    return new Picasso(localContext, new Dispatcher(localContext, service, Picasso.HANDLER, downloader, cache, localStats), cache, listener, transformer, localStats, indicatorsEnabled, loggingEnabled);
  }
  
  @Deprecated
  public Builder debugging(boolean paramBoolean)
  {
    return indicatorsEnabled(paramBoolean);
  }
  
  public Builder downloader(Downloader paramDownloader)
  {
    if (paramDownloader == null) {
      throw new IllegalArgumentException("Downloader must not be null.");
    }
    if (downloader != null) {
      throw new IllegalStateException("Downloader already set.");
    }
    downloader = paramDownloader;
    return this;
  }
  
  public Builder executor(ExecutorService paramExecutorService)
  {
    if (paramExecutorService == null) {
      throw new IllegalArgumentException("Executor service must not be null.");
    }
    if (service != null) {
      throw new IllegalStateException("Executor service already set.");
    }
    service = paramExecutorService;
    return this;
  }
  
  public Builder indicatorsEnabled(boolean paramBoolean)
  {
    indicatorsEnabled = paramBoolean;
    return this;
  }
  
  public Builder listener(Picasso.Listener paramListener)
  {
    if (paramListener == null) {
      throw new IllegalArgumentException("Listener must not be null.");
    }
    if (listener != null) {
      throw new IllegalStateException("Listener already set.");
    }
    listener = paramListener;
    return this;
  }
  
  public Builder loggingEnabled(boolean paramBoolean)
  {
    loggingEnabled = paramBoolean;
    return this;
  }
  
  public Builder memoryCache(Cache paramCache)
  {
    if (paramCache == null) {
      throw new IllegalArgumentException("Memory cache must not be null.");
    }
    if (cache != null) {
      throw new IllegalStateException("Memory cache already set.");
    }
    cache = paramCache;
    return this;
  }
  
  public Builder requestTransformer(Picasso.RequestTransformer paramRequestTransformer)
  {
    if (paramRequestTransformer == null) {
      throw new IllegalArgumentException("Transformer must not be null.");
    }
    if (transformer != null) {
      throw new IllegalStateException("Transformer already set.");
    }
    transformer = paramRequestTransformer;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.Picasso.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
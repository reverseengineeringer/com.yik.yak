package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import android.widget.RemoteViews;
import java.io.File;
import java.lang.ref.ReferenceQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

public class Picasso
{
  static final Handler HANDLER = new Picasso.1(Looper.getMainLooper());
  static final String TAG = "Picasso";
  static Picasso singleton = null;
  final Cache cache;
  private final Picasso.CleanupThread cleanupThread;
  final Context context;
  final Dispatcher dispatcher;
  boolean indicatorsEnabled;
  private final Picasso.Listener listener;
  volatile boolean loggingEnabled;
  final ReferenceQueue<Object> referenceQueue;
  private final Picasso.RequestTransformer requestTransformer;
  boolean shutdown;
  final Stats stats;
  final Map<Object, Action> targetToAction;
  final Map<ImageView, DeferredRequestCreator> targetToDeferredRequestCreator;
  
  Picasso(Context paramContext, Dispatcher paramDispatcher, Cache paramCache, Picasso.Listener paramListener, Picasso.RequestTransformer paramRequestTransformer, Stats paramStats, boolean paramBoolean1, boolean paramBoolean2)
  {
    context = paramContext;
    dispatcher = paramDispatcher;
    cache = paramCache;
    listener = paramListener;
    requestTransformer = paramRequestTransformer;
    stats = paramStats;
    targetToAction = new WeakHashMap();
    targetToDeferredRequestCreator = new WeakHashMap();
    indicatorsEnabled = paramBoolean1;
    loggingEnabled = paramBoolean2;
    referenceQueue = new ReferenceQueue();
    cleanupThread = new Picasso.CleanupThread(referenceQueue, HANDLER);
    cleanupThread.start();
  }
  
  private void cancelExistingRequest(Object paramObject)
  {
    Utils.checkMain();
    Action localAction = (Action)targetToAction.remove(paramObject);
    if (localAction != null)
    {
      localAction.cancel();
      dispatcher.dispatchCancel(localAction);
    }
    if ((paramObject instanceof ImageView))
    {
      paramObject = (ImageView)paramObject;
      paramObject = (DeferredRequestCreator)targetToDeferredRequestCreator.remove(paramObject);
      if (paramObject != null) {
        ((DeferredRequestCreator)paramObject).cancel();
      }
    }
  }
  
  private void deliverAction(Bitmap paramBitmap, Picasso.LoadedFrom paramLoadedFrom, Action paramAction)
  {
    if (paramAction.isCancelled()) {}
    do
    {
      do
      {
        return;
        if (!paramAction.willReplay()) {
          targetToAction.remove(paramAction.getTarget());
        }
        if (paramBitmap == null) {
          break;
        }
        if (paramLoadedFrom == null) {
          throw new AssertionError("LoadedFrom cannot be null.");
        }
        paramAction.complete(paramBitmap, paramLoadedFrom);
      } while (!loggingEnabled);
      Utils.log("Main", "completed", request.logId(), "from " + paramLoadedFrom);
      return;
      paramAction.error();
    } while (!loggingEnabled);
    Utils.log("Main", "errored", request.logId());
  }
  
  public static Picasso with(Context paramContext)
  {
    if (singleton == null) {}
    try
    {
      if (singleton == null) {
        singleton = new Picasso.Builder(paramContext).build();
      }
      return singleton;
    }
    finally {}
  }
  
  public boolean areIndicatorsEnabled()
  {
    return indicatorsEnabled;
  }
  
  public void cancelRequest(ImageView paramImageView)
  {
    cancelExistingRequest(paramImageView);
  }
  
  public void cancelRequest(RemoteViews paramRemoteViews, int paramInt)
  {
    cancelExistingRequest(new RemoteViewsAction.RemoteViewsTarget(paramRemoteViews, paramInt));
  }
  
  public void cancelRequest(Target paramTarget)
  {
    cancelExistingRequest(paramTarget);
  }
  
  void complete(BitmapHunter paramBitmapHunter)
  {
    int k = 1;
    Action localAction = paramBitmapHunter.getAction();
    List localList = paramBitmapHunter.getActions();
    int i;
    int j;
    if ((localList != null) && (!localList.isEmpty()))
    {
      i = 1;
      j = k;
      if (localAction == null)
      {
        if (i == 0) {
          break label57;
        }
        j = k;
      }
      label47:
      if (j != 0) {
        break label62;
      }
    }
    label57:
    label62:
    Uri localUri;
    Exception localException;
    do
    {
      return;
      i = 0;
      break;
      j = 0;
      break label47;
      localUri = getDatauri;
      localException = paramBitmapHunter.getException();
      Bitmap localBitmap = paramBitmapHunter.getResult();
      paramBitmapHunter = paramBitmapHunter.getLoadedFrom();
      if (localAction != null) {
        deliverAction(localBitmap, paramBitmapHunter, localAction);
      }
      if (i != 0)
      {
        j = localList.size();
        i = 0;
        while (i < j)
        {
          deliverAction(localBitmap, paramBitmapHunter, (Action)localList.get(i));
          i += 1;
        }
      }
    } while ((listener == null) || (localException == null));
    listener.onImageLoadFailed(this, localUri, localException);
  }
  
  void defer(ImageView paramImageView, DeferredRequestCreator paramDeferredRequestCreator)
  {
    targetToDeferredRequestCreator.put(paramImageView, paramDeferredRequestCreator);
  }
  
  void enqueueAndSubmit(Action paramAction)
  {
    Object localObject = paramAction.getTarget();
    if (localObject != null)
    {
      cancelExistingRequest(localObject);
      targetToAction.put(localObject, paramAction);
    }
    submit(paramAction);
  }
  
  public StatsSnapshot getSnapshot()
  {
    return stats.createSnapshot();
  }
  
  @Deprecated
  public boolean isDebugging()
  {
    return (areIndicatorsEnabled()) && (isLoggingEnabled());
  }
  
  public boolean isLoggingEnabled()
  {
    return loggingEnabled;
  }
  
  public RequestCreator load(int paramInt)
  {
    if (paramInt == 0) {
      throw new IllegalArgumentException("Resource ID must not be zero.");
    }
    return new RequestCreator(this, null, paramInt);
  }
  
  public RequestCreator load(Uri paramUri)
  {
    return new RequestCreator(this, paramUri, 0);
  }
  
  public RequestCreator load(File paramFile)
  {
    if (paramFile == null) {
      return new RequestCreator(this, null, 0);
    }
    return load(Uri.fromFile(paramFile));
  }
  
  public RequestCreator load(String paramString)
  {
    if (paramString == null) {
      return new RequestCreator(this, null, 0);
    }
    if (paramString.trim().length() == 0) {
      throw new IllegalArgumentException("Path must not be empty.");
    }
    return load(Uri.parse(paramString));
  }
  
  Bitmap quickMemoryCacheCheck(String paramString)
  {
    paramString = cache.get(paramString);
    if (paramString != null)
    {
      stats.dispatchCacheHit();
      return paramString;
    }
    stats.dispatchCacheMiss();
    return paramString;
  }
  
  @Deprecated
  public void setDebugging(boolean paramBoolean)
  {
    setIndicatorsEnabled(paramBoolean);
  }
  
  public void setIndicatorsEnabled(boolean paramBoolean)
  {
    indicatorsEnabled = paramBoolean;
  }
  
  public void setLoggingEnabled(boolean paramBoolean)
  {
    loggingEnabled = paramBoolean;
  }
  
  public void shutdown()
  {
    if (this == singleton) {
      throw new UnsupportedOperationException("Default singleton instance cannot be shutdown.");
    }
    if (shutdown) {
      return;
    }
    cache.clear();
    cleanupThread.shutdown();
    stats.shutdown();
    dispatcher.shutdown();
    Iterator localIterator = targetToDeferredRequestCreator.values().iterator();
    while (localIterator.hasNext()) {
      ((DeferredRequestCreator)localIterator.next()).cancel();
    }
    targetToDeferredRequestCreator.clear();
    shutdown = true;
  }
  
  void submit(Action paramAction)
  {
    dispatcher.dispatchSubmit(paramAction);
  }
  
  Request transformRequest(Request paramRequest)
  {
    Request localRequest = requestTransformer.transformRequest(paramRequest);
    if (localRequest == null) {
      throw new IllegalStateException("Request transformer " + requestTransformer.getClass().getCanonicalName() + " returned null for " + paramRequest);
    }
    return localRequest;
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.Picasso
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
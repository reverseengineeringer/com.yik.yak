package com.squareup.picasso;

import android.app.Notification;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.widget.ImageView;
import android.widget.RemoteViews;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;

public class RequestCreator
{
  private static int nextId = 0;
  private final Request.Builder data;
  private boolean deferred;
  private Drawable errorDrawable;
  private int errorResId;
  private boolean noFade;
  private final Picasso picasso;
  private Drawable placeholderDrawable;
  private int placeholderResId;
  private boolean skipMemoryCache;
  
  RequestCreator()
  {
    picasso = null;
    data = new Request.Builder(null, 0);
  }
  
  RequestCreator(Picasso paramPicasso, Uri paramUri, int paramInt)
  {
    if (shutdown) {
      throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
    }
    picasso = paramPicasso;
    data = new Request.Builder(paramUri, paramInt);
  }
  
  private Request createRequest(long paramLong)
  {
    int i = getRequestId();
    Request localRequest1 = data.build();
    id = i;
    started = paramLong;
    boolean bool = picasso.loggingEnabled;
    if (bool) {
      Utils.log("Main", "created", localRequest1.plainId(), localRequest1.toString());
    }
    Request localRequest2 = picasso.transformRequest(localRequest1);
    if (localRequest2 != localRequest1)
    {
      id = i;
      started = paramLong;
      if (bool) {
        Utils.log("Main", "changed", localRequest2.logId(), "into " + localRequest2);
      }
    }
    return localRequest2;
  }
  
  private static int getRequestId()
  {
    if (Utils.isMain())
    {
      int i = nextId;
      nextId = i + 1;
      return i;
    }
    CountDownLatch localCountDownLatch = new CountDownLatch(1);
    AtomicInteger localAtomicInteger = new AtomicInteger();
    Picasso.HANDLER.post(new RequestCreator.1(localAtomicInteger, localCountDownLatch));
    try
    {
      localCountDownLatch.await();
      return localAtomicInteger.get();
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        Picasso.HANDLER.post(new RequestCreator.2(localInterruptedException));
      }
    }
  }
  
  private void performRemoteViewInto(RemoteViewsAction paramRemoteViewsAction)
  {
    if (!skipMemoryCache)
    {
      Bitmap localBitmap = picasso.quickMemoryCacheCheck(paramRemoteViewsAction.getKey());
      if (localBitmap != null)
      {
        paramRemoteViewsAction.complete(localBitmap, Picasso.LoadedFrom.MEMORY);
        return;
      }
    }
    if (placeholderResId != 0) {
      paramRemoteViewsAction.setImageResource(placeholderResId);
    }
    picasso.enqueueAndSubmit(paramRemoteViewsAction);
  }
  
  public RequestCreator centerCrop()
  {
    data.centerCrop();
    return this;
  }
  
  public RequestCreator centerInside()
  {
    data.centerInside();
    return this;
  }
  
  public RequestCreator config(Bitmap.Config paramConfig)
  {
    data.config(paramConfig);
    return this;
  }
  
  public RequestCreator error(int paramInt)
  {
    if (paramInt == 0) {
      throw new IllegalArgumentException("Error image resource invalid.");
    }
    if (errorDrawable != null) {
      throw new IllegalStateException("Error image already set.");
    }
    errorResId = paramInt;
    return this;
  }
  
  public RequestCreator error(Drawable paramDrawable)
  {
    if (paramDrawable == null) {
      throw new IllegalArgumentException("Error image may not be null.");
    }
    if (errorResId != 0) {
      throw new IllegalStateException("Error image already set.");
    }
    errorDrawable = paramDrawable;
    return this;
  }
  
  public void fetch()
  {
    long l = System.nanoTime();
    if (deferred) {
      throw new IllegalStateException("Fit cannot be used with fetch.");
    }
    if (data.hasImage())
    {
      Object localObject = createRequest(l);
      String str = Utils.createKey((Request)localObject, new StringBuilder());
      localObject = new FetchAction(picasso, (Request)localObject, skipMemoryCache, str);
      picasso.submit((Action)localObject);
    }
  }
  
  public RequestCreator fit()
  {
    deferred = true;
    return this;
  }
  
  public Bitmap get()
  {
    long l = System.nanoTime();
    Utils.checkNotMain();
    if (deferred) {
      throw new IllegalStateException("Fit cannot be used with get.");
    }
    if (!data.hasImage()) {
      return null;
    }
    Object localObject = createRequest(l);
    String str = Utils.createKey((Request)localObject, new StringBuilder());
    localObject = new GetAction(picasso, (Request)localObject, skipMemoryCache, str);
    return BitmapHunter.forRequest(picasso.context, picasso, picasso.dispatcher, picasso.cache, picasso.stats, (Action)localObject, picasso.dispatcher.downloader).hunt();
  }
  
  public void into(ImageView paramImageView)
  {
    into(paramImageView, null);
  }
  
  public void into(ImageView paramImageView, Callback paramCallback)
  {
    long l = System.nanoTime();
    Utils.checkMain();
    if (paramImageView == null) {
      throw new IllegalArgumentException("Target must not be null.");
    }
    if (!data.hasImage())
    {
      picasso.cancelRequest(paramImageView);
      PicassoDrawable.setPlaceholder(paramImageView, placeholderResId, placeholderDrawable);
    }
    Request localRequest;
    String str;
    do
    {
      return;
      if (deferred)
      {
        if (data.hasSize()) {
          throw new IllegalStateException("Fit cannot be used with resize.");
        }
        int i = paramImageView.getWidth();
        int j = paramImageView.getHeight();
        if ((i == 0) || (j == 0))
        {
          PicassoDrawable.setPlaceholder(paramImageView, placeholderResId, placeholderDrawable);
          picasso.defer(paramImageView, new DeferredRequestCreator(this, paramImageView, paramCallback));
          return;
        }
        data.resize(i, j);
      }
      localRequest = createRequest(l);
      str = Utils.createKey(localRequest);
      if (skipMemoryCache) {
        break;
      }
      Bitmap localBitmap = picasso.quickMemoryCacheCheck(str);
      if (localBitmap == null) {
        break;
      }
      picasso.cancelRequest(paramImageView);
      PicassoDrawable.setBitmap(paramImageView, picasso.context, localBitmap, Picasso.LoadedFrom.MEMORY, noFade, picasso.indicatorsEnabled);
      if (picasso.loggingEnabled) {
        Utils.log("Main", "completed", localRequest.plainId(), "from " + Picasso.LoadedFrom.MEMORY);
      }
    } while (paramCallback == null);
    paramCallback.onSuccess();
    return;
    PicassoDrawable.setPlaceholder(paramImageView, placeholderResId, placeholderDrawable);
    paramImageView = new ImageViewAction(picasso, paramImageView, localRequest, skipMemoryCache, noFade, errorResId, errorDrawable, str, paramCallback);
    picasso.enqueueAndSubmit(paramImageView);
  }
  
  public void into(RemoteViews paramRemoteViews, int paramInt1, int paramInt2, Notification paramNotification)
  {
    long l = System.nanoTime();
    Utils.checkMain();
    if (paramRemoteViews == null) {
      throw new IllegalArgumentException("RemoteViews must not be null.");
    }
    if (paramNotification == null) {
      throw new IllegalArgumentException("Notification must not be null.");
    }
    if (deferred) {
      throw new IllegalStateException("Fit cannot be used with RemoteViews.");
    }
    if ((placeholderDrawable != null) || (errorDrawable != null)) {
      throw new IllegalArgumentException("Cannot use placeholder or error drawables with remote views.");
    }
    Request localRequest = createRequest(l);
    String str = Utils.createKey(localRequest);
    performRemoteViewInto(new RemoteViewsAction.NotificationAction(picasso, localRequest, paramRemoteViews, paramInt1, paramInt2, paramNotification, skipMemoryCache, errorResId, str));
  }
  
  public void into(RemoteViews paramRemoteViews, int paramInt, int[] paramArrayOfInt)
  {
    long l = System.nanoTime();
    Utils.checkMain();
    if (paramRemoteViews == null) {
      throw new IllegalArgumentException("remoteViews must not be null.");
    }
    if (paramArrayOfInt == null) {
      throw new IllegalArgumentException("appWidgetIds must not be null.");
    }
    if (deferred) {
      throw new IllegalStateException("Fit cannot be used with remote views.");
    }
    if ((placeholderDrawable != null) || (errorDrawable != null)) {
      throw new IllegalArgumentException("Cannot use placeholder or error drawables with remote views.");
    }
    Request localRequest = createRequest(l);
    String str = Utils.createKey(localRequest);
    performRemoteViewInto(new RemoteViewsAction.AppWidgetAction(picasso, localRequest, paramRemoteViews, paramInt, paramArrayOfInt, skipMemoryCache, errorResId, str));
  }
  
  public void into(Target paramTarget)
  {
    long l = System.nanoTime();
    Utils.checkMain();
    if (paramTarget == null) {
      throw new IllegalArgumentException("Target must not be null.");
    }
    if (deferred) {
      throw new IllegalStateException("Fit cannot be used with a Target.");
    }
    if (placeholderResId != 0) {}
    for (Drawable localDrawable = picasso.context.getResources().getDrawable(placeholderResId); !data.hasImage(); localDrawable = placeholderDrawable)
    {
      picasso.cancelRequest(paramTarget);
      paramTarget.onPrepareLoad(localDrawable);
      return;
    }
    Request localRequest = createRequest(l);
    String str = Utils.createKey(localRequest);
    if (!skipMemoryCache)
    {
      Bitmap localBitmap = picasso.quickMemoryCacheCheck(str);
      if (localBitmap != null)
      {
        picasso.cancelRequest(paramTarget);
        paramTarget.onBitmapLoaded(localBitmap, Picasso.LoadedFrom.MEMORY);
        return;
      }
    }
    paramTarget.onPrepareLoad(localDrawable);
    paramTarget = new TargetAction(picasso, paramTarget, localRequest, skipMemoryCache, errorResId, errorDrawable, str);
    picasso.enqueueAndSubmit(paramTarget);
  }
  
  public RequestCreator noFade()
  {
    noFade = true;
    return this;
  }
  
  public RequestCreator placeholder(int paramInt)
  {
    if (paramInt == 0) {
      throw new IllegalArgumentException("Placeholder image resource invalid.");
    }
    if (placeholderDrawable != null) {
      throw new IllegalStateException("Placeholder image already set.");
    }
    placeholderResId = paramInt;
    return this;
  }
  
  public RequestCreator placeholder(Drawable paramDrawable)
  {
    if (placeholderResId != 0) {
      throw new IllegalStateException("Placeholder image already set.");
    }
    placeholderDrawable = paramDrawable;
    return this;
  }
  
  public RequestCreator resize(int paramInt1, int paramInt2)
  {
    data.resize(paramInt1, paramInt2);
    return this;
  }
  
  public RequestCreator resizeDimen(int paramInt1, int paramInt2)
  {
    Resources localResources = picasso.context.getResources();
    return resize(localResources.getDimensionPixelSize(paramInt1), localResources.getDimensionPixelSize(paramInt2));
  }
  
  public RequestCreator rotate(float paramFloat)
  {
    data.rotate(paramFloat);
    return this;
  }
  
  public RequestCreator rotate(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    data.rotate(paramFloat1, paramFloat2, paramFloat3);
    return this;
  }
  
  public RequestCreator skipMemoryCache()
  {
    skipMemoryCache = true;
    return this;
  }
  
  public RequestCreator transform(Transformation paramTransformation)
  {
    data.transform(paramTransformation);
    return this;
  }
  
  RequestCreator unfit()
  {
    deferred = false;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.RequestCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
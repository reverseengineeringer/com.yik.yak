package com.squareup.picasso;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

class Dispatcher
{
  static final int AIRPLANE_MODE_CHANGE = 10;
  private static final int AIRPLANE_MODE_OFF = 0;
  private static final int AIRPLANE_MODE_ON = 1;
  private static final int BATCH_DELAY = 200;
  private static final String DISPATCHER_THREAD_NAME = "Dispatcher";
  static final int HUNTER_BATCH_COMPLETE = 8;
  static final int HUNTER_COMPLETE = 4;
  static final int HUNTER_DECODE_FAILED = 6;
  static final int HUNTER_DELAY_NEXT_BATCH = 7;
  static final int HUNTER_RETRY = 5;
  static final int NETWORK_STATE_CHANGE = 9;
  static final int REQUEST_CANCEL = 2;
  static final int REQUEST_GCED = 3;
  static final int REQUEST_SUBMIT = 1;
  private static final int RETRY_DELAY = 500;
  boolean airplaneMode;
  final List<BitmapHunter> batch;
  final Cache cache;
  final Context context;
  final Dispatcher.DispatcherThread dispatcherThread = new Dispatcher.DispatcherThread();
  final Downloader downloader;
  final Map<Object, Action> failedActions;
  final Handler handler;
  final Map<String, BitmapHunter> hunterMap;
  final Handler mainThreadHandler;
  final Dispatcher.NetworkBroadcastReceiver receiver;
  final boolean scansNetworkChanges;
  final ExecutorService service;
  final Stats stats;
  
  Dispatcher(Context paramContext, ExecutorService paramExecutorService, Handler paramHandler, Downloader paramDownloader, Cache paramCache, Stats paramStats)
  {
    dispatcherThread.start();
    context = paramContext;
    service = paramExecutorService;
    hunterMap = new LinkedHashMap();
    failedActions = new WeakHashMap();
    handler = new Dispatcher.DispatcherHandler(dispatcherThread.getLooper(), this);
    downloader = paramDownloader;
    mainThreadHandler = paramHandler;
    cache = paramCache;
    stats = paramStats;
    batch = new ArrayList(4);
    airplaneMode = Utils.isAirplaneModeOn(context);
    scansNetworkChanges = Utils.hasPermission(paramContext, "android.permission.ACCESS_NETWORK_STATE");
    receiver = new Dispatcher.NetworkBroadcastReceiver(this);
    receiver.register();
  }
  
  private void batch(BitmapHunter paramBitmapHunter)
  {
    if (paramBitmapHunter.isCancelled()) {}
    do
    {
      return;
      batch.add(paramBitmapHunter);
    } while (handler.hasMessages(7));
    handler.sendEmptyMessageDelayed(7, 200L);
  }
  
  private void flushFailedActions()
  {
    if (!failedActions.isEmpty())
    {
      Iterator localIterator = failedActions.values().iterator();
      while (localIterator.hasNext())
      {
        Action localAction = (Action)localIterator.next();
        localIterator.remove();
        if (getPicassologgingEnabled) {
          Utils.log("Dispatcher", "replaying", localAction.getRequest().logId());
        }
        performSubmit(localAction);
      }
    }
  }
  
  private void logBatch(List<BitmapHunter> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {}
    while (!get0getPicassologgingEnabled) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      BitmapHunter localBitmapHunter = (BitmapHunter)paramList.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(Utils.getLogIdsForHunter(localBitmapHunter));
    }
    Utils.log("Dispatcher", "delivered", localStringBuilder.toString());
  }
  
  private void markForReplay(Action paramAction)
  {
    Object localObject = paramAction.getTarget();
    if (localObject != null)
    {
      willReplay = true;
      failedActions.put(localObject, paramAction);
    }
  }
  
  private void markForReplay(BitmapHunter paramBitmapHunter)
  {
    Action localAction = paramBitmapHunter.getAction();
    if (localAction != null) {
      markForReplay(localAction);
    }
    paramBitmapHunter = paramBitmapHunter.getActions();
    if (paramBitmapHunter != null)
    {
      int j = paramBitmapHunter.size();
      int i = 0;
      while (i < j)
      {
        markForReplay((Action)paramBitmapHunter.get(i));
        i += 1;
      }
    }
  }
  
  void dispatchAirplaneModeChange(boolean paramBoolean)
  {
    Handler localHandler1 = handler;
    Handler localHandler2 = handler;
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localHandler1.sendMessage(localHandler2.obtainMessage(10, i, 0));
      return;
    }
  }
  
  void dispatchCancel(Action paramAction)
  {
    handler.sendMessage(handler.obtainMessage(2, paramAction));
  }
  
  void dispatchComplete(BitmapHunter paramBitmapHunter)
  {
    handler.sendMessage(handler.obtainMessage(4, paramBitmapHunter));
  }
  
  void dispatchFailed(BitmapHunter paramBitmapHunter)
  {
    handler.sendMessage(handler.obtainMessage(6, paramBitmapHunter));
  }
  
  void dispatchNetworkStateChange(NetworkInfo paramNetworkInfo)
  {
    handler.sendMessage(handler.obtainMessage(9, paramNetworkInfo));
  }
  
  void dispatchRetry(BitmapHunter paramBitmapHunter)
  {
    handler.sendMessageDelayed(handler.obtainMessage(5, paramBitmapHunter), 500L);
  }
  
  void dispatchSubmit(Action paramAction)
  {
    handler.sendMessage(handler.obtainMessage(1, paramAction));
  }
  
  void performAirplaneModeChange(boolean paramBoolean)
  {
    airplaneMode = paramBoolean;
  }
  
  void performBatchComplete()
  {
    ArrayList localArrayList = new ArrayList(batch);
    batch.clear();
    mainThreadHandler.sendMessage(mainThreadHandler.obtainMessage(8, localArrayList));
    logBatch(localArrayList);
  }
  
  void performCancel(Action paramAction)
  {
    String str = paramAction.getKey();
    BitmapHunter localBitmapHunter = (BitmapHunter)hunterMap.get(str);
    if (localBitmapHunter != null)
    {
      localBitmapHunter.detach(paramAction);
      if (localBitmapHunter.cancel())
      {
        hunterMap.remove(str);
        if (getPicassologgingEnabled) {
          Utils.log("Dispatcher", "canceled", paramAction.getRequest().logId());
        }
      }
    }
    paramAction = (Action)failedActions.remove(paramAction.getTarget());
    if ((paramAction != null) && (getPicassologgingEnabled)) {
      Utils.log("Dispatcher", "canceled", paramAction.getRequest().logId(), "from replaying");
    }
  }
  
  void performComplete(BitmapHunter paramBitmapHunter)
  {
    if (!paramBitmapHunter.shouldSkipMemoryCache()) {
      cache.set(paramBitmapHunter.getKey(), paramBitmapHunter.getResult());
    }
    hunterMap.remove(paramBitmapHunter.getKey());
    batch(paramBitmapHunter);
    if (getPicassologgingEnabled) {
      Utils.log("Dispatcher", "batched", Utils.getLogIdsForHunter(paramBitmapHunter), "for completion");
    }
  }
  
  void performError(BitmapHunter paramBitmapHunter, boolean paramBoolean)
  {
    String str2;
    StringBuilder localStringBuilder;
    if (getPicassologgingEnabled)
    {
      str2 = Utils.getLogIdsForHunter(paramBitmapHunter);
      localStringBuilder = new StringBuilder().append("for error");
      if (!paramBoolean) {
        break label78;
      }
    }
    label78:
    for (String str1 = " (will replay)";; str1 = "")
    {
      Utils.log("Dispatcher", "batched", str2, str1);
      hunterMap.remove(paramBitmapHunter.getKey());
      batch(paramBitmapHunter);
      return;
    }
  }
  
  void performNetworkStateChange(NetworkInfo paramNetworkInfo)
  {
    if ((service instanceof PicassoExecutorService)) {
      ((PicassoExecutorService)service).adjustThreadCount(paramNetworkInfo);
    }
    if ((paramNetworkInfo != null) && (paramNetworkInfo.isConnected())) {
      flushFailedActions();
    }
  }
  
  void performRetry(BitmapHunter paramBitmapHunter)
  {
    boolean bool1 = true;
    if (paramBitmapHunter.isCancelled()) {
      return;
    }
    if (service.isShutdown())
    {
      performError(paramBitmapHunter, false);
      return;
    }
    if (scansNetworkChanges) {}
    for (NetworkInfo localNetworkInfo = ((ConnectivityManager)Utils.getService(context, "connectivity")).getActiveNetworkInfo();; localNetworkInfo = null)
    {
      int i;
      label69:
      boolean bool3;
      if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
      {
        i = 1;
        boolean bool2 = paramBitmapHunter.shouldRetry(airplaneMode, localNetworkInfo);
        bool3 = paramBitmapHunter.supportsReplay();
        if (bool2) {
          break label130;
        }
        if ((!scansNetworkChanges) || (!bool3)) {
          break label125;
        }
      }
      for (;;)
      {
        performError(paramBitmapHunter, bool1);
        if (!bool1) {
          break;
        }
        markForReplay(paramBitmapHunter);
        return;
        i = 0;
        break label69;
        label125:
        bool1 = false;
      }
      label130:
      if ((!scansNetworkChanges) || (i != 0))
      {
        if (getPicassologgingEnabled) {
          Utils.log("Dispatcher", "retrying", Utils.getLogIdsForHunter(paramBitmapHunter));
        }
        future = service.submit(paramBitmapHunter);
        return;
      }
      performError(paramBitmapHunter, bool3);
      if (!bool3) {
        break;
      }
      markForReplay(paramBitmapHunter);
      return;
    }
  }
  
  void performSubmit(Action paramAction)
  {
    BitmapHunter localBitmapHunter = (BitmapHunter)hunterMap.get(paramAction.getKey());
    if (localBitmapHunter != null) {
      localBitmapHunter.attach(paramAction);
    }
    do
    {
      do
      {
        return;
        if (!service.isShutdown()) {
          break;
        }
      } while (!getPicassologgingEnabled);
      Utils.log("Dispatcher", "ignored", request.logId(), "because shut down");
      return;
      localBitmapHunter = BitmapHunter.forRequest(context, paramAction.getPicasso(), this, cache, stats, paramAction, downloader);
      future = service.submit(localBitmapHunter);
      hunterMap.put(paramAction.getKey(), localBitmapHunter);
      failedActions.remove(paramAction.getTarget());
    } while (!getPicassologgingEnabled);
    Utils.log("Dispatcher", "enqueued", request.logId());
  }
  
  void shutdown()
  {
    service.shutdown();
    dispatcherThread.quit();
    receiver.unregister();
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.Dispatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
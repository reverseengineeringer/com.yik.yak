package com.google.android.gms.common.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.jg;
import iB;
import iE;
import iG;
import ig;
import ii;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class c
  implements GoogleApiClient
{
  private final Looper JF;
  private final Condition JR = zO.newCondition();
  private final ig JS;
  private final int JT;
  final Queue<c.d<?>> JU = new LinkedList();
  private ConnectionResult JV;
  private int JW;
  private volatile int JX = 4;
  private volatile boolean JY;
  private boolean JZ = false;
  private final c.b Jy = new c.1(this);
  private int Ka;
  private long Kb = 120000L;
  private long Kc = 5000L;
  final Handler Kd;
  BroadcastReceiver Ke;
  private final Bundle Kf = new Bundle();
  private final Map<Api.c<?>, Api.a> Kg = new HashMap();
  private final List<String> Kh;
  private boolean Ki;
  private final Set<d<?>> Kj = Collections.newSetFromMap(new WeakHashMap());
  final Set<c.d<?>> Kk = Collections.newSetFromMap(new ConcurrentHashMap());
  private final GoogleApiClient.ConnectionCallbacks Kl = new c.2(this);
  private final ii Km = new c.3(this);
  private final Context mContext;
  private final Lock zO = new ReentrantLock();
  
  public c(Context paramContext, Looper paramLooper, jg paramjg, Map<Api<?>, Api.ApiOptions> paramMap, Set<GoogleApiClient.ConnectionCallbacks> paramSet, Set<GoogleApiClient.OnConnectionFailedListener> paramSet1, int paramInt)
  {
    mContext = paramContext;
    JS = new ig(paramContext, paramLooper, Km);
    JF = paramLooper;
    Kd = new c.c(this, paramLooper);
    JT = paramInt;
    paramSet = paramSet.iterator();
    Object localObject1;
    while (paramSet.hasNext())
    {
      localObject1 = (GoogleApiClient.ConnectionCallbacks)paramSet.next();
      JS.a((GoogleApiClient.ConnectionCallbacks)localObject1);
    }
    paramSet = paramSet1.iterator();
    while (paramSet.hasNext())
    {
      paramSet1 = (GoogleApiClient.OnConnectionFailedListener)paramSet.next();
      JS.a(paramSet1);
    }
    paramSet = paramMap.keySet().iterator();
    while (paramSet.hasNext())
    {
      paramSet1 = (Api)paramSet.next();
      localObject1 = paramSet1.gx();
      Object localObject2 = paramMap.get(paramSet1);
      Kg.put(paramSet1.gz(), a((Api.b)localObject1, localObject2, paramContext, paramLooper, paramjg, Kl, new c.4(this, (Api.b)localObject1)));
    }
    Kh = Collections.unmodifiableList(paramjg.b());
  }
  
  private static <C extends Api.a, O> C a(Api.b<C, O> paramb, Object paramObject, Context paramContext, Looper paramLooper, jg paramjg, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return paramb.a(paramContext, paramLooper, paramjg, paramObject, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  private void a(GoogleApiClient paramGoogleApiClient, f paramf, boolean paramBoolean)
  {
    iE.c.a(paramGoogleApiClient).setResultCallback(new c.7(this, paramf, paramBoolean, paramGoogleApiClient));
  }
  
  private <A extends Api.a> void a(c.d<A> paramd)
  {
    zO.lock();
    try
    {
      if (paramd.gz() != null) {}
      for (boolean bool = true;; bool = false)
      {
        iB.b(bool, "This task can not be executed or enqueued (it's probably a Batch or malformed)");
        Kk.add(paramd);
        paramd.a(Jy);
        if (!gL()) {
          break;
        }
        paramd.l(new Status(8));
        return;
      }
      paramd.b(a(paramd.gz()));
      return;
    }
    finally
    {
      zO.unlock();
    }
  }
  
  private void al(int paramInt)
  {
    zO.lock();
    Object localObject2;
    try
    {
      if (JX == 3) {
        break label374;
      }
      if (paramInt != -1) {
        break label241;
      }
      if (isConnecting())
      {
        Iterator localIterator1 = JU.iterator();
        while (localIterator1.hasNext())
        {
          localObject2 = (c.d)localIterator1.next();
          if (((c.d)localObject2).gF() != 1)
          {
            ((c.d)localObject2).cancel();
            localIterator1.remove();
          }
        }
      }
      JU.clear();
    }
    finally
    {
      zO.unlock();
    }
    Iterator localIterator2 = Kk.iterator();
    while (localIterator2.hasNext()) {
      ((c.d)localIterator2.next()).cancel();
    }
    Kk.clear();
    localIterator2 = Kj.iterator();
    while (localIterator2.hasNext()) {
      ((d)localIterator2.next()).clear();
    }
    Kj.clear();
    if ((JV == null) && (!JU.isEmpty()))
    {
      JZ = true;
      zO.unlock();
      return;
    }
    label241:
    boolean bool1 = isConnecting();
    boolean bool2 = isConnected();
    JX = 3;
    if (bool1)
    {
      if (paramInt == -1) {
        JV = null;
      }
      JR.signalAll();
    }
    Ki = false;
    localIterator2 = Kg.values().iterator();
    while (localIterator2.hasNext())
    {
      localObject2 = (Api.a)localIterator2.next();
      if (((Api.a)localObject2).isConnected()) {
        ((Api.a)localObject2).disconnect();
      }
    }
    Ki = true;
    JX = 4;
    if (bool2)
    {
      if (paramInt != -1) {
        JS.a(paramInt);
      }
      Ki = false;
    }
    label374:
    zO.unlock();
  }
  
  private void gJ()
  {
    Ka -= 1;
    if (Ka == 0)
    {
      if (JV != null)
      {
        JZ = false;
        al(3);
        if ((!gL()) || (!GooglePlayServicesUtil.e(mContext, JV.getErrorCode())))
        {
          gM();
          JS.a(JV);
        }
        Ki = false;
      }
    }
    else {
      return;
    }
    JX = 2;
    gM();
    JR.signalAll();
    gK();
    if (JZ)
    {
      JZ = false;
      al(-1);
      return;
    }
    if (Kf.isEmpty()) {}
    for (Bundle localBundle = null;; localBundle = Kf)
    {
      JS.a(localBundle);
      return;
    }
  }
  
  private void gK()
  {
    zO.lock();
    for (;;)
    {
      try
      {
        if (!isConnected())
        {
          if (gL())
          {
            break label97;
            iB.a(bool, "GoogleApiClient is not connected yet.");
            bool = JU.isEmpty();
            if (!bool)
            {
              try
              {
                a((c.d)JU.remove());
              }
              catch (DeadObjectException localDeadObjectException) {}
              continue;
            }
          }
          else
          {
            bool = false;
            continue;
          }
          return;
        }
      }
      finally
      {
        zO.unlock();
      }
      label97:
      boolean bool = true;
    }
  }
  
  private void gM()
  {
    zO.lock();
    try
    {
      boolean bool = JY;
      if (!bool) {
        return;
      }
      JY = false;
      Kd.removeMessages(2);
      Kd.removeMessages(1);
      mContext.unregisterReceiver(Ke);
      return;
    }
    finally
    {
      zO.unlock();
    }
  }
  
  private void resume()
  {
    zO.lock();
    try
    {
      if (gL()) {
        connect();
      }
      return;
    }
    finally
    {
      zO.unlock();
    }
  }
  
  public <C extends Api.a> C a(Api.c<C> paramc)
  {
    paramc = (Api.a)Kg.get(paramc);
    iB.a(paramc, "Appropriate Api was not requested.");
    return paramc;
  }
  
  /* Error */
  public <A extends Api.a, R extends Result, T extends BaseImplementation.a<R, A>> T a(T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 66	com/google/android/gms/common/api/c:zO	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 265 1 0
    //   9: aload_0
    //   10: invokevirtual 343	com/google/android/gms/common/api/c:isConnected	()Z
    //   13: ifeq +20 -> 33
    //   16: aload_0
    //   17: aload_1
    //   18: invokevirtual 447	com/google/android/gms/common/api/c:b	(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;
    //   21: pop
    //   22: aload_0
    //   23: getfield 66	com/google/android/gms/common/api/c:zO	Ljava/util/concurrent/locks/Lock;
    //   26: invokeinterface 297 1 0
    //   31: aload_1
    //   32: areturn
    //   33: aload_0
    //   34: getfield 79	com/google/android/gms/common/api/c:JU	Ljava/util/Queue;
    //   37: aload_1
    //   38: invokeinterface 448 2 0
    //   43: pop
    //   44: goto -22 -> 22
    //   47: astore_1
    //   48: aload_0
    //   49: getfield 66	com/google/android/gms/common/api/c:zO	Ljava/util/concurrent/locks/Lock;
    //   52: invokeinterface 297 1 0
    //   57: aload_1
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	c
    //   0	59	1	paramT	T
    // Exception table:
    //   from	to	target	type
    //   9	22	47	finally
    //   33	44	47	finally
  }
  
  public boolean a(Scope paramScope)
  {
    return Kh.contains(paramScope.gO());
  }
  
  public <A extends Api.a, T extends BaseImplementation.a<? extends Result, A>> T b(T paramT)
  {
    if ((isConnected()) || (gL())) {}
    for (boolean bool = true;; bool = false)
    {
      iB.a(bool, "GoogleApiClient is not connected yet.");
      gK();
      try
      {
        a(paramT);
        return paramT;
      }
      catch (DeadObjectException localDeadObjectException)
      {
        al(1);
      }
    }
    return paramT;
  }
  
  public ConnectionResult blockingConnect()
  {
    boolean bool;
    if (Looper.myLooper() != Looper.getMainLooper()) {
      bool = true;
    }
    for (;;)
    {
      iB.a(bool, "blockingConnect must not be called on the UI thread");
      zO.lock();
      try
      {
        connect();
        for (;;)
        {
          bool = isConnecting();
          if (!bool) {
            break label86;
          }
          try
          {
            JR.await();
          }
          catch (InterruptedException localInterruptedException)
          {
            Thread.currentThread().interrupt();
            localConnectionResult = new ConnectionResult(15, null);
            return localConnectionResult;
          }
        }
        bool = false;
        continue;
        label86:
        if (isConnected())
        {
          localConnectionResult = ConnectionResult.Iu;
          return localConnectionResult;
        }
        if (JV != null)
        {
          localConnectionResult = JV;
          return localConnectionResult;
        }
        ConnectionResult localConnectionResult = new ConnectionResult(13, null);
        return localConnectionResult;
      }
      finally
      {
        zO.unlock();
      }
    }
  }
  
  public ConnectionResult blockingConnect(long paramLong, TimeUnit paramTimeUnit)
  {
    boolean bool;
    if (Looper.myLooper() != Looper.getMainLooper()) {
      bool = true;
    }
    for (;;)
    {
      iB.a(bool, "blockingConnect must not be called on the UI thread");
      zO.lock();
      try
      {
        connect();
        paramLong = paramTimeUnit.toNanos(paramLong);
        for (;;)
        {
          bool = isConnecting();
          if (!bool) {
            break;
          }
          try
          {
            long l = JR.awaitNanos(paramLong);
            paramLong = l;
            if (l <= 0L)
            {
              paramTimeUnit = new ConnectionResult(14, null);
              return paramTimeUnit;
            }
          }
          catch (InterruptedException paramTimeUnit)
          {
            Thread.currentThread().interrupt();
            paramTimeUnit = new ConnectionResult(15, null);
            return paramTimeUnit;
          }
        }
        bool = false;
        continue;
        if (isConnected())
        {
          paramTimeUnit = ConnectionResult.Iu;
          return paramTimeUnit;
        }
        if (JV != null)
        {
          paramTimeUnit = JV;
          return paramTimeUnit;
        }
        paramTimeUnit = new ConnectionResult(13, null);
        return paramTimeUnit;
      }
      finally
      {
        zO.unlock();
      }
    }
  }
  
  public PendingResult<Status> clearDefaultAccountAndReconnect()
  {
    iB.a(isConnected(), "GoogleApiClient is not connected yet.");
    f localf = new f(JF);
    if (Kg.containsKey(iE.a))
    {
      a(this, localf, false);
      return localf;
    }
    AtomicReference localAtomicReference = new AtomicReference();
    Object localObject = new c.5(this, localAtomicReference, localf);
    c.6 local6 = new c.6(this, localf);
    localObject = new GoogleApiClient.Builder(mContext).addApi(iE.b).addConnectionCallbacks((GoogleApiClient.ConnectionCallbacks)localObject).addOnConnectionFailedListener(local6).setHandler(Kd).build();
    localAtomicReference.set(localObject);
    ((GoogleApiClient)localObject).connect();
    return localf;
  }
  
  public void connect()
  {
    zO.lock();
    try
    {
      JZ = false;
      if (!isConnected())
      {
        boolean bool = isConnecting();
        if (!bool) {}
      }
      else
      {
        return;
      }
      Ki = true;
      JV = null;
      JX = 1;
      Kf.clear();
      Ka = Kg.size();
      Iterator localIterator = Kg.values().iterator();
      while (localIterator.hasNext()) {
        ((Api.a)localIterator.next()).connect();
      }
    }
    finally
    {
      zO.unlock();
    }
  }
  
  public <L> d<L> d(L paramL)
  {
    iB.a(paramL, "Listener must not be null");
    zO.lock();
    try
    {
      paramL = new d(JF, paramL);
      Kj.add(paramL);
      return paramL;
    }
    finally
    {
      zO.unlock();
    }
  }
  
  public void disconnect()
  {
    gM();
    al(-1);
  }
  
  boolean gL()
  {
    return JY;
  }
  
  public Looper getLooper()
  {
    return JF;
  }
  
  public boolean isConnected()
  {
    return JX == 2;
  }
  
  public boolean isConnecting()
  {
    return JX == 1;
  }
  
  public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    return JS.b(paramConnectionCallbacks);
  }
  
  public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return JS.b(paramOnConnectionFailedListener);
  }
  
  public void reconnect()
  {
    disconnect();
    connect();
  }
  
  public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    JS.a(paramConnectionCallbacks);
  }
  
  public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    JS.a(paramOnConnectionFailedListener);
  }
  
  public void stopAutoManage(FragmentActivity paramFragmentActivity)
  {
    if (JT >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      iB.a(bool, "Called stopAutoManage but automatic lifecycle management is not enabled.");
      g.a(paramFragmentActivity).ao(JT);
      return;
    }
  }
  
  public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    JS.c(paramConnectionCallbacks);
  }
  
  public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    JS.c(paramOnConnectionFailedListener);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
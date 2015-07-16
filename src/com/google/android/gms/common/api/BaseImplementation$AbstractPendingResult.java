package com.google.android.gms.common.api;

import android.os.Looper;
import iB;
import in;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public abstract class BaseImplementation$AbstractPendingResult<R extends Result>
  implements BaseImplementation.b<R>, PendingResult<R>
{
  private final Object Jp = new Object();
  private final ArrayList<PendingResult.a> Jq = new ArrayList();
  private ResultCallback<R> Jr;
  private volatile R Js;
  private volatile boolean Jt;
  private boolean Ju;
  private boolean Jv;
  private in Jw;
  protected final BaseImplementation.CallbackHandler<R> mHandler;
  private final CountDownLatch mr = new CountDownLatch(1);
  
  protected BaseImplementation$AbstractPendingResult(Looper paramLooper)
  {
    mHandler = new BaseImplementation.CallbackHandler(paramLooper);
  }
  
  protected BaseImplementation$AbstractPendingResult(BaseImplementation.CallbackHandler<R> paramCallbackHandler)
  {
    mHandler = paramCallbackHandler;
  }
  
  private void c(R paramR)
  {
    Js = paramR;
    Jw = null;
    mr.countDown();
    paramR = Js.getStatus();
    if (Jr != null)
    {
      mHandler.removeTimeoutMessages();
      if (!Ju) {
        mHandler.sendResultCallback(Jr, gA());
      }
    }
    Iterator localIterator = Jq.iterator();
    while (localIterator.hasNext()) {
      ((PendingResult.a)localIterator.next()).m(paramR);
    }
    Jq.clear();
  }
  
  private R gA()
  {
    for (;;)
    {
      synchronized (Jp)
      {
        if (!Jt)
        {
          bool = true;
          iB.a(bool, "Result has already been consumed.");
          iB.a(isReady(), "Result is not ready.");
          Result localResult = Js;
          gB();
          return localResult;
        }
      }
      boolean bool = false;
    }
  }
  
  private void gC()
  {
    synchronized (Jp)
    {
      if (!isReady())
      {
        b(c(Status.Kx));
        Jv = true;
      }
      return;
    }
  }
  
  private void gD()
  {
    synchronized (Jp)
    {
      if (!isReady())
      {
        b(c(Status.Kz));
        Jv = true;
      }
      return;
    }
  }
  
  public final void a(PendingResult.a parama)
  {
    if (!Jt) {}
    for (boolean bool = true;; bool = false)
    {
      iB.a(bool, "Result has already been consumed.");
      synchronized (Jp)
      {
        if (isReady())
        {
          parama.m(Js.getStatus());
          return;
        }
        Jq.add(parama);
      }
    }
  }
  
  protected final void a(in paramin)
  {
    synchronized (Jp)
    {
      Jw = paramin;
      return;
    }
  }
  
  public final R await()
  {
    boolean bool2 = true;
    boolean bool1;
    if (Looper.myLooper() != Looper.getMainLooper()) {
      bool1 = true;
    }
    for (;;)
    {
      iB.a(bool1, "await must not be called on the UI thread");
      if (!Jt)
      {
        bool1 = bool2;
        iB.a(bool1, "Result has already been consumed");
      }
      try
      {
        mr.await();
        iB.a(isReady(), "Result is not ready.");
        return gA();
        bool1 = false;
        continue;
        bool1 = false;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          gC();
        }
      }
    }
  }
  
  public final R await(long paramLong, TimeUnit paramTimeUnit)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramLong <= 0L) || (Looper.myLooper() != Looper.getMainLooper())) {
      bool1 = true;
    }
    for (;;)
    {
      iB.a(bool1, "await must not be called on the UI thread when time is greater than zero.");
      if (!Jt)
      {
        bool1 = bool2;
        iB.a(bool1, "Result has already been consumed.");
      }
      try
      {
        if (!mr.await(paramLong, paramTimeUnit)) {
          gD();
        }
        iB.a(isReady(), "Result is not ready.");
        return gA();
        bool1 = false;
        continue;
        bool1 = false;
      }
      catch (InterruptedException paramTimeUnit)
      {
        for (;;)
        {
          gC();
        }
      }
    }
  }
  
  public final void b(R paramR)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (Jp)
      {
        if ((Jv) || (Ju))
        {
          BaseImplementation.a(paramR);
          return;
        }
        if (!isReady())
        {
          bool1 = true;
          iB.a(bool1, "Results have already been set");
          if (Jt) {
            break label83;
          }
          bool1 = bool2;
          iB.a(bool1, "Result has already been consumed");
          c(paramR);
          return;
        }
      }
      boolean bool1 = false;
      continue;
      label83:
      bool1 = false;
    }
  }
  
  public abstract R c(Status paramStatus);
  
  public void cancel()
  {
    synchronized (Jp)
    {
      if ((Ju) || (Jt)) {
        return;
      }
      BaseImplementation.a(Js);
      Jr = null;
      Ju = true;
      c(c(Status.KA));
      return;
    }
  }
  
  protected void gB()
  {
    Jt = true;
    Js = null;
    Jr = null;
  }
  
  public boolean isCanceled()
  {
    synchronized (Jp)
    {
      boolean bool = Ju;
      return bool;
    }
  }
  
  public final boolean isReady()
  {
    return mr.getCount() == 0L;
  }
  
  public final void setResultCallback(ResultCallback<R> paramResultCallback)
  {
    if (!Jt) {}
    for (boolean bool = true;; bool = false)
    {
      iB.a(bool, "Result has already been consumed.");
      for (;;)
      {
        synchronized (Jp)
        {
          if (isCanceled()) {
            return;
          }
          if (isReady())
          {
            mHandler.sendResultCallback(paramResultCallback, gA());
            return;
          }
        }
        Jr = paramResultCallback;
      }
    }
  }
  
  public final void setResultCallback(ResultCallback<R> paramResultCallback, long paramLong, TimeUnit paramTimeUnit)
  {
    boolean bool2 = true;
    if (!Jt)
    {
      bool1 = true;
      iB.a(bool1, "Result has already been consumed.");
      if (mHandler == null) {
        break label115;
      }
    }
    label115:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      iB.a(bool1, "CallbackHandler has not been set before calling setResultCallback.");
      for (;;)
      {
        synchronized (Jp)
        {
          if (isCanceled()) {
            return;
          }
          if (isReady())
          {
            mHandler.sendResultCallback(paramResultCallback, gA());
            return;
          }
        }
        Jr = paramResultCallback;
        mHandler.sendTimeoutResultCallback(this, paramTimeUnit.toMillis(paramLong));
      }
      bool1 = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.BaseImplementation.AbstractPendingResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
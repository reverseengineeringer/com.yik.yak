package com.parse;

import android.os.SystemClock;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class PushConnection$EventSet
{
  private final Condition condition = lock.newCondition();
  private final Lock lock = new ReentrantLock();
  private final HashSet<PushConnection.Event> signaledEvents = new HashSet();
  
  public Set<PushConnection.Event> await(PushConnection.Event... paramVarArgs)
  {
    return timedAwait(Long.MAX_VALUE, paramVarArgs);
  }
  
  public void removeEvents(PushConnection.Event... paramVarArgs)
  {
    lock.lock();
    try
    {
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        PushConnection.Event localEvent = paramVarArgs[i];
        signaledEvents.remove(localEvent);
        i += 1;
      }
      return;
    }
    finally
    {
      lock.unlock();
    }
  }
  
  public void signalEvent(PushConnection.Event paramEvent)
  {
    lock.lock();
    try
    {
      signaledEvents.add(paramEvent);
      condition.signalAll();
      return;
    }
    finally
    {
      lock.unlock();
    }
  }
  
  public Set<PushConnection.Event> timedAwait(long paramLong, PushConnection.Event... paramVarArgs)
  {
    Object localObject = Collections.EMPTY_SET;
    localObject = new HashSet(Arrays.asList(paramVarArgs));
    long l1 = SystemClock.elapsedRealtime();
    int i;
    if (paramLong == Long.MAX_VALUE)
    {
      i = 1;
      lock.lock();
    }
    for (;;)
    {
      try
      {
        long l2 = SystemClock.elapsedRealtime() - l1;
        paramVarArgs = new HashSet((Collection)localObject);
        paramVarArgs.retainAll(signaledEvents);
        signaledEvents.removeAll((Collection)localObject);
        int j = paramVarArgs.size();
        if ((j != 0) || ((i == 0) && (l2 >= paramLong)))
        {
          return paramVarArgs;
          i = 0;
          break;
        }
        if (i != 0) {
          condition.awaitUninterruptibly();
        } else {
          try
          {
            condition.await(paramLong - l2, TimeUnit.MILLISECONDS);
          }
          catch (InterruptedException localInterruptedException) {}
        }
      }
      finally
      {
        lock.unlock();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.PushConnection.EventSet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
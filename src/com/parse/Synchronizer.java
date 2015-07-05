package com.parse;

import android.os.Looper;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

class Synchronizer
{
  boolean done = false;
  CountDownLatch latch = new CountDownLatch(1);
  
  void assertFinishes()
  {
    if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
      throw new RuntimeException("assertFinishes() should *not* be called from the UI thread");
    }
    try
    {
      Thread.sleep(500L);
      done = latch.await(10L, TimeUnit.SECONDS);
      if (!done) {
        throw new RuntimeException("finish() was never called");
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new RuntimeException(localInterruptedException.getMessage());
    }
  }
  
  void finish()
  {
    if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
      throw new RuntimeException("finish() should be called from the UI thread");
    }
    if (done) {
      throw new RuntimeException("finish() was called too much");
    }
    latch.countDown();
  }
  
  void start(int paramInt)
  {
    latch = new CountDownLatch(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.parse.Synchronizer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
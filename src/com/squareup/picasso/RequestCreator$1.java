package com.squareup.picasso;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;

final class RequestCreator$1
  implements Runnable
{
  RequestCreator$1(AtomicInteger paramAtomicInteger, CountDownLatch paramCountDownLatch) {}
  
  public void run()
  {
    val$id.set(RequestCreator.access$000());
    val$latch.countDown();
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.RequestCreator.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
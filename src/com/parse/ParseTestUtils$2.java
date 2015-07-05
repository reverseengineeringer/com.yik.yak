package com.parse;

import java.util.concurrent.Semaphore;

final class ParseTestUtils$2
  implements Runnable
{
  ParseTestUtils$2(boolean paramBoolean, Semaphore paramSemaphore) {}
  
  public void run()
  {
    ParseTestUtils.setStrictModeEnabledForThisThread(val$enabled);
    val$done.release();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseTestUtils.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
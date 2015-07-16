package com.parse;

import N;

abstract class ParseEventuallyQueue
{
  private boolean isConnected;
  private ParseEventuallyQueue.TestHelper testHelper;
  
  public abstract void clear();
  
  public abstract N<Object> enqueueEventuallyAsync(ParseCommand paramParseCommand, ParseObject paramParseObject);
  
  void fakeObjectUpdate()
  {
    if (testHelper != null)
    {
      testHelper.notify(3);
      testHelper.notify(1);
      testHelper.notify(5);
    }
  }
  
  public ParseEventuallyQueue.TestHelper getTestHelper()
  {
    if (testHelper == null) {
      testHelper = new ParseEventuallyQueue.TestHelper(null);
    }
    return testHelper;
  }
  
  public boolean isConnected()
  {
    return isConnected;
  }
  
  protected void notifyTestHelper(int paramInt)
  {
    if (testHelper != null) {
      testHelper.notify(paramInt);
    }
  }
  
  public abstract void pause();
  
  public abstract int pendingCount();
  
  public abstract void resume();
  
  public void setConnected(boolean paramBoolean)
  {
    isConnected = paramBoolean;
  }
  
  public void setMaxCacheSizeBytes(int paramInt) {}
  
  public void setTimeoutRetryWaitSeconds(double paramDouble) {}
  
  abstract void simulateReboot();
  
  N<Object> waitForOperationSetAndEventuallyPin(ParseOperationSet paramParseOperationSet, EventuallyPin paramEventuallyPin)
  {
    return N.a(null);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseEventuallyQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
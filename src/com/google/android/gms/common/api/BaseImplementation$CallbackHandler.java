package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;

public class BaseImplementation$CallbackHandler<R extends Result>
  extends Handler
{
  public static final int CALLBACK_ON_COMPLETE = 1;
  public static final int CALLBACK_ON_TIMEOUT = 2;
  
  public BaseImplementation$CallbackHandler()
  {
    this(Looper.getMainLooper());
  }
  
  public BaseImplementation$CallbackHandler(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  protected void deliverResultCallback(ResultCallback<R> paramResultCallback, R paramR)
  {
    try
    {
      paramResultCallback.onResult(paramR);
      return;
    }
    catch (RuntimeException paramResultCallback)
    {
      BaseImplementation.a(paramR);
      throw paramResultCallback;
    }
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      Log.wtf("GoogleApi", "Don't know how to handle this message.");
      return;
    case 1: 
      paramMessage = (Pair)obj;
      deliverResultCallback((ResultCallback)first, (Result)second);
      return;
    }
    BaseImplementation.AbstractPendingResult.a((BaseImplementation.AbstractPendingResult)obj);
  }
  
  public void removeTimeoutMessages()
  {
    removeMessages(2);
  }
  
  public void sendResultCallback(ResultCallback<R> paramResultCallback, R paramR)
  {
    sendMessage(obtainMessage(1, new Pair(paramResultCallback, paramR)));
  }
  
  public void sendTimeoutResultCallback(BaseImplementation.AbstractPendingResult<R> paramAbstractPendingResult, long paramLong)
  {
    sendMessageDelayed(obtainMessage(2, paramAbstractPendingResult), paramLong);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.BaseImplementation.CallbackHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
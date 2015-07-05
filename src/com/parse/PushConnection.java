package com.parse;

import android.app.Service;
import android.os.Looper;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicLong;

class PushConnection
{
  private static final int CONNECT_TIMEOUT_MS = 40000;
  static boolean ENABLE_QUICK_ACK_CHECK = true;
  static boolean ENABLE_RETRY_DELAY = true;
  static long KEEP_ALIVE_ACK_INTERVAL = 0L;
  static long KEEP_ALIVE_INTERVAL = 900000L;
  private static final long MAX_RETRY_DELAY_MS = 300000L;
  private static final long MIN_RETRY_DELAY_MS = 15000L;
  private static final double RETRY_MULT_FACTOR_MAX = 2.0D;
  private static final double RETRY_MULT_FACTOR_MIN = 1.5D;
  private static final String TAG = "com.parse.PushConnection";
  private static PushConnection.StateTransitionListener stateTransitionListener;
  private final PushConnection.EventSet eventSet;
  private final ExecutorService executor;
  private final String host;
  private final AtomicLong lastReadTime;
  private final int port;
  private final Service service;
  
  static
  {
    KEEP_ALIVE_ACK_INTERVAL = 60000L;
  }
  
  public PushConnection(Service paramService, String paramString, int paramInt)
  {
    service = paramService;
    host = paramString;
    port = paramInt;
    executor = Executors.newSingleThreadExecutor();
    eventSet = new PushConnection.EventSet(null);
    lastReadTime = new AtomicLong();
    executor.execute(new PushConnection.WaitStartState(this));
  }
  
  private static void closeSocket(Socket paramSocket)
  {
    try
    {
      paramSocket.shutdownInput();
      paramSocket.close();
      return;
    }
    catch (IOException paramSocket) {}
  }
  
  public static void setStateTransitionListener(PushConnection.StateTransitionListener paramStateTransitionListener)
  {
    try
    {
      stateTransitionListener = paramStateTransitionListener;
      return;
    }
    finally {}
  }
  
  private static boolean writeLine(Socket paramSocket, String paramString)
  {
    if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
      throw new Error("Wrote to push socket on main thread.");
    }
    try
    {
      paramSocket = paramSocket.getOutputStream();
      paramSocket.write((paramString + "\n").getBytes("UTF-8"));
      paramSocket.flush();
      return true;
    }
    catch (IOException paramSocket)
    {
      Parse.logV("com.parse.PushConnection", "PushConnection write failed: " + paramString + " due to exception: " + paramSocket);
    }
    return false;
  }
  
  public void start()
  {
    try
    {
      eventSet.signalEvent(PushConnection.Event.START);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void stop()
  {
    try
    {
      eventSet.signalEvent(PushConnection.Event.STOP);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.PushConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
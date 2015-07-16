package com.parse;

import N;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import org.json.JSONObject;

public class PushConnection$ConnectState
  extends PushConnection.State
{
  private long lastDelay;
  
  public PushConnection$ConnectState(PushConnection paramPushConnection, long paramLong)
  {
    super(paramPushConnection);
    lastDelay = paramLong;
  }
  
  private long nextDelay()
  {
    return Math.min(Math.max(15000L, (lastDelay * (1.5D + Math.random() * 0.5D))), 300000L);
  }
  
  private boolean sendHandshake(Socket paramSocket)
  {
    Object localObject = PushRouter.getPushRequestJSONAsync();
    try
    {
      ((N)localObject).g();
      localObject = (JSONObject)((N)localObject).e();
      if (localObject != null) {
        return PushConnection.access$700(paramSocket, ((JSONObject)localObject).toString());
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        Parse.logE("com.parse.PushConnection", "Unexpected interruption when waiting for handshake to be sent", localInterruptedException);
      }
    }
    return false;
  }
  
  public PushConnection.State runState()
  {
    bool2 = false;
    Socket localSocket = new Socket();
    Object localObject2 = null;
    try
    {
      InetSocketAddress localInetSocketAddress = new InetSocketAddress(PushConnection.access$400(this$0), PushConnection.access$500(this$0));
      bool1 = bool2;
      localObject1 = localObject2;
      if (localInetSocketAddress != null)
      {
        localSocket.connect(localInetSocketAddress, 40000);
        localSocket.setKeepAlive(true);
        localSocket.setTcpNoDelay(true);
        bool1 = sendHandshake(localSocket);
        localObject1 = localObject2;
      }
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        Object localObject1;
        bool1 = bool2;
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        boolean bool1 = bool2;
      }
    }
    if (localObject1 != null) {
      Parse.logI("com.parse.PushConnection", "Failed to connect to push server due to " + localObject1);
    }
    if (!bool1)
    {
      PushConnection.access$600(localSocket);
      return new PushConnection.WaitRetryState(this$0, nextDelay());
    }
    return new PushConnection.ConnectedState(this$0, localSocket);
  }
}

/* Location:
 * Qualified Name:     com.parse.PushConnection.ConnectState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
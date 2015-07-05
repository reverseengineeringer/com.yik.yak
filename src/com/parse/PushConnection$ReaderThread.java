package com.parse;

import android.os.SystemClock;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

class PushConnection$ReaderThread
  extends Thread
{
  private Socket socket;
  private boolean stopped;
  
  public PushConnection$ReaderThread(PushConnection paramPushConnection, Socket paramSocket)
  {
    socket = paramSocket;
    stopped = false;
  }
  
  private void runReaderLoop(BufferedReader paramBufferedReader)
  {
    for (;;)
    {
      try
      {
        String str = paramBufferedReader.readLine();
        continue;
      }
      catch (IOException localIOException1)
      {
        try
        {
          PushConnection.access$1100(this$0).set(SystemClock.elapsedRealtime());
          if (str != null) {
            break label29;
          }
          return;
        }
        catch (IOException localIOException2)
        {
          Object localObject1;
          Object localObject2;
          for (;;) {}
        }
        localIOException1 = localIOException1;
        localObject1 = null;
      }
      label29:
      localObject2 = new JSONTokener((String)localObject1);
      try
      {
        localObject2 = new JSONObject((JSONTokener)localObject2);
        localObject1 = localObject2;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          Parse.logE("com.parse.PushConnection", "bad json: " + (String)localObject1, localJSONException);
          localObject1 = null;
        }
      }
      if (localObject1 != null) {
        PushRouter.handlePpnsPushAsync((JSONObject)localObject1);
      }
      try
      {
        if (stopped) {
          return;
        }
      }
      finally {}
    }
  }
  
  public void run()
  {
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
      if (localBufferedReader != null) {
        runReaderLoop(localBufferedReader);
      }
      try
      {
        localBufferedReader.close();
        try
        {
          if (!stopped) {
            PushConnection.access$300(this$0).signalEvent(PushConnection.Event.READ_ERROR);
          }
          return;
        }
        finally {}
      }
      catch (IOException localIOException1)
      {
        for (;;) {}
      }
    }
    catch (IOException localIOException2)
    {
      for (;;)
      {
        Object localObject2 = null;
      }
    }
  }
  
  public void stopReading()
  {
    try
    {
      stopped = true;
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.parse.PushConnection.ReaderThread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import R;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import java.net.Socket;

class PushConnection$KeepAliveMonitor
{
  private PendingIntent broadcast;
  private final long interval;
  private R<Void> keepAliveTask;
  private AlarmManager manager;
  private BroadcastReceiver readReceiver;
  private final Socket socket;
  private boolean unregistered;
  private BroadcastReceiver writeReceiver;
  
  public PushConnection$KeepAliveMonitor(PushConnection paramPushConnection, Socket paramSocket, long paramLong)
  {
    socket = paramSocket;
    interval = paramLong;
  }
  
  private void signalKeepAliveFailure()
  {
    try
    {
      if (!unregistered) {
        PushConnection.access$300(this$0).signalEvent(PushConnection.Event.KEEP_ALIVE_ERROR);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void register()
  {
    Context localContext = Parse.applicationContext;
    String str = localContext.getPackageName();
    Object localObject = new Intent("com.parse.PushConnection.readKeepAlive");
    ((Intent)localObject).setPackage(str);
    ((Intent)localObject).addCategory(str);
    Intent localIntent = new Intent("com.parse.PushConnection.writeKeepAlive");
    localIntent.setPackage(str);
    localIntent.addCategory(str);
    manager = ((AlarmManager)localContext.getSystemService("alarm"));
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(localContext, 0, (Intent)localObject, 0);
    if (localPendingIntent != null)
    {
      manager.cancel(localPendingIntent);
      localPendingIntent.cancel();
    }
    for (;;)
    {
      broadcast = PendingIntent.getBroadcast(localContext, 0, localIntent, 0);
      manager.cancel(broadcast);
      long l = SystemClock.elapsedRealtime();
      manager.setInexactRepeating(2, l, interval, broadcast);
      readReceiver = new PushConnection.KeepAliveMonitor.1(this);
      writeReceiver = new PushConnection.KeepAliveMonitor.2(this, localContext, (Intent)localObject);
      localObject = new IntentFilter("com.parse.PushConnection.readKeepAlive");
      ((IntentFilter)localObject).addCategory(str);
      localContext.registerReceiver(readReceiver, (IntentFilter)localObject);
      localObject = new IntentFilter("com.parse.PushConnection.writeKeepAlive");
      ((IntentFilter)localObject).addCategory(str);
      localContext.registerReceiver(writeReceiver, (IntentFilter)localObject);
      return;
      Parse.logE("com.parse.PushConnection", "oldReadBroadcast was null");
    }
  }
  
  public void unregister()
  {
    Parse.applicationContext.unregisterReceiver(readReceiver);
    Parse.applicationContext.unregisterReceiver(writeReceiver);
    manager.cancel(broadcast);
    broadcast.cancel();
    try
    {
      unregistered = true;
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.parse.PushConnection.KeepAliveMonitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
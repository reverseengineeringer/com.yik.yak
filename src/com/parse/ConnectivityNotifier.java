package com.parse;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.ReceiverCallNotAllowedException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class ConnectivityNotifier
  extends BroadcastReceiver
{
  static final String TAG = "com.parse.ConnectivityNotifier";
  private static final ConnectivityNotifier singleton = new ConnectivityNotifier();
  private boolean hasRegisteredReceiver = false;
  private Set<ConnectivityNotifier.ConnectivityListener> listeners = new HashSet();
  private final Object lock = new Object();
  
  static ConnectivityNotifier getNotifier()
  {
    return singleton;
  }
  
  public void addListener(ConnectivityNotifier.ConnectivityListener paramConnectivityListener, Context arg2)
  {
    synchronized (lock)
    {
      listeners.add(paramConnectivityListener);
      tryToRegisterForNetworkStatusNotifications();
      return;
    }
  }
  
  public boolean isConnected()
  {
    if (Parse.applicationContext == null) {
      Parse.logW("com.parse.ConnectivityNotifier", "Trying to check network connectivity without a known context. Has Parse.initialize been called from Application.onCreate? (Not Activity.onCreate)");
    }
    do
    {
      return true;
      localObject = (ConnectivityManager)Parse.applicationContext.getSystemService("connectivity");
    } while (localObject == null);
    Object localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo();
    if ((localObject == null) || (((NetworkInfo)localObject).isConnected())) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public void onReceive(Context arg1, Intent paramIntent)
  {
    synchronized (lock)
    {
      ArrayList localArrayList = new ArrayList(listeners);
      ??? = localArrayList.iterator();
      if (???.hasNext()) {
        ((ConnectivityNotifier.ConnectivityListener)???.next()).networkConnectivityStatusChanged(paramIntent);
      }
    }
  }
  
  public void removeListener(ConnectivityNotifier.ConnectivityListener paramConnectivityListener)
  {
    synchronized (lock)
    {
      listeners.remove(paramConnectivityListener);
      tryToRegisterForNetworkStatusNotifications();
      return;
    }
  }
  
  public boolean tryToRegisterForNetworkStatusNotifications()
  {
    Context localContext;
    synchronized (lock)
    {
      if (hasRegisteredReceiver) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.parse.ConnectivityNotifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
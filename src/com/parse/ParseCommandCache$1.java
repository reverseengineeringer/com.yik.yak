package com.parse;

import android.content.Intent;

class ParseCommandCache$1
  implements ConnectivityNotifier.ConnectivityListener
{
  ParseCommandCache$1(ParseCommandCache paramParseCommandCache) {}
  
  public void networkConnectivityStatusChanged(Intent paramIntent)
  {
    if (paramIntent.getBooleanExtra("noConnectivity", false))
    {
      this$0.setConnected(false);
      return;
    }
    this$0.setConnected(ConnectivityNotifier.getNotifier().isConnected());
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseCommandCache.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.facebook;

final class AppEventsLogger$PersistedAppSessionInfo$1
  implements Runnable
{
  public void run()
  {
    AppEventsLogger.PersistedAppSessionInfo.saveAppSessionInformation(AppEventsLogger.access$1000());
  }
}

/* Location:
 * Qualified Name:     com.facebook.AppEventsLogger.PersistedAppSessionInfo.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
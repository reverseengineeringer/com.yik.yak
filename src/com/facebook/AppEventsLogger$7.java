package com.facebook;

final class AppEventsLogger$7
  implements Request.Callback
{
  AppEventsLogger$7(AppEventsLogger.AccessTokenAppIdPair paramAccessTokenAppIdPair, Request paramRequest, AppEventsLogger.SessionEventsState paramSessionEventsState, AppEventsLogger.FlushStatistics paramFlushStatistics) {}
  
  public void onCompleted(Response paramResponse)
  {
    AppEventsLogger.access$900(val$accessTokenAppId, val$postRequest, paramResponse, val$sessionEventsState, val$flushState);
  }
}

/* Location:
 * Qualified Name:     com.facebook.AppEventsLogger.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
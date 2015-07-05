package com.facebook;

import java.io.Serializable;

class AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1
  implements Serializable
{
  private static final long serialVersionUID = -2488473066578201069L;
  private final String accessToken;
  private final String appId;
  
  private AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1(String paramString1, String paramString2)
  {
    accessToken = paramString1;
    appId = paramString2;
  }
  
  private Object readResolve()
  {
    return new AppEventsLogger.AccessTokenAppIdPair(accessToken, appId);
  }
}

/* Location:
 * Qualified Name:     com.facebook.AppEventsLogger.AccessTokenAppIdPair.SerializationProxyV1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.facebook;

import com.facebook.internal.Utility;
import java.io.Serializable;

class AppEventsLogger$AccessTokenAppIdPair
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private final String accessToken;
  private final String applicationId;
  
  AppEventsLogger$AccessTokenAppIdPair(Session paramSession)
  {
    this(paramSession.getAccessToken(), paramSession.getApplicationId());
  }
  
  AppEventsLogger$AccessTokenAppIdPair(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (Utility.isNullOrEmpty(paramString1)) {
      str = null;
    }
    accessToken = str;
    applicationId = paramString2;
  }
  
  private Object writeReplace()
  {
    return new AppEventsLogger.AccessTokenAppIdPair.SerializationProxyV1(accessToken, applicationId, null);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof AccessTokenAppIdPair)) {}
    do
    {
      return false;
      paramObject = (AccessTokenAppIdPair)paramObject;
    } while ((!Utility.areObjectsEqual(accessToken, accessToken)) || (!Utility.areObjectsEqual(applicationId, applicationId)));
    return true;
  }
  
  String getAccessToken()
  {
    return accessToken;
  }
  
  String getApplicationId()
  {
    return applicationId;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (accessToken == null)
    {
      i = 0;
      if (applicationId != null) {
        break label33;
      }
    }
    for (;;)
    {
      return i ^ j;
      i = accessToken.hashCode();
      break;
      label33:
      j = applicationId.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.AppEventsLogger.AccessTokenAppIdPair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
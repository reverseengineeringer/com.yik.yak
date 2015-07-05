package com.facebook;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

class AccessToken$SerializationProxyV1
  implements Serializable
{
  private static final long serialVersionUID = -2488473066578201069L;
  private final Date expires;
  private final Date lastRefresh;
  private final List<String> permissions;
  private final AccessTokenSource source;
  private final String token;
  
  private AccessToken$SerializationProxyV1(String paramString, Date paramDate1, List<String> paramList, AccessTokenSource paramAccessTokenSource, Date paramDate2)
  {
    expires = paramDate1;
    permissions = paramList;
    token = paramString;
    source = paramAccessTokenSource;
    lastRefresh = paramDate2;
  }
  
  private Object readResolve()
  {
    return new AccessToken(token, expires, permissions, null, source, lastRefresh);
  }
}

/* Location:
 * Qualified Name:     com.facebook.AccessToken.SerializationProxyV1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
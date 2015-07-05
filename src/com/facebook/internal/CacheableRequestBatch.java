package com.facebook.internal;

import com.facebook.Request;
import com.facebook.RequestBatch;

public class CacheableRequestBatch
  extends RequestBatch
{
  private String cacheKey;
  private boolean forceRoundTrip;
  
  public CacheableRequestBatch() {}
  
  public CacheableRequestBatch(Request... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public final String getCacheKeyOverride()
  {
    return cacheKey;
  }
  
  public final boolean getForceRoundTrip()
  {
    return forceRoundTrip;
  }
  
  public final void setCacheKeyOverride(String paramString)
  {
    cacheKey = paramString;
  }
  
  public final void setForceRoundTrip(boolean paramBoolean)
  {
    forceRoundTrip = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.CacheableRequestBatch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
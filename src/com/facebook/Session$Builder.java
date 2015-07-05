package com.facebook;

import android.content.Context;

public final class Session$Builder
{
  private String applicationId;
  private final Context context;
  private TokenCachingStrategy tokenCachingStrategy;
  
  public Session$Builder(Context paramContext)
  {
    context = paramContext;
  }
  
  public Session build()
  {
    return new Session(context, applicationId, tokenCachingStrategy);
  }
  
  public Builder setApplicationId(String paramString)
  {
    applicationId = paramString;
    return this;
  }
  
  public Builder setTokenCachingStrategy(TokenCachingStrategy paramTokenCachingStrategy)
  {
    tokenCachingStrategy = paramTokenCachingStrategy;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.facebook.Session.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
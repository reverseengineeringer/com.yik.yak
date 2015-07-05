package com.facebook;

import android.os.Bundle;

public class NonCachingTokenCachingStrategy
  extends TokenCachingStrategy
{
  public void clear() {}
  
  public Bundle load()
  {
    return null;
  }
  
  public void save(Bundle paramBundle) {}
}

/* Location:
 * Qualified Name:     com.facebook.NonCachingTokenCachingStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
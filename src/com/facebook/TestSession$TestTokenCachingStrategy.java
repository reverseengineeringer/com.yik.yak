package com.facebook;

import android.os.Bundle;

final class TestSession$TestTokenCachingStrategy
  extends TokenCachingStrategy
{
  private Bundle bundle;
  
  public void clear()
  {
    bundle = null;
  }
  
  public Bundle load()
  {
    return bundle;
  }
  
  public void save(Bundle paramBundle)
  {
    bundle = paramBundle;
  }
}

/* Location:
 * Qualified Name:     com.facebook.TestSession.TestTokenCachingStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.facebook;

abstract interface AuthorizationClient$BackgroundProcessingListener
{
  public abstract void onBackgroundProcessingStarted();
  
  public abstract void onBackgroundProcessingStopped();
}

/* Location:
 * Qualified Name:     com.facebook.AuthorizationClient.BackgroundProcessingListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
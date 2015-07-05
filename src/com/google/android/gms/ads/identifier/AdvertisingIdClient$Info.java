package com.google.android.gms.ads.identifier;

public final class AdvertisingIdClient$Info
{
  private final String lx;
  private final boolean ly;
  
  public AdvertisingIdClient$Info(String paramString, boolean paramBoolean)
  {
    lx = paramString;
    ly = paramBoolean;
  }
  
  public String getId()
  {
    return lx;
  }
  
  public boolean isLimitAdTrackingEnabled()
  {
    return ly;
  }
  
  public String toString()
  {
    return "{" + lx + "}" + ly;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.identifier.AdvertisingIdClient.Info
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
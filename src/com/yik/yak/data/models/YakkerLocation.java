package com.yik.yak.data.models;

import Aa;
import Hi;
import android.location.Location;

public class YakkerLocation
  extends Location
{
  public YakkerLocation(Location paramLocation)
  {
    super(paramLocation);
  }
  
  public YakkerLocation(String paramString)
  {
    super(paramString);
  }
  
  public String a()
  {
    return Hi.a(getLatitude());
  }
  
  public String b()
  {
    return Hi.a(getLongitude());
  }
  
  public String c()
  {
    return String.valueOf(Math.round(getLatitude() * 100.0D) / 100.0D);
  }
  
  public String d()
  {
    return String.valueOf(Math.round(getLongitude() * 100.0D) / 100.0D);
  }
  
  public void e()
  {
    Aa.b("lastLatitude", getLatitude());
    Aa.b("lastLongitude", getLongitude());
  }
  
  public void f()
  {
    setProvider("lastKnown");
    setLatitude(Aa.a("lastLatitude", 0.0D));
    setLongitude(Aa.a("lastLongitude", 0.0D));
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.models.YakkerLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.location;

import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import ix;
import ke;

public final class LocationRequest
  implements SafeParcelable
{
  public static final ke CREATOR = new ke();
  public int a;
  public long b;
  public long c;
  public boolean d;
  public long e;
  public int f;
  public float g;
  public long h;
  private final int i;
  
  public LocationRequest()
  {
    i = 1;
    a = 102;
    b = 3600000L;
    c = 600000L;
    d = false;
    e = Long.MAX_VALUE;
    f = Integer.MAX_VALUE;
    g = 0.0F;
    h = 0L;
  }
  
  public LocationRequest(int paramInt1, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, long paramLong3, int paramInt3, float paramFloat, long paramLong4)
  {
    i = paramInt1;
    a = paramInt2;
    b = paramLong1;
    c = paramLong2;
    d = paramBoolean;
    e = paramLong3;
    f = paramInt3;
    g = paramFloat;
    h = paramLong4;
  }
  
  public static String a(int paramInt)
  {
    switch (paramInt)
    {
    case 101: 
    case 103: 
    default: 
      return "???";
    case 100: 
      return "PRIORITY_HIGH_ACCURACY";
    case 102: 
      return "PRIORITY_BALANCED_POWER_ACCURACY";
    case 104: 
      return "PRIORITY_LOW_POWER";
    }
    return "PRIORITY_NO_POWER";
  }
  
  private static void b(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("invalid interval: " + paramLong);
    }
  }
  
  public int a()
  {
    return i;
  }
  
  public LocationRequest a(long paramLong)
  {
    b(paramLong);
    b = paramLong;
    if (!d) {
      c = ((b / 6.0D));
    }
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof LocationRequest)) {
        return false;
      }
      paramObject = (LocationRequest)paramObject;
    } while ((a == a) && (b == b) && (c == c) && (d == d) && (e == e) && (f == f) && (g == g));
    return false;
  }
  
  public int hashCode()
  {
    return ix.a(new Object[] { Integer.valueOf(a), Long.valueOf(b), Long.valueOf(c), Boolean.valueOf(d), Long.valueOf(e), Integer.valueOf(f), Float.valueOf(g) });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Request[").append(a(a));
    if (a != 105)
    {
      localStringBuilder.append(" requested=");
      localStringBuilder.append(b + "ms");
    }
    localStringBuilder.append(" fastest=");
    localStringBuilder.append(c + "ms");
    if (e != Long.MAX_VALUE)
    {
      long l1 = e;
      long l2 = SystemClock.elapsedRealtime();
      localStringBuilder.append(" expireIn=");
      localStringBuilder.append(l1 - l2 + "ms");
    }
    if (f != Integer.MAX_VALUE) {
      localStringBuilder.append(" num=").append(f);
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ke.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
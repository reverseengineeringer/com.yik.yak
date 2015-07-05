package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import iA;
import iC;
import jB;
import java.util.concurrent.TimeUnit;

public final class ny
  implements SafeParcelable
{
  public static final jB CREATOR = new jB();
  public static final long a = TimeUnit.HOURS.toMillis(1L);
  public final int b;
  private final nu c;
  private final long d;
  private final int e;
  
  public ny(int paramInt1, nu paramnu, long paramLong, int paramInt2)
  {
    b = paramInt1;
    c = paramnu;
    d = paramLong;
    e = paramInt2;
  }
  
  public nu a()
  {
    return c;
  }
  
  public long b()
  {
    return d;
  }
  
  public int c()
  {
    return e;
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
      if (!(paramObject instanceof ny)) {
        return false;
      }
      paramObject = (ny)paramObject;
    } while ((iA.a(c, c)) && (d == d) && (e == e));
    return false;
  }
  
  public int hashCode()
  {
    return iA.a(new Object[] { c, Long.valueOf(d), Integer.valueOf(e) });
  }
  
  public String toString()
  {
    return iA.a(this).a("filter", c).a("interval", Long.valueOf(d)).a("priority", Integer.valueOf(e)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jB.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ny
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
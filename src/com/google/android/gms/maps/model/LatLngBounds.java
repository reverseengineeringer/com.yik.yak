package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import iB;
import ix;
import iz;
import ls;
import mV;
import mW;

public final class LatLngBounds
  implements SafeParcelable
{
  public static final mV CREATOR = new mV();
  public final LatLng a;
  public final LatLng b;
  private final int c;
  
  public LatLngBounds(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2)
  {
    iB.a(paramLatLng1, "null southwest");
    iB.a(paramLatLng2, "null northeast");
    if (a >= a) {}
    for (boolean bool = true;; bool = false)
    {
      iB.b(bool, "southern latitude exceeds northern latitude (%s > %s)", new Object[] { Double.valueOf(a), Double.valueOf(a) });
      c = paramInt;
      a = paramLatLng1;
      b = paramLatLng2;
      return;
    }
  }
  
  public int a()
  {
    return c;
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
      if (!(paramObject instanceof LatLngBounds)) {
        return false;
      }
      paramObject = (LatLngBounds)paramObject;
    } while ((a.equals(a)) && (b.equals(b)));
    return false;
  }
  
  public int hashCode()
  {
    return ix.a(new Object[] { a, b });
  }
  
  public String toString()
  {
    return ix.a(this).a("southwest", a).a("northeast", b).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ls.a())
    {
      mW.a(this, paramParcel, paramInt);
      return;
    }
    mV.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.LatLngBounds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
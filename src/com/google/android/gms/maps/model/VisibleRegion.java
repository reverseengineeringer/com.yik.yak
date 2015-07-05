package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import iA;
import iC;
import lp;
import nP;
import nQ;

public final class VisibleRegion
  implements SafeParcelable
{
  public static final nP CREATOR = new nP();
  public final LatLng a;
  public final LatLng b;
  public final LatLng c;
  public final LatLng d;
  public final LatLngBounds e;
  private final int f;
  
  public VisibleRegion(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2, LatLng paramLatLng3, LatLng paramLatLng4, LatLngBounds paramLatLngBounds)
  {
    f = paramInt;
    a = paramLatLng1;
    b = paramLatLng2;
    c = paramLatLng3;
    d = paramLatLng4;
    e = paramLatLngBounds;
  }
  
  public int a()
  {
    return f;
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
      if (!(paramObject instanceof VisibleRegion)) {
        return false;
      }
      paramObject = (VisibleRegion)paramObject;
    } while ((a.equals(a)) && (b.equals(b)) && (c.equals(c)) && (d.equals(d)) && (e.equals(e)));
    return false;
  }
  
  public int hashCode()
  {
    return iA.a(new Object[] { a, b, c, d, e });
  }
  
  public String toString()
  {
    return iA.a(this).a("nearLeft", a).a("nearRight", b).a("farLeft", c).a("farRight", d).a("latLngBounds", e).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (lp.a())
    {
      nQ.a(this, paramParcel, paramInt);
      return;
    }
    nP.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.VisibleRegion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
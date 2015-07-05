package com.google.android.gms.maps.internal;

import android.graphics.Point;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import mD;

public class y
  implements SafeParcelable
{
  public static final mD CREATOR = new mD();
  private final int a;
  private final Point b;
  
  public y(int paramInt, Point paramPoint)
  {
    a = paramInt;
    b = paramPoint;
  }
  
  public int a()
  {
    return a;
  }
  
  public Point b()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof y)) {
      return false;
    }
    paramObject = (y)paramObject;
    return b.equals(b);
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
  
  public String toString()
  {
    return b.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    mD.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
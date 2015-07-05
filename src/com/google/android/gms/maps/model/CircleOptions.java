package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import lp;
import mO;
import mP;

public final class CircleOptions
  implements SafeParcelable
{
  public static final mO CREATOR = new mO();
  private final int a;
  private LatLng b = null;
  private double c = 0.0D;
  private float d = 10.0F;
  private int e = -16777216;
  private int f = 0;
  private float g = 0.0F;
  private boolean h = true;
  
  public CircleOptions()
  {
    a = 1;
  }
  
  public CircleOptions(int paramInt1, LatLng paramLatLng, double paramDouble, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean)
  {
    a = paramInt1;
    b = paramLatLng;
    c = paramDouble;
    d = paramFloat1;
    e = paramInt2;
    f = paramInt3;
    g = paramFloat2;
    h = paramBoolean;
  }
  
  public int a()
  {
    return a;
  }
  
  public LatLng b()
  {
    return b;
  }
  
  public double c()
  {
    return c;
  }
  
  public float d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int e()
  {
    return e;
  }
  
  public int f()
  {
    return f;
  }
  
  public float g()
  {
    return g;
  }
  
  public boolean h()
  {
    return h;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (lp.a())
    {
      mP.a(this, paramParcel, paramInt);
      return;
    }
    mO.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.CircleOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
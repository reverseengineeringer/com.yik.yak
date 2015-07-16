package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import hw;
import hx;
import ls;
import mH;
import nE;
import nF;

public final class MarkerOptions
  implements SafeParcelable
{
  public static final nE CREATOR = new nE();
  private final int a;
  private LatLng b;
  private String c;
  private String d;
  private mH e;
  private float f = 0.5F;
  private float g = 1.0F;
  private boolean h;
  private boolean i = true;
  private boolean j = false;
  private float k = 0.0F;
  private float l = 0.5F;
  private float m = 0.0F;
  private float n = 1.0F;
  
  public MarkerOptions()
  {
    a = 1;
  }
  
  public MarkerOptions(int paramInt, LatLng paramLatLng, String paramString1, String paramString2, IBinder paramIBinder, float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    a = paramInt;
    b = paramLatLng;
    c = paramString1;
    d = paramString2;
    if (paramIBinder == null) {}
    for (paramLatLng = null;; paramLatLng = new mH(hx.a(paramIBinder)))
    {
      e = paramLatLng;
      f = paramFloat1;
      g = paramFloat2;
      h = paramBoolean1;
      i = paramBoolean2;
      j = paramBoolean3;
      k = paramFloat3;
      l = paramFloat4;
      m = paramFloat5;
      n = paramFloat6;
      return;
    }
  }
  
  public int a()
  {
    return a;
  }
  
  public MarkerOptions a(LatLng paramLatLng)
  {
    b = paramLatLng;
    return this;
  }
  
  public IBinder b()
  {
    if (e == null) {
      return null;
    }
    return e.a().asBinder();
  }
  
  public LatLng c()
  {
    return b;
  }
  
  public String d()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return d;
  }
  
  public float f()
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
  
  public boolean i()
  {
    return i;
  }
  
  public boolean j()
  {
    return j;
  }
  
  public float k()
  {
    return k;
  }
  
  public float l()
  {
    return l;
  }
  
  public float m()
  {
    return m;
  }
  
  public float n()
  {
    return n;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ls.a())
    {
      nF.a(this, paramParcel, paramInt);
      return;
    }
    nE.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.MarkerOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
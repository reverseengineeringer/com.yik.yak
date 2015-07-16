package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
import ls;
import nI;
import nJ;

public final class PolylineOptions
  implements SafeParcelable
{
  public static final nI CREATOR = new nI();
  private final int a;
  private final List<LatLng> b;
  private float c = 10.0F;
  private int d = -16777216;
  private float e = 0.0F;
  private boolean f = true;
  private boolean g = false;
  
  public PolylineOptions()
  {
    a = 1;
    b = new ArrayList();
  }
  
  public PolylineOptions(int paramInt1, List paramList, float paramFloat1, int paramInt2, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramInt1;
    b = paramList;
    c = paramFloat1;
    d = paramInt2;
    e = paramFloat2;
    f = paramBoolean1;
    g = paramBoolean2;
  }
  
  public int a()
  {
    return a;
  }
  
  public List<LatLng> b()
  {
    return b;
  }
  
  public float c()
  {
    return c;
  }
  
  public int d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public float e()
  {
    return e;
  }
  
  public boolean f()
  {
    return f;
  }
  
  public boolean g()
  {
    return g;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ls.a())
    {
      nJ.a(this, paramParcel, paramInt);
      return;
    }
    nI.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.PolylineOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
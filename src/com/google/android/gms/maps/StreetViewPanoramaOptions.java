package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import kK;
import lr;

public final class StreetViewPanoramaOptions
  implements SafeParcelable
{
  public static final kK CREATOR = new kK();
  private final int a;
  private StreetViewPanoramaCamera b;
  private String c;
  private LatLng d;
  private Integer e;
  private Boolean f = Boolean.valueOf(true);
  private Boolean g = Boolean.valueOf(true);
  private Boolean h = Boolean.valueOf(true);
  private Boolean i = Boolean.valueOf(true);
  private Boolean j;
  
  public StreetViewPanoramaOptions()
  {
    a = 1;
  }
  
  public StreetViewPanoramaOptions(int paramInt, StreetViewPanoramaCamera paramStreetViewPanoramaCamera, String paramString, LatLng paramLatLng, Integer paramInteger, byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4, byte paramByte5)
  {
    a = paramInt;
    b = paramStreetViewPanoramaCamera;
    d = paramLatLng;
    e = paramInteger;
    c = paramString;
    f = lr.a(paramByte1);
    g = lr.a(paramByte2);
    h = lr.a(paramByte3);
    i = lr.a(paramByte4);
    j = lr.a(paramByte5);
  }
  
  public int a()
  {
    return a;
  }
  
  public byte b()
  {
    return lr.a(f);
  }
  
  public byte c()
  {
    return lr.a(g);
  }
  
  public byte d()
  {
    return lr.a(h);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public byte e()
  {
    return lr.a(i);
  }
  
  public byte f()
  {
    return lr.a(j);
  }
  
  public StreetViewPanoramaCamera g()
  {
    return b;
  }
  
  public LatLng h()
  {
    return d;
  }
  
  public Integer i()
  {
    return e;
  }
  
  public String j()
  {
    return c;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kK.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
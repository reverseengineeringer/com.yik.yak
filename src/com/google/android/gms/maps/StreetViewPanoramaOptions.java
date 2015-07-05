package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import kH;
import lo;

public final class StreetViewPanoramaOptions
  implements SafeParcelable
{
  public static final kH CREATOR = new kH();
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
    f = lo.a(paramByte1);
    g = lo.a(paramByte2);
    h = lo.a(paramByte3);
    i = lo.a(paramByte4);
    j = lo.a(paramByte5);
  }
  
  public int a()
  {
    return a;
  }
  
  public byte b()
  {
    return lo.a(f);
  }
  
  public byte c()
  {
    return lo.a(g);
  }
  
  public byte d()
  {
    return lo.a(h);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public byte e()
  {
    return lo.a(i);
  }
  
  public byte f()
  {
    return lo.a(j);
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
    kH.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
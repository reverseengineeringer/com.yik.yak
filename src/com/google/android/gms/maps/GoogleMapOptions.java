package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.CameraPosition;
import fN;
import kF;
import kG;
import lo;
import lp;

public final class GoogleMapOptions
  implements SafeParcelable
{
  public static final kF CREATOR = new kF();
  private final int a;
  private Boolean b;
  private Boolean c;
  private int d = -1;
  private CameraPosition e;
  private Boolean f;
  private Boolean g;
  private Boolean h;
  private Boolean i;
  private Boolean j;
  private Boolean k;
  private Boolean l;
  private Boolean m;
  
  public GoogleMapOptions()
  {
    a = 1;
  }
  
  public GoogleMapOptions(int paramInt1, byte paramByte1, byte paramByte2, int paramInt2, CameraPosition paramCameraPosition, byte paramByte3, byte paramByte4, byte paramByte5, byte paramByte6, byte paramByte7, byte paramByte8, byte paramByte9, byte paramByte10)
  {
    a = paramInt1;
    b = lo.a(paramByte1);
    c = lo.a(paramByte2);
    d = paramInt2;
    e = paramCameraPosition;
    f = lo.a(paramByte3);
    g = lo.a(paramByte4);
    h = lo.a(paramByte5);
    i = lo.a(paramByte6);
    j = lo.a(paramByte7);
    k = lo.a(paramByte8);
    l = lo.a(paramByte9);
    m = lo.a(paramByte10);
  }
  
  public static GoogleMapOptions a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return null;
    }
    TypedArray localTypedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, fN.MapAttrs);
    GoogleMapOptions localGoogleMapOptions = new GoogleMapOptions();
    if (localTypedArray.hasValue(fN.MapAttrs_mapType)) {
      localGoogleMapOptions.a(localTypedArray.getInt(fN.MapAttrs_mapType, -1));
    }
    if (localTypedArray.hasValue(fN.MapAttrs_zOrderOnTop)) {
      localGoogleMapOptions.a(localTypedArray.getBoolean(fN.MapAttrs_zOrderOnTop, false));
    }
    if (localTypedArray.hasValue(fN.MapAttrs_useViewLifecycle)) {
      localGoogleMapOptions.b(localTypedArray.getBoolean(fN.MapAttrs_useViewLifecycle, false));
    }
    if (localTypedArray.hasValue(fN.MapAttrs_uiCompass)) {
      localGoogleMapOptions.d(localTypedArray.getBoolean(fN.MapAttrs_uiCompass, true));
    }
    if (localTypedArray.hasValue(fN.MapAttrs_uiRotateGestures)) {
      localGoogleMapOptions.h(localTypedArray.getBoolean(fN.MapAttrs_uiRotateGestures, true));
    }
    if (localTypedArray.hasValue(fN.MapAttrs_uiScrollGestures)) {
      localGoogleMapOptions.e(localTypedArray.getBoolean(fN.MapAttrs_uiScrollGestures, true));
    }
    if (localTypedArray.hasValue(fN.MapAttrs_uiTiltGestures)) {
      localGoogleMapOptions.g(localTypedArray.getBoolean(fN.MapAttrs_uiTiltGestures, true));
    }
    if (localTypedArray.hasValue(fN.MapAttrs_uiZoomGestures)) {
      localGoogleMapOptions.f(localTypedArray.getBoolean(fN.MapAttrs_uiZoomGestures, true));
    }
    if (localTypedArray.hasValue(fN.MapAttrs_uiZoomControls)) {
      localGoogleMapOptions.c(localTypedArray.getBoolean(fN.MapAttrs_uiZoomControls, true));
    }
    if (localTypedArray.hasValue(fN.MapAttrs_liteMode)) {
      localGoogleMapOptions.i(localTypedArray.getBoolean(fN.MapAttrs_liteMode, false));
    }
    if (localTypedArray.hasValue(fN.MapAttrs_uiMapToolbar)) {
      localGoogleMapOptions.j(localTypedArray.getBoolean(fN.MapAttrs_uiMapToolbar, true));
    }
    localGoogleMapOptions.a(CameraPosition.a(paramContext, paramAttributeSet));
    localTypedArray.recycle();
    return localGoogleMapOptions;
  }
  
  public int a()
  {
    return a;
  }
  
  public GoogleMapOptions a(int paramInt)
  {
    d = paramInt;
    return this;
  }
  
  public GoogleMapOptions a(CameraPosition paramCameraPosition)
  {
    e = paramCameraPosition;
    return this;
  }
  
  public GoogleMapOptions a(boolean paramBoolean)
  {
    b = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte b()
  {
    return lo.a(b);
  }
  
  public GoogleMapOptions b(boolean paramBoolean)
  {
    c = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte c()
  {
    return lo.a(c);
  }
  
  public GoogleMapOptions c(boolean paramBoolean)
  {
    f = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte d()
  {
    return lo.a(f);
  }
  
  public GoogleMapOptions d(boolean paramBoolean)
  {
    g = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public byte e()
  {
    return lo.a(g);
  }
  
  public GoogleMapOptions e(boolean paramBoolean)
  {
    h = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte f()
  {
    return lo.a(h);
  }
  
  public GoogleMapOptions f(boolean paramBoolean)
  {
    i = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte g()
  {
    return lo.a(i);
  }
  
  public GoogleMapOptions g(boolean paramBoolean)
  {
    j = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte h()
  {
    return lo.a(j);
  }
  
  public GoogleMapOptions h(boolean paramBoolean)
  {
    k = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte i()
  {
    return lo.a(k);
  }
  
  public GoogleMapOptions i(boolean paramBoolean)
  {
    l = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte j()
  {
    return lo.a(l);
  }
  
  public GoogleMapOptions j(boolean paramBoolean)
  {
    m = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte k()
  {
    return lo.a(m);
  }
  
  public int l()
  {
    return d;
  }
  
  public CameraPosition m()
  {
    return e;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (lp.a())
    {
      kG.a(this, paramParcel, paramInt);
      return;
    }
    kF.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMapOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
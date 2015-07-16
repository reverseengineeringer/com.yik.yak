package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.CameraPosition;
import fK;
import kI;
import kJ;
import lr;
import ls;

public final class GoogleMapOptions
  implements SafeParcelable
{
  public static final kI CREATOR = new kI();
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
    b = lr.a(paramByte1);
    c = lr.a(paramByte2);
    d = paramInt2;
    e = paramCameraPosition;
    f = lr.a(paramByte3);
    g = lr.a(paramByte4);
    h = lr.a(paramByte5);
    i = lr.a(paramByte6);
    j = lr.a(paramByte7);
    k = lr.a(paramByte8);
    l = lr.a(paramByte9);
    m = lr.a(paramByte10);
  }
  
  public static GoogleMapOptions a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return null;
    }
    TypedArray localTypedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, fK.MapAttrs);
    GoogleMapOptions localGoogleMapOptions = new GoogleMapOptions();
    if (localTypedArray.hasValue(fK.MapAttrs_mapType)) {
      localGoogleMapOptions.a(localTypedArray.getInt(fK.MapAttrs_mapType, -1));
    }
    if (localTypedArray.hasValue(fK.MapAttrs_zOrderOnTop)) {
      localGoogleMapOptions.a(localTypedArray.getBoolean(fK.MapAttrs_zOrderOnTop, false));
    }
    if (localTypedArray.hasValue(fK.MapAttrs_useViewLifecycle)) {
      localGoogleMapOptions.b(localTypedArray.getBoolean(fK.MapAttrs_useViewLifecycle, false));
    }
    if (localTypedArray.hasValue(fK.MapAttrs_uiCompass)) {
      localGoogleMapOptions.d(localTypedArray.getBoolean(fK.MapAttrs_uiCompass, true));
    }
    if (localTypedArray.hasValue(fK.MapAttrs_uiRotateGestures)) {
      localGoogleMapOptions.h(localTypedArray.getBoolean(fK.MapAttrs_uiRotateGestures, true));
    }
    if (localTypedArray.hasValue(fK.MapAttrs_uiScrollGestures)) {
      localGoogleMapOptions.e(localTypedArray.getBoolean(fK.MapAttrs_uiScrollGestures, true));
    }
    if (localTypedArray.hasValue(fK.MapAttrs_uiTiltGestures)) {
      localGoogleMapOptions.g(localTypedArray.getBoolean(fK.MapAttrs_uiTiltGestures, true));
    }
    if (localTypedArray.hasValue(fK.MapAttrs_uiZoomGestures)) {
      localGoogleMapOptions.f(localTypedArray.getBoolean(fK.MapAttrs_uiZoomGestures, true));
    }
    if (localTypedArray.hasValue(fK.MapAttrs_uiZoomControls)) {
      localGoogleMapOptions.c(localTypedArray.getBoolean(fK.MapAttrs_uiZoomControls, true));
    }
    if (localTypedArray.hasValue(fK.MapAttrs_liteMode)) {
      localGoogleMapOptions.i(localTypedArray.getBoolean(fK.MapAttrs_liteMode, false));
    }
    if (localTypedArray.hasValue(fK.MapAttrs_uiMapToolbar)) {
      localGoogleMapOptions.j(localTypedArray.getBoolean(fK.MapAttrs_uiMapToolbar, true));
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
    return lr.a(b);
  }
  
  public GoogleMapOptions b(boolean paramBoolean)
  {
    c = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte c()
  {
    return lr.a(c);
  }
  
  public GoogleMapOptions c(boolean paramBoolean)
  {
    f = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte d()
  {
    return lr.a(f);
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
    return lr.a(g);
  }
  
  public GoogleMapOptions e(boolean paramBoolean)
  {
    h = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte f()
  {
    return lr.a(h);
  }
  
  public GoogleMapOptions f(boolean paramBoolean)
  {
    i = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte g()
  {
    return lr.a(i);
  }
  
  public GoogleMapOptions g(boolean paramBoolean)
  {
    j = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte h()
  {
    return lr.a(j);
  }
  
  public GoogleMapOptions h(boolean paramBoolean)
  {
    k = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte i()
  {
    return lr.a(k);
  }
  
  public GoogleMapOptions i(boolean paramBoolean)
  {
    l = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte j()
  {
    return lr.a(l);
  }
  
  public GoogleMapOptions j(boolean paramBoolean)
  {
    m = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public byte k()
  {
    return lr.a(m);
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
    if (ls.a())
    {
      kJ.a(this, paramParcel, paramInt);
      return;
    }
    kI.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMapOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import iA;
import iC;
import iE;
import mJ;
import nH;

public class StreetViewPanoramaCamera
  implements SafeParcelable
{
  public static final nH CREATOR = new nH();
  public final float a;
  public final float b;
  public final float c;
  private final int d;
  private StreetViewPanoramaOrientation e;
  
  public StreetViewPanoramaCamera(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    boolean bool;
    if ((-90.0F <= paramFloat2) && (paramFloat2 <= 90.0F))
    {
      bool = true;
      iE.b(bool, "Tilt needs to be between -90 and 90 inclusive");
      d = paramInt;
      float f = paramFloat1;
      if (paramFloat1 <= 0.0D) {
        f = 0.0F;
      }
      a = f;
      b = (paramFloat2 + 0.0F);
      if (paramFloat3 > 0.0D) {
        break label114;
      }
    }
    label114:
    for (paramFloat1 = paramFloat3 % 360.0F + 360.0F;; paramFloat1 = paramFloat3)
    {
      c = (paramFloat1 % 360.0F);
      e = new mJ().a(paramFloat2).b(paramFloat3).a();
      return;
      bool = false;
      break;
    }
  }
  
  public int a()
  {
    return d;
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
      if (!(paramObject instanceof StreetViewPanoramaCamera)) {
        return false;
      }
      paramObject = (StreetViewPanoramaCamera)paramObject;
    } while ((Float.floatToIntBits(a) == Float.floatToIntBits(a)) && (Float.floatToIntBits(b) == Float.floatToIntBits(b)) && (Float.floatToIntBits(c) == Float.floatToIntBits(c)));
    return false;
  }
  
  public int hashCode()
  {
    return iA.a(new Object[] { Float.valueOf(a), Float.valueOf(b), Float.valueOf(c) });
  }
  
  public String toString()
  {
    return iA.a(this).a("zoom", Float.valueOf(a)).a("tilt", Float.valueOf(b)).a("bearing", Float.valueOf(c)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    nH.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaCamera
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
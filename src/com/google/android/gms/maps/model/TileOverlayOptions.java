package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import ls;
import mN;
import mO;
import nA;
import nQ;
import nR;
import nz;

public final class TileOverlayOptions
  implements SafeParcelable
{
  public static final nQ CREATOR = new nQ();
  private final int a;
  private nz b;
  private mO c;
  private boolean d = true;
  private float e;
  private boolean f = true;
  
  public TileOverlayOptions()
  {
    a = 1;
  }
  
  public TileOverlayOptions(int paramInt, IBinder paramIBinder, boolean paramBoolean1, float paramFloat, boolean paramBoolean2)
  {
    a = paramInt;
    b = nA.a(paramIBinder);
    if (b == null) {}
    for (paramIBinder = null;; paramIBinder = new mN(this))
    {
      c = paramIBinder;
      d = paramBoolean1;
      e = paramFloat;
      f = paramBoolean2;
      return;
    }
  }
  
  public int a()
  {
    return a;
  }
  
  public IBinder b()
  {
    return b.asBinder();
  }
  
  public float c()
  {
    return e;
  }
  
  public boolean d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean e()
  {
    return f;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ls.a())
    {
      nR.a(this, paramParcel, paramInt);
      return;
    }
    nQ.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlayOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
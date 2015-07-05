package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import lp;
import mK;
import mL;
import nN;
import nO;
import nw;
import nx;

public final class TileOverlayOptions
  implements SafeParcelable
{
  public static final nN CREATOR = new nN();
  private final int a;
  private nw b;
  private mL c;
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
    b = nx.a(paramIBinder);
    if (b == null) {}
    for (paramIBinder = null;; paramIBinder = new mK(this))
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
    if (lp.a())
    {
      nO.a(this, paramParcel, paramInt);
      return;
    }
    nN.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlayOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
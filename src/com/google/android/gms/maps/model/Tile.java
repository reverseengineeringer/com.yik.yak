package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import lp;
import nL;
import nM;

public final class Tile
  implements SafeParcelable
{
  public static final nL CREATOR = new nL();
  public final int a;
  public final int b;
  public final byte[] c;
  private final int d;
  
  public Tile(int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
  {
    d = paramInt1;
    a = paramInt2;
    b = paramInt3;
    c = paramArrayOfByte;
  }
  
  public Tile(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    this(1, paramInt1, paramInt2, paramArrayOfByte);
  }
  
  public int a()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (lp.a())
    {
      nM.a(this, paramParcel, paramInt);
      return;
    }
    nL.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.Tile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
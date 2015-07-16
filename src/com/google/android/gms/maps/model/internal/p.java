package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import nC;

public final class p
  implements SafeParcelable
{
  public static final nC CREATOR = new nC();
  private final int a;
  private a b;
  
  public p()
  {
    a = 1;
  }
  
  public p(int paramInt, a parama)
  {
    a = paramInt;
    b = parama;
  }
  
  public int a()
  {
    return a;
  }
  
  public a b()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    nC.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
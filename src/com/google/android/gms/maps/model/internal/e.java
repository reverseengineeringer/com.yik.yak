package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import nd;

public final class e
  implements SafeParcelable
{
  public static final nd CREATOR = new nd();
  private final int a;
  private a b;
  
  public e()
  {
    a = 1;
  }
  
  public e(int paramInt, a parama)
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
    nd.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import na;

public final class e
  implements SafeParcelable
{
  public static final na CREATOR = new na();
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
    na.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
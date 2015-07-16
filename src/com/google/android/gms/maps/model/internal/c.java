package com.google.android.gms.maps.model.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import nc;

public final class c
  implements SafeParcelable
{
  public static final nc CREATOR = new nc();
  private final int a;
  private int b;
  private Bundle c;
  
  public c(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramBundle;
  }
  
  public int a()
  {
    return a;
  }
  
  public int b()
  {
    return b;
  }
  
  public Bundle c()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    nc.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
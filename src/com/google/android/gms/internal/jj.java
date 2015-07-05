package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import ic;

public class jj
  implements SafeParcelable
{
  public static final Parcelable.Creator<jj> CREATOR = new ic();
  public final int a;
  public final int b;
  public int c;
  public String d;
  public IBinder e;
  public Scope[] f;
  public Bundle g;
  
  public jj(int paramInt1, int paramInt2, int paramInt3, String paramString, IBinder paramIBinder, Scope[] paramArrayOfScope, Bundle paramBundle)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramString;
    e = paramIBinder;
    f = paramArrayOfScope;
    g = paramBundle;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ic.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
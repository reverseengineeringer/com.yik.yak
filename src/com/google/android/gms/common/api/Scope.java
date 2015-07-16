package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import iB;

public final class Scope
  implements SafeParcelable
{
  public static final Parcelable.Creator<Scope> CREATOR = new e();
  final int CK;
  private final String Kv;
  
  Scope(int paramInt, String paramString)
  {
    iB.a(paramString, "scopeUri must not be null or empty");
    CK = paramInt;
    Kv = paramString;
  }
  
  public Scope(String paramString)
  {
    this(1, paramString);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof Scope)) {
      return false;
    }
    return Kv.equals(Kv);
  }
  
  public String gO()
  {
    return Kv;
  }
  
  public int hashCode()
  {
    return Kv.hashCode();
  }
  
  public String toString()
  {
    return Kv;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Scope
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
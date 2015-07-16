package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import ix;
import iz;
import jx;

public class nw
  implements SafeParcelable
{
  public static final jx CREATOR = new jx();
  public final int a;
  private final String b;
  private final String c;
  private final String d;
  
  public nw(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    a = paramInt;
    b = paramString1;
    c = paramString2;
    d = paramString3;
  }
  
  public String a()
  {
    return b;
  }
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof nw)) {}
    do
    {
      return false;
      paramObject = (nw)paramObject;
    } while ((!ix.a(b, b)) || (!ix.a(c, c)) || (!ix.a(d, d)));
    return true;
  }
  
  public int hashCode()
  {
    return ix.a(new Object[] { b, c, d });
  }
  
  public String toString()
  {
    return ix.a(this).a("mPlaceId", b).a("mTag", c).a("mSource", d).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jx.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
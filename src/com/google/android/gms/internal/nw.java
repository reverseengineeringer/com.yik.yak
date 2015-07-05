package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import iA;
import iC;
import jA;

public class nw
  implements SafeParcelable
{
  public static final jA CREATOR = new jA();
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
    } while ((!iA.a(b, b)) || (!iA.a(c, c)) || (!iA.a(d, d)));
    return true;
  }
  
  public int hashCode()
  {
    return iA.a(new Object[] { b, c, d });
  }
  
  public String toString()
  {
    return iA.a(this).a("mPlaceId", b).a("mTag", c).a("mSource", d).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jA.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import iA;
import iC;
import jy;

public final class ns
  implements SafeParcelable
{
  public static final jy CREATOR = new jy();
  private final int a;
  private final int b;
  private final int c;
  private final nu d;
  
  public ns(int paramInt1, int paramInt2, int paramInt3, nu paramnu)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramnu;
  }
  
  public int a()
  {
    return a;
  }
  
  public int b()
  {
    return b;
  }
  
  public int c()
  {
    return c;
  }
  
  public nu d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof ns)) {
        return false;
      }
      paramObject = (ns)paramObject;
    } while ((b == b) && (c == c) && (d.equals(d)));
    return false;
  }
  
  public int hashCode()
  {
    return iA.a(new Object[] { Integer.valueOf(b), Integer.valueOf(c) });
  }
  
  public String toString()
  {
    return iA.a(this).a("transitionTypes", Integer.valueOf(b)).a("loiteringTimeMillis", Integer.valueOf(c)).a("placeFilter", d).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jy.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
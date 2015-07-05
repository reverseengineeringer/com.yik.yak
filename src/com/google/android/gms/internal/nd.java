package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import iA;
import jf;

public class nd
  implements SafeParcelable
{
  public static final jf CREATOR = new jf();
  public final int a;
  public final String b;
  private final int c;
  
  public nd(int paramInt1, int paramInt2, String paramString)
  {
    c = paramInt1;
    a = paramInt2;
    b = paramString;
  }
  
  public int a()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof nd)) {}
    do
    {
      return false;
      paramObject = (nd)paramObject;
    } while ((a != a) || (!iA.a(b, b)));
    return true;
  }
  
  public int hashCode()
  {
    return a;
  }
  
  public String toString()
  {
    return String.format("%d:%s", new Object[] { Integer.valueOf(a), b });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jf.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
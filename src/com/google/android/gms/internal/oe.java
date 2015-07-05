package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import iE;
import jE;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class oe
  implements SafeParcelable
{
  public static final jE CREATOR = new jE();
  public static final oe a = a("test_type", 1);
  public static final oe b = a("labeled_place", 6);
  public static final Set<oe> c = Collections.unmodifiableSet(new HashSet(Arrays.asList(new oe[] { a, b })));
  public final int d;
  public final String e;
  public final int f;
  
  public oe(int paramInt1, String paramString, int paramInt2)
  {
    iE.a(paramString);
    d = paramInt1;
    e = paramString;
    f = paramInt2;
  }
  
  private static oe a(String paramString, int paramInt)
  {
    return new oe(0, paramString, paramInt);
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
      if (!(paramObject instanceof oe)) {
        return false;
      }
      paramObject = (oe)paramObject;
    } while ((e.equals(e)) && (f == f));
    return false;
  }
  
  public int hashCode()
  {
    return e.hashCode();
  }
  
  public String toString()
  {
    return e;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jE.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.oe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
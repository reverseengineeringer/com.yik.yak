package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import iA;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import jx;

public class nq
  implements SafeParcelable
{
  public static final jx CREATOR = new jx();
  public final int a;
  final boolean b;
  public final List<oa> c;
  private final Set<oa> d;
  
  public nq(int paramInt, boolean paramBoolean, List<oa> paramList)
  {
    a = paramInt;
    b = paramBoolean;
    if (paramList == null) {}
    for (paramList = Collections.emptyList();; paramList = Collections.unmodifiableList(paramList))
    {
      c = paramList;
      if (!c.isEmpty()) {
        break;
      }
      d = Collections.emptySet();
      return;
    }
    d = Collections.unmodifiableSet(new HashSet(c));
  }
  
  public boolean a()
  {
    return b;
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
      if (!(paramObject instanceof nq)) {
        return false;
      }
      paramObject = (nq)paramObject;
    } while ((d.equals(d)) && (b == b));
    return false;
  }
  
  public int hashCode()
  {
    return iA.a(new Object[] { d, Boolean.valueOf(b) });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jx.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
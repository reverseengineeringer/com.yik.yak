package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import ix;
import iz;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import jw;

public final class nu
  implements SafeParcelable
{
  public static final jw CREATOR = new jw();
  public final int a;
  public final List<oa> b;
  public final List<oe> c;
  public final List<String> d;
  private final String e;
  private final boolean f;
  private final Set<oa> g;
  private final Set<oe> h;
  private final Set<String> i;
  
  public nu(int paramInt, List<oa> paramList, String paramString, boolean paramBoolean, List<oe> paramList1, List<String> paramList2)
  {
    a = paramInt;
    if (paramList == null)
    {
      paramList = Collections.emptyList();
      b = paramList;
      paramList = paramString;
      if (paramString == null) {
        paramList = "";
      }
      e = paramList;
      f = paramBoolean;
      if (paramList1 != null) {
        break label112;
      }
      paramList = Collections.emptyList();
      label51:
      c = paramList;
      if (paramList2 != null) {
        break label121;
      }
    }
    label112:
    label121:
    for (paramList = Collections.emptyList();; paramList = Collections.unmodifiableList(paramList2))
    {
      d = paramList;
      g = a(b);
      h = a(c);
      i = a(d);
      return;
      paramList = Collections.unmodifiableList(paramList);
      break;
      paramList = Collections.unmodifiableList(paramList1);
      break label51;
    }
  }
  
  private static <E> Set<E> a(List<E> paramList)
  {
    if (paramList.isEmpty()) {
      return Collections.emptySet();
    }
    return Collections.unmodifiableSet(new HashSet(paramList));
  }
  
  @Deprecated
  public String a()
  {
    return e;
  }
  
  public boolean b()
  {
    return f;
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
      if (!(paramObject instanceof nu)) {
        return false;
      }
      paramObject = (nu)paramObject;
    } while ((g.equals(g)) && (f == f) && (h.equals(h)) && (i.equals(i)));
    return false;
  }
  
  public int hashCode()
  {
    return ix.a(new Object[] { g, Boolean.valueOf(f), h, i });
  }
  
  public String toString()
  {
    return ix.a(this).a("types", g).a("placeIds", i).a("requireOpenNow", Boolean.valueOf(f)).a("requestedUserDataTypes", h).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jw.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
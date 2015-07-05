package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import iD;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class jg$a
  implements SafeParcelable
{
  public static final iD CREATOR = new iD();
  private final int a;
  private final String b;
  private final List<String> c = new ArrayList();
  private final int d;
  private final String e;
  
  public jg$a(int paramInt1, String paramString1, List<String> paramList, int paramInt2, String paramString2)
  {
    a = paramInt1;
    b = paramString1;
    c.addAll(paramList);
    d = paramInt2;
    e = paramString2;
  }
  
  public jg$a(String paramString1, Collection<String> paramCollection, int paramInt, String paramString2)
  {
    this(3, paramString1, new ArrayList(paramCollection), paramInt, paramString2);
  }
  
  public String a()
  {
    return b;
  }
  
  public int b()
  {
    return d;
  }
  
  public String c()
  {
    return e;
  }
  
  public List<String> d()
  {
    return new ArrayList(c);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int e()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    iD.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jg.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
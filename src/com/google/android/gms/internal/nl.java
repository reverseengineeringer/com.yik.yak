package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.LocationRequest;
import ix;
import java.util.Collections;
import java.util.List;
import jr;

public class nl
  implements SafeParcelable
{
  public static final jr CREATOR = new jr();
  public static final List<nd> a = ;
  public LocationRequest b;
  public boolean c;
  public boolean d;
  public boolean e;
  public List<nd> f;
  public final String g;
  private final int h;
  
  public nl(int paramInt, LocationRequest paramLocationRequest, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, List<nd> paramList, String paramString)
  {
    h = paramInt;
    b = paramLocationRequest;
    c = paramBoolean1;
    d = paramBoolean2;
    e = paramBoolean3;
    f = paramList;
    g = paramString;
  }
  
  public int a()
  {
    return h;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof nl)) {}
    do
    {
      return false;
      paramObject = (nl)paramObject;
    } while ((!ix.a(b, b)) || (c != c) || (d != d) || (e != e) || (!ix.a(f, f)));
    return true;
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(b.toString());
    localStringBuilder.append(" requestNlpDebugInfo=");
    localStringBuilder.append(c);
    localStringBuilder.append(" restorePendingIntentListeners=");
    localStringBuilder.append(d);
    localStringBuilder.append(" triggerUpdate=");
    localStringBuilder.append(e);
    localStringBuilder.append(" clients=");
    localStringBuilder.append(f);
    if (g != null)
    {
      localStringBuilder.append(" tag=");
      localStringBuilder.append(g);
    }
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jr.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
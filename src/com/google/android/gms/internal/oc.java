package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import jA;
import java.util.ArrayList;
import java.util.List;

public class oc
  implements SafeParcelable
{
  public static final Parcelable.Creator<oc> CREATOR = new jA();
  public final int a;
  private final String b;
  private final LatLng c;
  private final String d;
  private final List<oa> e;
  private final String f;
  private final String g;
  
  public oc(int paramInt, String paramString1, LatLng paramLatLng, String paramString2, List<oa> paramList, String paramString3, String paramString4)
  {
    a = paramInt;
    b = paramString1;
    c = paramLatLng;
    d = paramString2;
    e = new ArrayList(paramList);
    f = paramString3;
    g = paramString4;
  }
  
  public String a()
  {
    return b;
  }
  
  public LatLng b()
  {
    return c;
  }
  
  public String c()
  {
    return d;
  }
  
  public List<oa> d()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return f;
  }
  
  public String f()
  {
    return g;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jA.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.oc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
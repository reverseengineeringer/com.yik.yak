package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import ix;
import kf;

public class e
  implements SafeParcelable
{
  public static final kf CREATOR = new kf();
  public int a;
  public int b;
  public long c;
  private final int d;
  
  public e(int paramInt1, int paramInt2, int paramInt3, long paramLong)
  {
    d = paramInt1;
    a = paramInt2;
    b = paramInt3;
    c = paramLong;
  }
  
  private String a(int paramInt)
  {
    switch (paramInt)
    {
    case 1: 
    default: 
      return "STATUS_UNKNOWN";
    case 0: 
      return "STATUS_SUCCESSFUL";
    case 2: 
      return "STATUS_TIMED_OUT_ON_SCAN";
    case 3: 
      return "STATUS_NO_INFO_IN_DATABASE";
    case 4: 
      return "STATUS_INVALID_SCAN";
    case 5: 
      return "STATUS_UNABLE_TO_QUERY_DATABASE";
    case 6: 
      return "STATUS_SCANS_DISABLED_IN_SETTINGS";
    case 7: 
      return "STATUS_LOCATION_DISABLED_IN_SETTINGS";
    }
    return "STATUS_IN_PROGRESS";
  }
  
  public int a()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof e)) {}
    do
    {
      return false;
      paramObject = (e)paramObject;
    } while ((a != a) || (b != b) || (c != c));
    return true;
  }
  
  public int hashCode()
  {
    return ix.a(new Object[] { Integer.valueOf(a), Integer.valueOf(b), Long.valueOf(c) });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("LocationStatus[cell status: ").append(a(a));
    localStringBuilder.append(", wifi status: ").append(a(b));
    localStringBuilder.append(", elapsed realtime ns: ").append(c);
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kf.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
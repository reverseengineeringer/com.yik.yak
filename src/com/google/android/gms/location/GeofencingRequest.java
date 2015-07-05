package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.nn;
import java.util.List;
import kd;

public class GeofencingRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<GeofencingRequest> CREATOR = new kd();
  private final int a;
  private final List<nn> b;
  private final int c;
  
  public GeofencingRequest(int paramInt1, List<nn> paramList, int paramInt2)
  {
    a = paramInt1;
    b = paramList;
    c = paramInt2;
  }
  
  public int a()
  {
    return a;
  }
  
  public List<nn> b()
  {
    return b;
  }
  
  public int c()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kd.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.GeofencingRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
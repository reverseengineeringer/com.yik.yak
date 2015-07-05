package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import hL;

public class ha
  implements Parcelable
{
  @Deprecated
  public static final Parcelable.Creator<ha> CREATOR = new hL();
  private String a;
  private String b;
  private String c;
  
  @Deprecated
  public ha() {}
  
  @Deprecated
  public ha(Parcel paramParcel)
  {
    a(paramParcel);
  }
  
  public ha(String paramString1, String paramString2, String paramString3)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
  }
  
  @Deprecated
  private void a(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readString();
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return c;
  }
  
  @Deprecated
  public int describeContents()
  {
    return 0;
  }
  
  @Deprecated
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
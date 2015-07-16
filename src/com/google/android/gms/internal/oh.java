package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import ix;
import iz;
import jF;
import java.util.Locale;

public class oh
  implements SafeParcelable
{
  public static final jF CREATOR = new jF();
  public static final oh a = new oh("com.google.android.gms", Locale.ENGLISH, null);
  public final int b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  
  public oh(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    b = paramInt;
    c = paramString1;
    d = paramString2;
    e = paramString3;
    f = paramString4;
  }
  
  public oh(String paramString1, Locale paramLocale, String paramString2)
  {
    this(1, paramString1, paramLocale.toString(), paramString2, null);
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
      if ((paramObject == null) || (!(paramObject instanceof oh))) {
        return false;
      }
      paramObject = (oh)paramObject;
    } while ((d.equals(d)) && (c.equals(c)) && (ix.a(e, e)) && (ix.a(f, f)));
    return false;
  }
  
  public int hashCode()
  {
    return ix.a(new Object[] { c, d, e });
  }
  
  public String toString()
  {
    return ix.a(this).a("clientPackageName", c).a("locale", d).a("accountName", e).a("gCoreClientName", f).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jF.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.oh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
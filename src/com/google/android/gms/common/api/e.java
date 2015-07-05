package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class e
  implements Parcelable.Creator<Scope>
{
  static void a(Scope paramScope, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, CK);
    b.a(paramParcel, 2, paramScope.gO(), false);
    b.H(paramParcel, paramInt);
  }
  
  public Scope[] am(int paramInt)
  {
    return new Scope[paramInt];
  }
  
  public Scope z(Parcel paramParcel)
  {
    int j = a.G(paramParcel);
    int i = 0;
    String str = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.F(paramParcel);
      switch (a.aH(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        str = a.o(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new Scope(i, str);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
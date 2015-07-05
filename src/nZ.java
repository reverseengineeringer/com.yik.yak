import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.internal.p;

public class nz
  implements Parcelable.Creator<p>
{
  public static void a(p paramp, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, paramp.a());
    b.a(paramParcel, 2, paramp.b(), paramInt, false);
    b.H(paramParcel, i);
  }
  
  public p a(Parcel paramParcel)
  {
    int j = com.google.android.gms.common.internal.safeparcel.a.G(paramParcel);
    int i = 0;
    com.google.android.gms.maps.model.internal.a locala = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = com.google.android.gms.common.internal.safeparcel.a.F(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.a.aH(k))
      {
      default: 
        com.google.android.gms.common.internal.safeparcel.a.b(paramParcel, k);
        break;
      case 1: 
        i = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, k);
        break;
      case 2: 
        locala = (com.google.android.gms.maps.model.internal.a)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, k, com.google.android.gms.maps.model.internal.a.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new p(i, locala);
  }
  
  public p[] a(int paramInt)
  {
    return new p[paramInt];
  }
}

/* Location:
 * Qualified Name:     nz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
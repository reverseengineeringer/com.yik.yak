import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.internal.c;

public class nc
  implements Parcelable.Creator<c>
{
  public static void a(c paramc, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, paramc.a());
    b.c(paramParcel, 2, paramc.b());
    b.a(paramParcel, 3, paramc.c(), false);
    b.H(paramParcel, paramInt);
  }
  
  public c a(Parcel paramParcel)
  {
    int j = 0;
    int k = a.G(paramParcel);
    Bundle localBundle = null;
    int i = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.F(paramParcel);
      switch (a.aH(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        i = a.g(paramParcel, m);
        break;
      case 2: 
        j = a.g(paramParcel, m);
        break;
      case 3: 
        localBundle = a.q(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new c(i, j, localBundle);
  }
  
  public c[] a(int paramInt)
  {
    return new c[paramInt];
  }
}

/* Location:
 * Qualified Name:     nc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
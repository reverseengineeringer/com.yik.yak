import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.e;

public class kf
  implements Parcelable.Creator<e>
{
  public static void a(e parame, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, a);
    b.c(paramParcel, 1000, parame.a());
    b.c(paramParcel, 2, b);
    b.a(paramParcel, 3, c);
    b.H(paramParcel, paramInt);
  }
  
  public e a(Parcel paramParcel)
  {
    int i = 1;
    int m = a.G(paramParcel);
    int k = 0;
    long l = 0L;
    int j = 1;
    while (paramParcel.dataPosition() < m)
    {
      int n = a.F(paramParcel);
      switch (a.aH(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        j = a.g(paramParcel, n);
        break;
      case 1000: 
        k = a.g(paramParcel, n);
        break;
      case 2: 
        i = a.g(paramParcel, n);
        break;
      case 3: 
        l = a.i(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new e(k, j, i, l);
  }
  
  public e[] a(int paramInt)
  {
    return new e[paramInt];
  }
}

/* Location:
 * Qualified Name:     kf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
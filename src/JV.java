import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.nn;

public class jv
  implements Parcelable.Creator<nn>
{
  public static void a(nn paramnn, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.a(paramParcel, 1, paramnn.f(), false);
    b.c(paramParcel, 1000, paramnn.a());
    b.a(paramParcel, 2, paramnn.g());
    b.a(paramParcel, 3, paramnn.b());
    b.a(paramParcel, 4, paramnn.c());
    b.a(paramParcel, 5, paramnn.d());
    b.a(paramParcel, 6, paramnn.e());
    b.c(paramParcel, 7, paramnn.h());
    b.c(paramParcel, 8, paramnn.i());
    b.c(paramParcel, 9, paramnn.j());
    b.H(paramParcel, paramInt);
  }
  
  public nn a(Parcel paramParcel)
  {
    int n = a.G(paramParcel);
    int m = 0;
    String str = null;
    int k = 0;
    short s = 0;
    double d2 = 0.0D;
    double d1 = 0.0D;
    float f = 0.0F;
    long l = 0L;
    int j = 0;
    int i = -1;
    while (paramParcel.dataPosition() < n)
    {
      int i1 = a.F(paramParcel);
      switch (a.aH(i1))
      {
      default: 
        a.b(paramParcel, i1);
        break;
      case 1: 
        str = a.o(paramParcel, i1);
        break;
      case 1000: 
        m = a.g(paramParcel, i1);
        break;
      case 2: 
        l = a.i(paramParcel, i1);
        break;
      case 3: 
        s = a.f(paramParcel, i1);
        break;
      case 4: 
        d2 = a.m(paramParcel, i1);
        break;
      case 5: 
        d1 = a.m(paramParcel, i1);
        break;
      case 6: 
        f = a.l(paramParcel, i1);
        break;
      case 7: 
        k = a.g(paramParcel, i1);
        break;
      case 8: 
        j = a.g(paramParcel, i1);
        break;
      case 9: 
        i = a.g(paramParcel, i1);
      }
    }
    if (paramParcel.dataPosition() != n) {
      throw new a.a("Overread allowed size end=" + n, paramParcel);
    }
    return new nn(m, str, k, s, d2, d1, f, l, j, i);
  }
  
  public nn[] a(int paramInt)
  {
    return new nn[paramInt];
  }
}

/* Location:
 * Qualified Name:     jv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
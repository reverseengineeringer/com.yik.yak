import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.nd;

public class jc
  implements Parcelable.Creator<nd>
{
  public static void a(nd paramnd, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, a);
    b.c(paramParcel, 1000, paramnd.a());
    b.a(paramParcel, 2, b, false);
    b.H(paramParcel, paramInt);
  }
  
  public nd a(Parcel paramParcel)
  {
    int j = 0;
    int k = a.G(paramParcel);
    String str = null;
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
        j = a.g(paramParcel, m);
        break;
      case 1000: 
        i = a.g(paramParcel, m);
        break;
      case 2: 
        str = a.o(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new nd(i, j, str);
  }
  
  public nd[] a(int paramInt)
  {
    return new nd[paramInt];
  }
}

/* Location:
 * Qualified Name:     jc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
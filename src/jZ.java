import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.oa;

public class jz
  implements Parcelable.Creator<oa>
{
  public static void a(oa paramoa, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.a(paramParcel, 1, bx, false);
    b.c(paramParcel, 1000, bw);
    b.H(paramParcel, paramInt);
  }
  
  public oa a(Parcel paramParcel)
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
        str = a.o(paramParcel, k);
        break;
      case 1000: 
        i = a.g(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new oa(i, str);
  }
  
  public oa[] a(int paramInt)
  {
    return new oa[paramInt];
  }
}

/* Location:
 * Qualified Name:     jz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
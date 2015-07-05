import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.nq;
import com.google.android.gms.internal.oa;
import java.util.ArrayList;

public class jx
  implements Parcelable.Creator<nq>
{
  public static void a(nq paramnq, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.a(paramParcel, 1, paramnq.a());
    b.c(paramParcel, 1000, a);
    b.c(paramParcel, 2, c, false);
    b.H(paramParcel, paramInt);
  }
  
  public nq a(Parcel paramParcel)
  {
    boolean bool = false;
    int j = a.G(paramParcel);
    ArrayList localArrayList = null;
    int i = 0;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.F(paramParcel);
      switch (a.aH(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        bool = a.c(paramParcel, k);
        break;
      case 1000: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        localArrayList = a.c(paramParcel, k, oa.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new nq(i, bool, localArrayList);
  }
  
  public nq[] a(int paramInt)
  {
    return new nq[paramInt];
  }
}

/* Location:
 * Qualified Name:     jx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
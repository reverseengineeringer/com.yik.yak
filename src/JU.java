import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.nd;
import com.google.android.gms.internal.nl;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

public class ju
  implements Parcelable.Creator<nl>
{
  public static void a(nl paramnl, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.a(paramParcel, 1, b, paramInt, false);
    b.c(paramParcel, 1000, paramnl.a());
    b.a(paramParcel, 2, c);
    b.a(paramParcel, 3, d);
    b.a(paramParcel, 4, e);
    b.c(paramParcel, 5, f, false);
    b.a(paramParcel, 6, g, false);
    b.H(paramParcel, i);
  }
  
  public nl a(Parcel paramParcel)
  {
    String str = null;
    boolean bool1 = true;
    boolean bool3 = false;
    int j = a.G(paramParcel);
    Object localObject = nl.a;
    boolean bool2 = true;
    LocationRequest localLocationRequest = null;
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
        localLocationRequest = (LocationRequest)a.a(paramParcel, k, LocationRequest.CREATOR);
        break;
      case 1000: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        bool3 = a.c(paramParcel, k);
        break;
      case 3: 
        bool2 = a.c(paramParcel, k);
        break;
      case 4: 
        bool1 = a.c(paramParcel, k);
        break;
      case 5: 
        localObject = a.c(paramParcel, k, nd.CREATOR);
        break;
      case 6: 
        str = a.o(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new nl(i, localLocationRequest, bool3, bool2, bool1, (List)localObject, str);
  }
  
  public nl[] a(int paramInt)
  {
    return new nl[paramInt];
  }
}

/* Location:
 * Qualified Name:     ju
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
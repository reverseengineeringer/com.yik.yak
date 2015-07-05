import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.model.CameraPosition;

public class kF
  implements Parcelable.Creator<GoogleMapOptions>
{
  public static void a(GoogleMapOptions paramGoogleMapOptions, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, paramGoogleMapOptions.a());
    b.a(paramParcel, 2, paramGoogleMapOptions.b());
    b.a(paramParcel, 3, paramGoogleMapOptions.c());
    b.c(paramParcel, 4, paramGoogleMapOptions.l());
    b.a(paramParcel, 5, paramGoogleMapOptions.m(), paramInt, false);
    b.a(paramParcel, 6, paramGoogleMapOptions.d());
    b.a(paramParcel, 7, paramGoogleMapOptions.e());
    b.a(paramParcel, 8, paramGoogleMapOptions.f());
    b.a(paramParcel, 9, paramGoogleMapOptions.g());
    b.a(paramParcel, 10, paramGoogleMapOptions.h());
    b.a(paramParcel, 11, paramGoogleMapOptions.i());
    b.a(paramParcel, 12, paramGoogleMapOptions.j());
    b.a(paramParcel, 14, paramGoogleMapOptions.k());
    b.H(paramParcel, i);
  }
  
  public GoogleMapOptions a(Parcel paramParcel)
  {
    int k = a.G(paramParcel);
    int j = 0;
    byte b10 = 0;
    byte b9 = 0;
    int i = 0;
    CameraPosition localCameraPosition = null;
    byte b8 = 0;
    byte b7 = 0;
    byte b6 = 0;
    byte b5 = 0;
    byte b4 = 0;
    byte b3 = 0;
    byte b2 = 0;
    byte b1 = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.F(paramParcel);
      switch (a.aH(m))
      {
      case 13: 
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        j = a.g(paramParcel, m);
        break;
      case 2: 
        b10 = a.e(paramParcel, m);
        break;
      case 3: 
        b9 = a.e(paramParcel, m);
        break;
      case 4: 
        i = a.g(paramParcel, m);
        break;
      case 5: 
        localCameraPosition = (CameraPosition)a.a(paramParcel, m, CameraPosition.CREATOR);
        break;
      case 6: 
        b8 = a.e(paramParcel, m);
        break;
      case 7: 
        b7 = a.e(paramParcel, m);
        break;
      case 8: 
        b6 = a.e(paramParcel, m);
        break;
      case 9: 
        b5 = a.e(paramParcel, m);
        break;
      case 10: 
        b4 = a.e(paramParcel, m);
        break;
      case 11: 
        b3 = a.e(paramParcel, m);
        break;
      case 12: 
        b2 = a.e(paramParcel, m);
        break;
      case 14: 
        b1 = a.e(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new GoogleMapOptions(j, b10, b9, i, localCameraPosition, b8, b7, b6, b5, b4, b3, b2, b1);
  }
  
  public GoogleMapOptions[] a(int paramInt)
  {
    return new GoogleMapOptions[paramInt];
  }
}

/* Location:
 * Qualified Name:     kF
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
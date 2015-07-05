import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class mY
  implements Parcelable.Creator<com.google.android.gms.maps.model.internal.a>
{
  public static void a(com.google.android.gms.maps.model.internal.a parama, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, parama.a());
    b.a(paramParcel, 2, parama.b());
    b.a(paramParcel, 3, parama.c(), false);
    b.a(paramParcel, 4, parama.d(), paramInt, false);
    b.H(paramParcel, i);
  }
  
  public com.google.android.gms.maps.model.internal.a a(Parcel paramParcel)
  {
    Bitmap localBitmap = null;
    byte b = 0;
    int j = com.google.android.gms.common.internal.safeparcel.a.G(paramParcel);
    Bundle localBundle = null;
    int i = 0;
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
        b = com.google.android.gms.common.internal.safeparcel.a.e(paramParcel, k);
        break;
      case 3: 
        localBundle = com.google.android.gms.common.internal.safeparcel.a.q(paramParcel, k);
        break;
      case 4: 
        localBitmap = (Bitmap)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, k, Bitmap.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new com.google.android.gms.maps.model.internal.a(i, b, localBundle, localBitmap);
  }
  
  public com.google.android.gms.maps.model.internal.a[] a(int paramInt)
  {
    return new com.google.android.gms.maps.model.internal.a[paramInt];
  }
}

/* Location:
 * Qualified Name:     mY
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
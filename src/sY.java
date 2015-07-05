import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.mixpanel.android.mpmetrics.InAppNotification;

public final class sy
  implements Parcelable.Creator<InAppNotification>
{
  public InAppNotification a(Parcel paramParcel)
  {
    return new InAppNotification(paramParcel);
  }
  
  public InAppNotification[] a(int paramInt)
  {
    return new InAppNotification[paramInt];
  }
}

/* Location:
 * Qualified Name:     sy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
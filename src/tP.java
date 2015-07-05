import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState;
import com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState.InAppNotificationState;
import com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState.SurveyState;

public final class tp
  implements Parcelable.Creator<UpdateDisplayState.DisplayState>
{
  public UpdateDisplayState.DisplayState a(Parcel paramParcel)
  {
    Bundle localBundle = new Bundle(UpdateDisplayState.DisplayState.class.getClassLoader());
    localBundle.readFromParcel(paramParcel);
    paramParcel = localBundle.getString("com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState.STATE_TYPE_KEY");
    localBundle = localBundle.getBundle("com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState.STATE_IMPL_KEY");
    if ("InAppNotificationState".equals(paramParcel)) {
      return new UpdateDisplayState.DisplayState.InAppNotificationState(localBundle, null);
    }
    if ("SurveyState".equals(paramParcel)) {
      return new UpdateDisplayState.DisplayState.SurveyState(localBundle, null);
    }
    throw new RuntimeException("Unrecognized display state type " + paramParcel);
  }
  
  public UpdateDisplayState.DisplayState[] a(int paramInt)
  {
    return new UpdateDisplayState.DisplayState[paramInt];
  }
}

/* Location:
 * Qualified Name:     tp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
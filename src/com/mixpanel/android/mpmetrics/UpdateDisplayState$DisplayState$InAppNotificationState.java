package com.mixpanel.android.mpmetrics;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import tq;

public final class UpdateDisplayState$DisplayState$InAppNotificationState
  extends UpdateDisplayState.DisplayState
{
  public static final Parcelable.Creator<InAppNotificationState> CREATOR = new tq();
  private static String c = "com.com.mixpanel.android.mpmetrics.UpdateDisplayState.InAppNotificationState.INAPP_KEY";
  private static String d = "com.com.mixpanel.android.mpmetrics.UpdateDisplayState.InAppNotificationState.HIGHLIGHT_KEY";
  private final InAppNotification a;
  private final int b;
  
  private UpdateDisplayState$DisplayState$InAppNotificationState(Bundle paramBundle)
  {
    super(null);
    a = ((InAppNotification)paramBundle.getParcelable(c));
    b = paramBundle.getInt(d);
  }
  
  public UpdateDisplayState$DisplayState$InAppNotificationState(InAppNotification paramInAppNotification, int paramInt)
  {
    super(null);
    a = paramInAppNotification;
    b = paramInt;
  }
  
  public String a()
  {
    return "InAppNotificationState";
  }
  
  public int b()
  {
    return b;
  }
  
  public InAppNotification c()
  {
    return a;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable(c, a);
    localBundle.putInt(d, b);
    paramParcel.writeBundle(localBundle);
  }
}

/* Location:
 * Qualified Name:     com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState.InAppNotificationState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
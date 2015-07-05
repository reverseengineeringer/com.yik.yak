package com.facebook.widget;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.UUID;

public class FacebookDialog$PendingCall
  implements Parcelable
{
  public static final Parcelable.Creator<PendingCall> CREATOR = new FacebookDialog.PendingCall.1();
  private UUID callId;
  private int requestCode;
  private Intent requestIntent;
  
  public FacebookDialog$PendingCall(int paramInt)
  {
    callId = UUID.randomUUID();
    requestCode = paramInt;
  }
  
  private FacebookDialog$PendingCall(Parcel paramParcel)
  {
    callId = UUID.fromString(paramParcel.readString());
    requestIntent = ((Intent)paramParcel.readParcelable(null));
    requestCode = paramParcel.readInt();
  }
  
  private void setRequestCode(int paramInt)
  {
    requestCode = paramInt;
  }
  
  private void setRequestIntent(Intent paramIntent)
  {
    requestIntent = paramIntent;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public UUID getCallId()
  {
    return callId;
  }
  
  public int getRequestCode()
  {
    return requestCode;
  }
  
  public Intent getRequestIntent()
  {
    return requestIntent;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(callId.toString());
    paramParcel.writeParcelable(requestIntent, 0);
    paramParcel.writeInt(requestCode);
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.FacebookDialog.PendingCall
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import ix;
import iz;

public final class Status
  implements Result, SafeParcelable
{
  public static final StatusCreator CREATOR = new StatusCreator();
  public static final Status KA;
  public static final Status Kw = new Status(0);
  public static final Status Kx = new Status(14);
  public static final Status Ky = new Status(8);
  public static final Status Kz = new Status(15);
  private final int CK;
  private final int Iv;
  private final String KB;
  private final PendingIntent mPendingIntent;
  
  static
  {
    KA = new Status(16);
  }
  
  public Status(int paramInt)
  {
    this(paramInt, null);
  }
  
  Status(int paramInt1, int paramInt2, String paramString, PendingIntent paramPendingIntent)
  {
    CK = paramInt1;
    Iv = paramInt2;
    KB = paramString;
    mPendingIntent = paramPendingIntent;
  }
  
  public Status(int paramInt, String paramString)
  {
    this(1, paramInt, paramString, null);
  }
  
  public Status(int paramInt, String paramString, PendingIntent paramPendingIntent)
  {
    this(1, paramInt, paramString, paramPendingIntent);
  }
  
  private String gt()
  {
    if (KB != null) {
      return KB;
    }
    return CommonStatusCodes.getStatusCodeString(Iv);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Status)) {}
    do
    {
      return false;
      paramObject = (Status)paramObject;
    } while ((CK != CK) || (Iv != Iv) || (!ix.a(KB, KB)) || (!ix.a(mPendingIntent, mPendingIntent)));
    return true;
  }
  
  PendingIntent gP()
  {
    return mPendingIntent;
  }
  
  @Deprecated
  public ConnectionResult gQ()
  {
    return new ConnectionResult(Iv, mPendingIntent);
  }
  
  public PendingIntent getResolution()
  {
    return mPendingIntent;
  }
  
  public Status getStatus()
  {
    return this;
  }
  
  public int getStatusCode()
  {
    return Iv;
  }
  
  public String getStatusMessage()
  {
    return KB;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public boolean hasResolution()
  {
    return mPendingIntent != null;
  }
  
  public int hashCode()
  {
    return ix.a(new Object[] { Integer.valueOf(CK), Integer.valueOf(Iv), KB, mPendingIntent });
  }
  
  public boolean isCanceled()
  {
    return Iv == 16;
  }
  
  public boolean isInterrupted()
  {
    return Iv == 14;
  }
  
  public boolean isSuccess()
  {
    return Iv <= 0;
  }
  
  public void startResolutionForResult(Activity paramActivity, int paramInt)
  {
    if (!hasResolution()) {
      return;
    }
    paramActivity.startIntentSenderForResult(mPendingIntent.getIntentSender(), paramInt, null, 0, 0, 0);
  }
  
  public String toString()
  {
    return ix.a(this).a("statusCode", gt()).a("resolution", mPendingIntent).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    StatusCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Status
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
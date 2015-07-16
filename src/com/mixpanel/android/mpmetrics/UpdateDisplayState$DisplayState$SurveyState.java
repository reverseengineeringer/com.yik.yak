package com.mixpanel.android.mpmetrics;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import tx;

public final class UpdateDisplayState$DisplayState$SurveyState
  extends UpdateDisplayState.DisplayState
{
  public static final Parcelable.Creator<SurveyState> CREATOR = new tx();
  private final Survey a;
  private final UpdateDisplayState.AnswerMap b;
  private Bitmap c;
  private int d;
  
  private UpdateDisplayState$DisplayState$SurveyState(Bundle paramBundle)
  {
    super(null);
    d = paramBundle.getInt("com.mixpanel.android.mpmetrics.UpdateDisplayState.HIGHLIGHT_COLOR_BUNDLE_KEY");
    b = ((UpdateDisplayState.AnswerMap)paramBundle.getParcelable("com.mixpanel.android.mpmetrics.UpdateDisplayState.ANSWERS_BUNDLE_KEY"));
    byte[] arrayOfByte = paramBundle.getByteArray("com.mixpanel.android.mpmetrics.UpdateDisplayState.BACKGROUND_COMPRESSED_BUNDLE_KEY");
    if (arrayOfByte != null) {}
    for (c = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);; c = null)
    {
      a = ((Survey)paramBundle.getParcelable("com.mixpanel.android.mpmetrics.UpdateDisplayState.SURVEY_BUNDLE_KEY"));
      return;
    }
  }
  
  public UpdateDisplayState$DisplayState$SurveyState(Survey paramSurvey)
  {
    super(null);
    a = paramSurvey;
    b = new UpdateDisplayState.AnswerMap();
    d = -16777216;
    c = null;
  }
  
  public String a()
  {
    return "SurveyState";
  }
  
  public void a(int paramInt)
  {
    d = paramInt;
  }
  
  public void a(Bitmap paramBitmap)
  {
    c = paramBitmap;
  }
  
  public Bitmap b()
  {
    return c;
  }
  
  public UpdateDisplayState.AnswerMap c()
  {
    return b;
  }
  
  public Survey d()
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
    localBundle.putInt("com.mixpanel.android.mpmetrics.UpdateDisplayState.HIGHLIGHT_COLOR_BUNDLE_KEY", d);
    localBundle.putParcelable("com.mixpanel.android.mpmetrics.UpdateDisplayState.ANSWERS_BUNDLE_KEY", b);
    Object localObject = null;
    if (c != null)
    {
      localObject = new ByteArrayOutputStream();
      c.compress(Bitmap.CompressFormat.PNG, 20, (OutputStream)localObject);
      localObject = ((ByteArrayOutputStream)localObject).toByteArray();
    }
    localBundle.putByteArray("com.mixpanel.android.mpmetrics.UpdateDisplayState.BACKGROUND_COMPRESSED_BUNDLE_KEY", (byte[])localObject);
    localBundle.putParcelable("com.mixpanel.android.mpmetrics.UpdateDisplayState.SURVEY_BUNDLE_KEY", a);
    paramParcel.writeBundle(localBundle);
  }
}

/* Location:
 * Qualified Name:     com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState.SurveyState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
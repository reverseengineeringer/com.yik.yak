package com.mixpanel.android.mpmetrics;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import si;
import tf;
import tg;

public class Survey
  implements Parcelable
{
  public static Parcelable.Creator<Survey> CREATOR = new tf();
  private final JSONObject a;
  private final int b;
  private final int c;
  private final List<tg> d;
  
  public Survey(JSONObject paramJSONObject)
  {
    try
    {
      a = paramJSONObject;
      b = paramJSONObject.getInt("id");
      c = paramJSONObject.getJSONArray("collections").getJSONObject(0).getInt("id");
      paramJSONObject = paramJSONObject.getJSONArray("questions");
      if (paramJSONObject.length() == 0) {
        throw new si("Survey has no questions.");
      }
    }
    catch (JSONException paramJSONObject)
    {
      throw new si("Survey JSON was unexpected or bad", paramJSONObject);
    }
    ArrayList localArrayList = new ArrayList(paramJSONObject.length());
    while (i < paramJSONObject.length())
    {
      localArrayList.add(new tg(this, paramJSONObject.getJSONObject(i), null));
      i += 1;
    }
    d = Collections.unmodifiableList(localArrayList);
  }
  
  String a()
  {
    return a.toString();
  }
  
  public int b()
  {
    return b;
  }
  
  public int c()
  {
    return c;
  }
  
  public List<tg> d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a());
  }
}

/* Location:
 * Qualified Name:     com.mixpanel.android.mpmetrics.Survey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
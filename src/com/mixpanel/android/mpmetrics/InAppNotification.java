package com.mixpanel.android.mpmetrics;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import si;
import sy;
import sz;

public class InAppNotification
  implements Parcelable
{
  public static final Parcelable.Creator<InAppNotification> CREATOR = new sy();
  private static final Pattern k = Pattern.compile("(\\.[^./]+$)");
  private Bitmap a;
  private final JSONObject b;
  private final int c;
  private final int d;
  private final String e;
  private final String f;
  private final String g;
  private final String h;
  private final String i;
  private final String j;
  
  public InAppNotification(Parcel paramParcel)
  {
    Object localObject = new JSONObject();
    try
    {
      JSONObject localJSONObject = new JSONObject(paramParcel.readString());
      localObject = localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
    b = ((JSONObject)localObject);
    c = paramParcel.readInt();
    d = paramParcel.readInt();
    e = paramParcel.readString();
    f = paramParcel.readString();
    g = paramParcel.readString();
    h = paramParcel.readString();
    i = paramParcel.readString();
    j = paramParcel.readString();
    a = ((Bitmap)paramParcel.readParcelable(Bitmap.class.getClassLoader()));
  }
  
  public InAppNotification(JSONObject paramJSONObject)
  {
    try
    {
      b = paramJSONObject;
      c = paramJSONObject.getInt("id");
      d = paramJSONObject.getInt("message_id");
      e = paramJSONObject.getString("type");
      f = paramJSONObject.getString("title");
      g = paramJSONObject.getString("body");
      h = paramJSONObject.getString("image_url");
      a = Bitmap.createBitmap(500, 500, Bitmap.Config.ARGB_8888);
      i = paramJSONObject.getString("cta");
      j = paramJSONObject.getString("cta_url");
      return;
    }
    catch (JSONException paramJSONObject)
    {
      throw new si("Notification JSON was unexpected or bad", paramJSONObject);
    }
  }
  
  static String a(String paramString1, String paramString2)
  {
    Matcher localMatcher = k.matcher(paramString1);
    if (localMatcher.find()) {
      paramString1 = localMatcher.replaceFirst(paramString2 + "$1");
    }
    return paramString1;
  }
  
  public JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("campaign_id", b());
      localJSONObject.put("message_id", c());
      localJSONObject.put("message_type", "inapp");
      localJSONObject.put("message_subtype", e);
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
  
  public void a(Bitmap paramBitmap)
  {
    a = paramBitmap;
  }
  
  public int b()
  {
    return c;
  }
  
  public int c()
  {
    return d;
  }
  
  public sz d()
  {
    if (sz.b.toString().equals(e)) {
      return sz.b;
    }
    if (sz.c.toString().equals(e)) {
      return sz.c;
    }
    return sz.a;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return f;
  }
  
  public String f()
  {
    return g;
  }
  
  public String g()
  {
    return a(h, "@2x");
  }
  
  public String h()
  {
    return a(h, "@4x");
  }
  
  public String i()
  {
    return i;
  }
  
  public String j()
  {
    return j;
  }
  
  public Bitmap k()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(b.toString());
    paramParcel.writeInt(c);
    paramParcel.writeInt(d);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeString(h);
    paramParcel.writeString(i);
    paramParcel.writeString(j);
    paramParcel.writeParcelable(a, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.mixpanel.android.mpmetrics.InAppNotification
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
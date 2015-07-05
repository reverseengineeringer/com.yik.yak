package com.parse;

import android.app.Activity;
import android.content.Context;
import org.json.JSONObject;

public final class PushRoutes$Route
{
  private final String activityClassName;
  private final int iconId;
  
  public PushRoutes$Route(String paramString, int paramInt)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("activityClassName can't be null");
    }
    if (paramInt == 0) {
      throw new IllegalArgumentException("iconId can't be 0");
    }
    activityClassName = paramString;
    iconId = paramInt;
  }
  
  public static Route newFromJSON(JSONObject paramJSONObject)
  {
    int i = 0;
    Object localObject2 = null;
    Object localObject1;
    if (paramJSONObject != null)
    {
      localObject1 = paramJSONObject.optJSONObject("data");
      if (localObject1 != null)
      {
        paramJSONObject = ((JSONObject)localObject1).optString("activityClass", null);
        i = ((JSONObject)localObject1).optInt("icon", 0);
      }
    }
    for (;;)
    {
      localObject1 = localObject2;
      if (paramJSONObject != null)
      {
        localObject1 = localObject2;
        if (i != 0) {
          localObject1 = new Route(paramJSONObject, i);
        }
      }
      return (Route)localObject1;
      paramJSONObject = null;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject != null)
    {
      bool1 = bool2;
      if ((paramObject instanceof Route))
      {
        paramObject = (Route)paramObject;
        bool1 = bool2;
        if (activityClassName.equals(activityClassName))
        {
          bool1 = bool2;
          if (iconId == iconId) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public Class<? extends Activity> getActivityClass()
  {
    Object localObject3 = null;
    try
    {
      Object localObject1 = Class.forName(activityClassName);
      if ((localObject1 != null) && (!Activity.class.isAssignableFrom((Class)localObject1)))
      {
        localObject1 = localObject3;
        if (localObject1 == null) {
          Parse.logE("com.parse.PushRoutes", "Activity class " + activityClassName + " registered to handle push no " + "longer exists. Call PushService.subscribe with an activity class that does exist.");
        }
        return (Class<? extends Activity>)localObject1;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        Object localObject2 = null;
      }
    }
  }
  
  public int getIconId()
  {
    return iconId;
  }
  
  public int hashCode()
  {
    return (activityClassName.hashCode() + 31) * 31 + iconId;
  }
  
  public JSONObject toJSON()
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    localJSONObject2.put("appName", ManifestInfo.getDisplayName());
    localJSONObject2.put("activityPackage", Parse.applicationContext.getPackageName());
    localJSONObject2.put("activityClass", activityClassName);
    localJSONObject2.put("icon", iconId);
    localJSONObject1.put("data", localJSONObject2);
    localJSONObject1.put("name", "com.parse.StandardPushCallback");
    return localJSONObject1;
  }
  
  public String toString()
  {
    return super.toString() + " (activityClassName: " + activityClassName + " iconId: " + iconId + ")";
  }
}

/* Location:
 * Qualified Name:     com.parse.PushRoutes.Route
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
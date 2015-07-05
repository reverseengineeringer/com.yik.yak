package com.facebook;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

class AppEventsLogger$AppEvent
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private static final HashSet<String> validatedIdentifiers = new HashSet();
  private boolean isImplicit;
  private JSONObject jsonObject;
  private String name;
  
  public AppEventsLogger$AppEvent(Context paramContext, String paramString, Double paramDouble, Bundle paramBundle, boolean paramBoolean)
  {
    try
    {
      validateIdentifier(paramString);
      name = paramString;
      isImplicit = paramBoolean;
      jsonObject = new JSONObject();
      jsonObject.put("_eventName", paramString);
      jsonObject.put("_logTime", System.currentTimeMillis() / 1000L);
      jsonObject.put("_ui", Utility.getActivityName(paramContext));
      if (paramDouble != null) {
        jsonObject.put("_valueToSum", paramDouble.doubleValue());
      }
      if (isImplicit) {
        jsonObject.put("_implicitlyLogged", "1");
      }
      paramContext = Settings.getAppVersion();
      if (paramContext != null) {
        jsonObject.put("_appVersion", paramContext);
      }
      if (paramBundle == null) {
        break label287;
      }
      paramContext = paramBundle.keySet().iterator();
    }
    catch (JSONException paramContext)
    {
      for (;;)
      {
        Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", new Object[] { paramContext.toString() });
        jsonObject = null;
        return;
        jsonObject.put(paramString, paramDouble.toString());
      }
    }
    catch (FacebookException paramContext)
    {
      Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "Invalid app event name or parameter:", new Object[] { paramContext.toString() });
      jsonObject = null;
      return;
    }
    if (paramContext.hasNext())
    {
      paramString = (String)paramContext.next();
      validateIdentifier(paramString);
      paramDouble = paramBundle.get(paramString);
      if ((!(paramDouble instanceof String)) && (!(paramDouble instanceof Number))) {
        throw new FacebookException(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", new Object[] { paramDouble, paramString }));
      }
    }
    label287:
    while (isImplicit) {}
    Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "Created app event '%s'", new Object[] { jsonObject.toString() });
  }
  
  private AppEventsLogger$AppEvent(String paramString, boolean paramBoolean)
  {
    jsonObject = new JSONObject(paramString);
    isImplicit = paramBoolean;
  }
  
  private void validateIdentifier(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0) || (paramString.length() > 40))
    {
      ??? = paramString;
      if (paramString == null) {
        ??? = "<None Provided>";
      }
      throw new FacebookException(String.format("Identifier '%s' must be less than %d characters", new Object[] { ???, Integer.valueOf(40) }));
    }
    synchronized (validatedIdentifiers)
    {
      boolean bool = validatedIdentifiers.contains(paramString);
      if (!bool) {
        if (!paramString.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$")) {
          break label114;
        }
      }
    }
    synchronized (validatedIdentifiers)
    {
      validatedIdentifiers.add(paramString);
      return;
      paramString = finally;
      throw paramString;
    }
    label114:
    throw new FacebookException(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", new Object[] { paramString }));
  }
  
  private Object writeReplace()
  {
    return new AppEventsLogger.AppEvent.SerializationProxyV1(jsonObject.toString(), isImplicit, null);
  }
  
  public boolean getIsImplicit()
  {
    return isImplicit;
  }
  
  public JSONObject getJSONObject()
  {
    return jsonObject;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String toString()
  {
    return String.format("\"%s\", implicit: %b, json: %s", new Object[] { jsonObject.optString("_eventName"), Boolean.valueOf(isImplicit), jsonObject.toString() });
  }
}

/* Location:
 * Qualified Name:     com.facebook.AppEventsLogger.AppEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
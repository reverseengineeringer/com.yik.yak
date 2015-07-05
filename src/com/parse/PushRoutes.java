package com.parse;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

class PushRoutes
{
  private static final Pattern CHANNEL_PATTERN = Pattern.compile("^$|^[a-zA-Z][A-Za-z0-9_-]*$");
  private static final String TAG = "com.parse.PushRoutes";
  private final HashMap<String, PushRoutes.Route> channels = new HashMap();
  
  public PushRoutes(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null)
    {
      JSONObject localJSONObject = paramJSONObject.optJSONObject("routes");
      if (localJSONObject != null)
      {
        Iterator localIterator = localJSONObject.keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          PushRoutes.Route localRoute = PushRoutes.Route.newFromJSON(localJSONObject.optJSONObject(str));
          if ((str != null) && (localRoute != null)) {
            put(str, localRoute);
          }
        }
      }
      paramJSONObject = paramJSONObject.optJSONObject("defaultRoute");
      if (paramJSONObject != null)
      {
        paramJSONObject = PushRoutes.Route.newFromJSON(paramJSONObject);
        if (paramJSONObject != null) {
          put(null, paramJSONObject);
        }
      }
    }
  }
  
  public static boolean isValidChannelName(String paramString)
  {
    try
    {
      boolean bool = CHANNEL_PATTERN.matcher(paramString).matches();
      return bool;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public PushRoutes.Route get(String paramString)
  {
    return (PushRoutes.Route)channels.get(paramString);
  }
  
  public Set<String> getChannels()
  {
    return Collections.unmodifiableSet(channels.keySet());
  }
  
  public PushRoutes.Route put(String paramString, PushRoutes.Route paramRoute)
  {
    if (paramRoute == null) {
      throw new IllegalArgumentException("Can't insert null route");
    }
    if ((paramString != null) && (!isValidChannelName(paramString))) {
      throw new IllegalArgumentException("invalid channel name: " + paramString);
    }
    return (PushRoutes.Route)channels.put(paramString, paramRoute);
  }
  
  public PushRoutes.Route remove(String paramString)
  {
    return (PushRoutes.Route)channels.remove(paramString);
  }
  
  public JSONObject toJSON()
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    Iterator localIterator = channels.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = (PushRoutes.Route)((Map.Entry)localObject).getValue();
      if (str == null) {
        localJSONObject1.put("defaultRoute", ((PushRoutes.Route)localObject).toJSON());
      } else {
        localJSONObject2.put(str, ((PushRoutes.Route)localObject).toJSON());
      }
    }
    localJSONObject1.put("routes", localJSONObject2);
    return localJSONObject1;
  }
}

/* Location:
 * Qualified Name:     com.parse.PushRoutes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
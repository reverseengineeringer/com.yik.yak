package com.parse;

import N;
import android.content.Context;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ParseConfig
{
  static final String CURRENT_CONFIG_FILENAME = "currentConfig";
  private static ParseConfig currentConfig;
  private static final Object currentConfigMutex = new Object();
  private static final TaskQueue taskQueue = new TaskQueue();
  private final Map<String, Object> params;
  
  ParseConfig()
  {
    params = Collections.unmodifiableMap(new HashMap());
  }
  
  ParseConfig(JSONObject paramJSONObject, ParseDecoder paramParseDecoder)
  {
    paramJSONObject = (Map)((Map)paramParseDecoder.decode(paramJSONObject)).get("params");
    if (paramJSONObject == null) {
      throw new RuntimeException("Object did not contain the 'params' key.");
    }
    params = Collections.unmodifiableMap(paramJSONObject);
  }
  
  static void clearCurrentConfigForTesting()
  {
    synchronized (currentConfigMutex)
    {
      currentConfig = null;
      return;
    }
  }
  
  public static ParseConfig get()
  {
    return (ParseConfig)Parse.waitForTask(getInBackground());
  }
  
  private static N<ParseConfig> getAsync(N<Void> paramN)
  {
    ParseCommand localParseCommand = new ParseCommand("client_config", ParseUser.getCurrentSessionToken());
    localParseCommand.enableRetrying();
    return paramN.b(new ParseConfig.3(localParseCommand)).c(new ParseConfig.2(), N.a);
  }
  
  public static ParseConfig getCurrentConfig()
  {
    if (currentConfig == null) {}
    synchronized (currentConfigMutex)
    {
      ParseConfig localParseConfig = getFromDisk(Parse.applicationContext, "currentConfig");
      if (localParseConfig != null)
      {
        currentConfig = localParseConfig;
        return currentConfig;
      }
      localParseConfig = new ParseConfig();
    }
  }
  
  private static ParseConfig getFromDisk(Context paramContext, String paramString)
  {
    paramContext = Parse.getDiskObject(paramContext, paramString);
    if (paramContext == null) {
      return null;
    }
    try
    {
      paramContext = new ParseConfig(paramContext, new ParseDecoder());
      return paramContext;
    }
    catch (JSONException paramContext) {}
    return null;
  }
  
  public static N<ParseConfig> getInBackground()
  {
    return taskQueue.enqueue(new ParseConfig.1());
  }
  
  public static void getInBackground(ConfigCallback paramConfigCallback)
  {
    Parse.callbackOnMainThreadAsync(getInBackground(), paramConfigCallback);
  }
  
  private void saveToDisk(Context paramContext, String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("params", (JSONObject)Parse.encode(params, PointerEncodingStrategy.get()));
      Parse.saveDiskObject(paramContext, paramString, localJSONObject);
      return;
    }
    catch (JSONException paramContext)
    {
      throw new RuntimeException("could not serialize config to JSON");
    }
  }
  
  public Object get(String paramString)
  {
    return get(paramString, null);
  }
  
  public Object get(String paramString, Object paramObject)
  {
    if (!params.containsKey(paramString)) {
      return paramObject;
    }
    if (params.get(paramString) == JSONObject.NULL) {
      return null;
    }
    return params.get(paramString);
  }
  
  public boolean getBoolean(String paramString)
  {
    return getBoolean(paramString, false);
  }
  
  public boolean getBoolean(String paramString, boolean paramBoolean)
  {
    if (!params.containsKey(paramString)) {}
    do
    {
      return paramBoolean;
      paramString = params.get(paramString);
    } while (!(paramString instanceof Boolean));
    return ((Boolean)paramString).booleanValue();
  }
  
  public Date getDate(String paramString)
  {
    return getDate(paramString, null);
  }
  
  public Date getDate(String paramString, Date paramDate)
  {
    if (!params.containsKey(paramString)) {
      return paramDate;
    }
    paramString = params.get(paramString);
    if ((paramString == null) || (paramString == JSONObject.NULL)) {
      return null;
    }
    if ((paramString instanceof Date)) {}
    for (paramString = (Date)paramString;; paramString = paramDate) {
      return paramString;
    }
  }
  
  public double getDouble(String paramString)
  {
    return getDouble(paramString, 0.0D);
  }
  
  public double getDouble(String paramString, double paramDouble)
  {
    paramString = getNumber(paramString);
    if (paramString != null) {
      paramDouble = paramString.doubleValue();
    }
    return paramDouble;
  }
  
  public int getInt(String paramString)
  {
    return getInt(paramString, 0);
  }
  
  public int getInt(String paramString, int paramInt)
  {
    paramString = getNumber(paramString);
    if (paramString != null) {
      paramInt = paramString.intValue();
    }
    return paramInt;
  }
  
  public JSONArray getJSONArray(String paramString)
  {
    return getJSONArray(paramString, null);
  }
  
  public JSONArray getJSONArray(String paramString, JSONArray paramJSONArray)
  {
    paramString = getList(paramString);
    if (paramString != null) {}
    for (paramString = Parse.encode(paramString, PointerEncodingStrategy.get());; paramString = null)
    {
      if ((paramString == null) || ((paramString instanceof JSONArray))) {
        paramJSONArray = (JSONArray)paramString;
      }
      return paramJSONArray;
    }
  }
  
  public JSONObject getJSONObject(String paramString)
  {
    return getJSONObject(paramString, null);
  }
  
  public JSONObject getJSONObject(String paramString, JSONObject paramJSONObject)
  {
    paramString = getMap(paramString);
    if (paramString != null) {}
    for (paramString = Parse.encode(paramString, PointerEncodingStrategy.get());; paramString = null)
    {
      if ((paramString == null) || ((paramString instanceof JSONObject))) {
        paramJSONObject = (JSONObject)paramString;
      }
      return paramJSONObject;
    }
  }
  
  public <T> List<T> getList(String paramString)
  {
    return getList(paramString, null);
  }
  
  public <T> List<T> getList(String paramString, List<T> paramList)
  {
    if (!params.containsKey(paramString)) {
      return paramList;
    }
    paramString = params.get(paramString);
    if ((paramString == null) || (paramString == JSONObject.NULL)) {
      return null;
    }
    if ((paramString instanceof List)) {}
    for (paramString = (List)paramString;; paramString = paramList) {
      return paramString;
    }
  }
  
  public long getLong(String paramString)
  {
    return getLong(paramString, 0L);
  }
  
  public long getLong(String paramString, long paramLong)
  {
    paramString = getNumber(paramString);
    if (paramString != null) {
      paramLong = paramString.longValue();
    }
    return paramLong;
  }
  
  public <V> Map<String, V> getMap(String paramString)
  {
    return getMap(paramString, null);
  }
  
  public <V> Map<String, V> getMap(String paramString, Map<String, V> paramMap)
  {
    if (!params.containsKey(paramString)) {
      return paramMap;
    }
    paramString = params.get(paramString);
    if ((paramString == null) || (paramString == JSONObject.NULL)) {
      return null;
    }
    if ((paramString instanceof Map)) {}
    for (paramString = (Map)paramString;; paramString = paramMap) {
      return paramString;
    }
  }
  
  public Number getNumber(String paramString)
  {
    return getNumber(paramString, null);
  }
  
  public Number getNumber(String paramString, Number paramNumber)
  {
    if (!params.containsKey(paramString)) {
      return paramNumber;
    }
    paramString = params.get(paramString);
    if ((paramString == null) || (paramString == JSONObject.NULL)) {
      return null;
    }
    if ((paramString instanceof Number)) {}
    for (paramString = (Number)paramString;; paramString = paramNumber) {
      return paramString;
    }
  }
  
  public ParseFile getParseFile(String paramString)
  {
    return getParseFile(paramString, null);
  }
  
  public ParseFile getParseFile(String paramString, ParseFile paramParseFile)
  {
    if (!params.containsKey(paramString)) {
      return paramParseFile;
    }
    paramString = params.get(paramString);
    if ((paramString == null) || (paramString == JSONObject.NULL)) {
      return null;
    }
    if ((paramString instanceof ParseFile)) {}
    for (paramString = (ParseFile)paramString;; paramString = paramParseFile) {
      return paramString;
    }
  }
  
  public ParseGeoPoint getParseGeoPoint(String paramString)
  {
    return getParseGeoPoint(paramString, null);
  }
  
  public ParseGeoPoint getParseGeoPoint(String paramString, ParseGeoPoint paramParseGeoPoint)
  {
    if (!params.containsKey(paramString)) {
      return paramParseGeoPoint;
    }
    paramString = params.get(paramString);
    if ((paramString == null) || (paramString == JSONObject.NULL)) {
      return null;
    }
    if ((paramString instanceof ParseGeoPoint)) {}
    for (paramString = (ParseGeoPoint)paramString;; paramString = paramParseGeoPoint) {
      return paramString;
    }
  }
  
  public String getString(String paramString)
  {
    return getString(paramString, null);
  }
  
  public String getString(String paramString1, String paramString2)
  {
    if (!params.containsKey(paramString1)) {
      return paramString2;
    }
    paramString1 = params.get(paramString1);
    if ((paramString1 == null) || (paramString1 == JSONObject.NULL)) {
      return null;
    }
    if ((paramString1 instanceof String)) {}
    for (paramString1 = (String)paramString1;; paramString1 = paramString2) {
      return paramString1;
    }
  }
  
  public String toString()
  {
    return "ParseConfig[" + params.toString() + "]";
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
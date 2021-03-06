package com.parse;

import com.parse.codec.binary.Base64;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ParseDecoder
{
  List<Object> convertJSONArrayToList(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      localArrayList.add(decode(paramJSONArray.opt(i)));
      i += 1;
    }
    return localArrayList;
  }
  
  Map<String, Object> convertJSONObjectToMap(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, decode(paramJSONObject.opt(str)));
    }
    return localHashMap;
  }
  
  public Object decode(Object paramObject)
  {
    if ((paramObject instanceof JSONArray)) {
      localObject = convertJSONArrayToList((JSONArray)paramObject);
    }
    do
    {
      return localObject;
      localObject = paramObject;
    } while (!(paramObject instanceof JSONObject));
    paramObject = (JSONObject)paramObject;
    if (((JSONObject)paramObject).optString("__op", null) != null) {
      try
      {
        paramObject = ParseFieldOperations.decode((JSONObject)paramObject, this);
        return paramObject;
      }
      catch (JSONException paramObject)
      {
        throw new RuntimeException((Throwable)paramObject);
      }
    }
    Object localObject = ((JSONObject)paramObject).optString("__type", null);
    if (localObject == null) {
      return convertJSONObjectToMap((JSONObject)paramObject);
    }
    if (((String)localObject).equals("Date")) {
      return Parse.stringToDate(((JSONObject)paramObject).optString("iso"));
    }
    if (((String)localObject).equals("Bytes")) {
      return Base64.decodeBase64(((JSONObject)paramObject).optString("base64"));
    }
    if (((String)localObject).equals("Pointer")) {
      return decodePointer(((JSONObject)paramObject).optString("className"), ((JSONObject)paramObject).optString("objectId"));
    }
    if (((String)localObject).equals("File")) {
      return new ParseFile((JSONObject)paramObject, this);
    }
    if (((String)localObject).equals("GeoPoint")) {
      try
      {
        double d1 = ((JSONObject)paramObject).getDouble("latitude");
        double d2 = ((JSONObject)paramObject).getDouble("longitude");
        return new ParseGeoPoint(d1, d2);
      }
      catch (JSONException paramObject)
      {
        throw new RuntimeException((Throwable)paramObject);
      }
    }
    if (((String)localObject).equals("Object"))
    {
      localObject = new JSONObject();
      try
      {
        ((JSONObject)localObject).put("data", paramObject);
        paramObject = ParseObject.createWithoutData(((JSONObject)paramObject).optString("className", null), ((JSONObject)paramObject).optString("objectId", null));
        ((ParseObject)paramObject).mergeAfterFetch((JSONObject)localObject, this, true);
        return paramObject;
      }
      catch (JSONException paramObject)
      {
        throw new RuntimeException((Throwable)paramObject);
      }
    }
    if (((String)localObject).equals("Relation")) {
      return new ParseRelation((JSONObject)paramObject, this);
    }
    if (((String)localObject).equals("OfflineObject")) {
      throw new RuntimeException("An unexpected offline pointer was encountered.");
    }
    return null;
  }
  
  protected ParseObject decodePointer(String paramString1, String paramString2)
  {
    return ParseObject.createWithoutData(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseDecoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
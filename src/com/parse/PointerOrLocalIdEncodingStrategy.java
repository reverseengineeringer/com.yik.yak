package com.parse;

import org.json.JSONException;
import org.json.JSONObject;

class PointerOrLocalIdEncodingStrategy
  implements ParseObjectEncodingStrategy
{
  private static final PointerOrLocalIdEncodingStrategy instance = new PointerOrLocalIdEncodingStrategy();
  
  public static PointerOrLocalIdEncodingStrategy get()
  {
    return instance;
  }
  
  public JSONObject encodeRelatedObject(ParseObject paramParseObject)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      if (paramParseObject.getObjectId() != null)
      {
        localJSONObject.put("__type", "Pointer");
        localJSONObject.put("className", paramParseObject.getClassName());
        localJSONObject.put("objectId", paramParseObject.getObjectId());
        return localJSONObject;
      }
      localJSONObject.put("__type", "Pointer");
      localJSONObject.put("className", paramParseObject.getClassName());
      localJSONObject.put("localId", paramParseObject.getOrCreateLocalId());
      return localJSONObject;
    }
    catch (JSONException paramParseObject)
    {
      throw new RuntimeException(paramParseObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.PointerOrLocalIdEncodingStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
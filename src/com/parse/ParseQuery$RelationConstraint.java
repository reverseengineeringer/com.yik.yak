package com.parse;

import org.json.JSONException;
import org.json.JSONObject;

class ParseQuery$RelationConstraint
{
  private String key;
  private ParseObject object;
  
  public ParseQuery$RelationConstraint(String paramString, ParseObject paramParseObject)
  {
    if ((paramString == null) || (paramParseObject == null)) {
      throw new IllegalArgumentException("Arguments must not be null.");
    }
    key = paramString;
    object = paramParseObject;
  }
  
  public JSONObject encode(ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("key", key);
      localJSONObject.put("object", paramParseObjectEncodingStrategy.encodeRelatedObject(object));
      return localJSONObject;
    }
    catch (JSONException paramParseObjectEncodingStrategy)
    {
      throw new RuntimeException(paramParseObjectEncodingStrategy);
    }
  }
  
  public String getKey()
  {
    return key;
  }
  
  public ParseObject getObject()
  {
    return object;
  }
  
  public ParseRelation<ParseObject> getRelation()
  {
    return object.getRelation(key);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.RelationConstraint
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
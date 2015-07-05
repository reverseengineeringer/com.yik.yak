package com.parse;

import org.json.JSONObject;

class NoObjectsEncodingStrategy
  implements ParseObjectEncodingStrategy
{
  private static final NoObjectsEncodingStrategy instance = new NoObjectsEncodingStrategy();
  
  public static NoObjectsEncodingStrategy get()
  {
    return instance;
  }
  
  public JSONObject encodeRelatedObject(ParseObject paramParseObject)
  {
    throw new IllegalArgumentException("ParseObjects not allowed here");
  }
}

/* Location:
 * Qualified Name:     com.parse.NoObjectsEncodingStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
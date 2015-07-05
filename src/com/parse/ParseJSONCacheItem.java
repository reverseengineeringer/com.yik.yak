package com.parse;

import com.parse.codec.digest.DigestUtils;
import org.json.JSONException;
import org.json.JSONObject;

class ParseJSONCacheItem
{
  private String hashValue;
  private JSONObject json = new JSONObject();
  
  public ParseJSONCacheItem(Object paramObject)
  {
    json.put("object", Parse.encode(paramObject, PointerOrLocalIdEncodingStrategy.get()));
    hashValue = DigestUtils.md5Hex(json.toString());
  }
  
  public boolean equals(ParseJSONCacheItem paramParseJSONCacheItem)
  {
    return hashValue.equals(paramParseJSONCacheItem.getHashValue());
  }
  
  public String getHashValue()
  {
    return hashValue;
  }
  
  public Object getJSONObject()
  {
    try
    {
      Object localObject = json.get("object");
      return localObject;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseJSONCacheItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
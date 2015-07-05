package com.parse;

import org.json.JSONObject;

abstract interface ParseObjectEncodingStrategy
{
  public abstract JSONObject encodeRelatedObject(ParseObject paramParseObject);
}

/* Location:
 * Qualified Name:     com.parse.ParseObjectEncodingStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
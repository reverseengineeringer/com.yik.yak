package com.parse;

import org.json.JSONObject;

class ParseDeleteOperation
  implements ParseFieldOperation
{
  private static final ParseDeleteOperation defaultInstance = new ParseDeleteOperation();
  
  public static ParseDeleteOperation getInstance()
  {
    return defaultInstance;
  }
  
  public Object apply(Object paramObject, ParseObject paramParseObject, String paramString)
  {
    return null;
  }
  
  public JSONObject encode(ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    paramParseObjectEncodingStrategy = new JSONObject();
    paramParseObjectEncodingStrategy.put("__op", "Delete");
    return paramParseObjectEncodingStrategy;
  }
  
  public ParseFieldOperation mergeWithPrevious(ParseFieldOperation paramParseFieldOperation)
  {
    return this;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseDeleteOperation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
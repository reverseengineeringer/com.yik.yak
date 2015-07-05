package com.parse;

class ParseSetOperation
  implements ParseFieldOperation
{
  private Object value;
  
  public ParseSetOperation(Object paramObject)
  {
    value = paramObject;
  }
  
  public Object apply(Object paramObject, ParseObject paramParseObject, String paramString)
  {
    return value;
  }
  
  public Object encode(ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    return Parse.encode(value, paramParseObjectEncodingStrategy);
  }
  
  public Object getValue()
  {
    return value;
  }
  
  public ParseFieldOperation mergeWithPrevious(ParseFieldOperation paramParseFieldOperation)
  {
    return this;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSetOperation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
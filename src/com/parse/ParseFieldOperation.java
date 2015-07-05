package com.parse;

abstract interface ParseFieldOperation
{
  public abstract Object apply(Object paramObject, ParseObject paramParseObject, String paramString);
  
  public abstract Object encode(ParseObjectEncodingStrategy paramParseObjectEncodingStrategy);
  
  public abstract ParseFieldOperation mergeWithPrevious(ParseFieldOperation paramParseFieldOperation);
}

/* Location:
 * Qualified Name:     com.parse.ParseFieldOperation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
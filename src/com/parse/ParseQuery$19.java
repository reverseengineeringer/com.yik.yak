package com.parse;

import M;
import N;

class ParseQuery$19
  implements M<Object, N<Object>>
{
  ParseQuery$19(ParseQuery paramParseQuery, boolean paramBoolean) {}
  
  public N<Object> then(N<Object> paramN)
  {
    if (val$caching)
    {
      Object localObject = paramN.e();
      Parse.saveToKeyValueCache(ParseQuery.access$400(this$0).getCacheKey(), localObject.toString());
    }
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
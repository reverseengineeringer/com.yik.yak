package com.parse;

import Q;
import R;

class ParseQuery$19
  implements Q<Object, R<Object>>
{
  ParseQuery$19(ParseQuery paramParseQuery, boolean paramBoolean) {}
  
  public R<Object> then(R<Object> paramR)
  {
    if (val$caching)
    {
      Object localObject = paramR.e();
      Parse.saveToKeyValueCache(ParseQuery.access$400(this$0).getCacheKey(), localObject.toString());
    }
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
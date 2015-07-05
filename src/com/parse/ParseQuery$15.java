package com.parse;

import R;
import java.util.List;

class ParseQuery$15
  implements ParseQuery.CallableWithCachePolicy<R<List<T>>>
{
  ParseQuery$15(ParseQuery paramParseQuery, ParseUser paramParseUser) {}
  
  public R<List<T>> call(ParseQuery.CachePolicy paramCachePolicy)
  {
    return this$0.findWithCachePolicyAsync(paramCachePolicy, val$user);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
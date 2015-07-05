package com.parse;

import Q;
import R;
import java.util.List;

final class ParseObject$42
  implements Q<Void, R<List<T>>>
{
  ParseObject$42(ParseQuery paramParseQuery, ParseUser paramParseUser) {}
  
  public R<List<T>> then(R<Void> paramR)
  {
    return val$query.findWithCachePolicyAsync(ParseQuery.CachePolicy.IGNORE_CACHE, val$user);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.42
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
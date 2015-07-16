package com.parse;

import M;
import N;
import java.util.List;

final class ParseObject$42
  implements M<Void, N<List<T>>>
{
  ParseObject$42(ParseQuery paramParseQuery, ParseUser paramParseUser) {}
  
  public N<List<T>> then(N<Void> paramN)
  {
    return val$query.findWithCachePolicyAsync(ParseQuery.CachePolicy.IGNORE_CACHE, val$user);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.42
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
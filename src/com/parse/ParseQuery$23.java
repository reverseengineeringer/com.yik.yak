package com.parse;

import N;

class ParseQuery$23
  implements ParseQuery.CallableWithCachePolicy<N<T>>
{
  ParseQuery$23(ParseQuery paramParseQuery, String paramString, ParseUser paramParseUser) {}
  
  public N<T> call(ParseQuery.CachePolicy paramCachePolicy)
  {
    return ParseQuery.access$1600(this$0, val$objectId, paramCachePolicy, val$user);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
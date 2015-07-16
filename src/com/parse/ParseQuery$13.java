package com.parse;

import N;
import java.util.concurrent.Callable;

class ParseQuery$13
  implements Callable<N<TResult>>
{
  ParseQuery$13(ParseQuery paramParseQuery, ParseQuery.CallableWithCachePolicy paramCallableWithCachePolicy, ParseCallback paramParseCallback) {}
  
  public N<TResult> call()
  {
    if (ParseQuery.access$500(this$0) == ParseQuery.CachePolicy.CACHE_THEN_NETWORK) {
      return Parse.callbackOnMainThreadAsync((N)val$callable.call(ParseQuery.CachePolicy.CACHE_ONLY), val$callback).b(new ParseQuery.13.1(this));
    }
    return (N)val$callable.call(ParseQuery.access$500(this$0));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
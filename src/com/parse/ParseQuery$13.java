package com.parse;

import R;
import java.util.concurrent.Callable;

class ParseQuery$13
  implements Callable<R<TResult>>
{
  ParseQuery$13(ParseQuery paramParseQuery, ParseQuery.CallableWithCachePolicy paramCallableWithCachePolicy, ParseCallback paramParseCallback) {}
  
  public R<TResult> call()
  {
    if (ParseQuery.access$500(this$0) == ParseQuery.CachePolicy.CACHE_THEN_NETWORK) {
      return Parse.callbackOnMainThreadAsync((R)val$callable.call(ParseQuery.CachePolicy.CACHE_ONLY), val$callback).b(new ParseQuery.13.1(this));
    }
    return (R)val$callable.call(ParseQuery.access$500(this$0));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
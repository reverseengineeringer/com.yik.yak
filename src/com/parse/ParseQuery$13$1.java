package com.parse;

import Q;
import R;

class ParseQuery$13$1
  implements Q<TResult, R<TResult>>
{
  ParseQuery$13$1(ParseQuery.13 param13) {}
  
  public R<TResult> then(R<TResult> paramR)
  {
    if (paramR.c()) {
      return paramR;
    }
    return (R)this$1.val$callable.call(ParseQuery.CachePolicy.NETWORK_ONLY);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.13.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
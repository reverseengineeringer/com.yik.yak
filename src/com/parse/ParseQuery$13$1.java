package com.parse;

import M;
import N;

class ParseQuery$13$1
  implements M<TResult, N<TResult>>
{
  ParseQuery$13$1(ParseQuery.13 param13) {}
  
  public N<TResult> then(N<TResult> paramN)
  {
    if (paramN.c()) {
      return paramN;
    }
    return (N)this$1.val$callable.call(ParseQuery.CachePolicy.NETWORK_ONLY);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.13.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
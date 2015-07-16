package com.parse;

import M;
import N;

class ParseQuery$2
  implements M<TResult, N<TResult>>
{
  ParseQuery$2(ParseQuery paramParseQuery, ParseQuery.CommandDelegate paramCommandDelegate) {}
  
  public N<TResult> then(N<TResult> paramN)
  {
    Object localObject = paramN;
    if (paramN.d())
    {
      localObject = paramN;
      if ((paramN.f() instanceof ParseException))
      {
        localObject = paramN;
        if (((ParseException)paramN.f()).getCode() == 100) {
          localObject = val$c.runFromCacheAsync();
        }
      }
    }
    return (N<TResult>)localObject;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
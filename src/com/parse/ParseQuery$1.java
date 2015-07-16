package com.parse;

import M;
import N;

class ParseQuery$1
  implements M<TResult, N<TResult>>
{
  ParseQuery$1(ParseQuery paramParseQuery, ParseQuery.CommandDelegate paramCommandDelegate) {}
  
  public N<TResult> then(N<TResult> paramN)
  {
    Object localObject = paramN;
    if (paramN.d())
    {
      localObject = paramN;
      if ((paramN.f() instanceof ParseException)) {
        localObject = val$c.runOnNetworkAsync(true);
      }
    }
    return (N<TResult>)localObject;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
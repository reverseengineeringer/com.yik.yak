package com.parse;

import Q;
import R;

class ParseQuery$1
  implements Q<TResult, R<TResult>>
{
  ParseQuery$1(ParseQuery paramParseQuery, ParseQuery.CommandDelegate paramCommandDelegate) {}
  
  public R<TResult> then(R<TResult> paramR)
  {
    Object localObject = paramR;
    if (paramR.d())
    {
      localObject = paramR;
      if ((paramR.f() instanceof ParseException)) {
        localObject = val$c.runOnNetworkAsync(true);
      }
    }
    return (R<TResult>)localObject;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
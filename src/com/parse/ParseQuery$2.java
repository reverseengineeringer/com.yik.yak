package com.parse;

import Q;
import R;

class ParseQuery$2
  implements Q<TResult, R<TResult>>
{
  ParseQuery$2(ParseQuery paramParseQuery, ParseQuery.CommandDelegate paramCommandDelegate) {}
  
  public R<TResult> then(R<TResult> paramR)
  {
    Object localObject = paramR;
    if (paramR.d())
    {
      localObject = paramR;
      if ((paramR.f() instanceof ParseException))
      {
        localObject = paramR;
        if (((ParseException)paramR.f()).getCode() == 100) {
          localObject = val$c.runFromCacheAsync();
        }
      }
    }
    return (R<TResult>)localObject;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import M;
import N;

class ParseObject$22
  implements M<Void, N<Void>>
{
  ParseObject$22(ParseObject paramParseObject) {}
  
  public N<Void> then(N<Void> paramN)
  {
    N<Void> localN = paramN;
    if ((paramN.f() instanceof ParseException))
    {
      localN = paramN;
      if (((ParseException)paramN.f()).getCode() == 120) {
        localN = null;
      }
    }
    return localN;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
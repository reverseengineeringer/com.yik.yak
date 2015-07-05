package com.parse;

import Q;
import R;

class ParseObject$19
  implements Q<Void, R<Void>>
{
  ParseObject$19(ParseObject paramParseObject) {}
  
  public R<Void> then(R<Void> paramR)
  {
    R<Void> localR = paramR;
    if ((paramR.f() instanceof ParseException))
    {
      localR = paramR;
      if (((ParseException)paramR.f()).getCode() == 120) {
        localR = null;
      }
    }
    return localR;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
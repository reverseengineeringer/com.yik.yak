package com.parse;

import M;
import N;

class OfflineStore$19$1
  implements M<ParseObject, N<ParseObject>>
{
  OfflineStore$19$1(OfflineStore.19 param19) {}
  
  public N<ParseObject> then(N<ParseObject> paramN)
  {
    Object localObject = paramN;
    if (paramN.d())
    {
      localObject = paramN;
      if ((paramN.f() instanceof ParseException))
      {
        localObject = paramN;
        if (((ParseException)paramN.f()).getCode() == 120) {
          localObject = N.a(null);
        }
      }
    }
    return (N<ParseObject>)localObject;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.19.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
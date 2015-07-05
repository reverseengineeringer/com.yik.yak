package com.parse;

import Q;
import R;

class OfflineStore$19$1
  implements Q<ParseObject, R<ParseObject>>
{
  OfflineStore$19$1(OfflineStore.19 param19) {}
  
  public R<ParseObject> then(R<ParseObject> paramR)
  {
    Object localObject = paramR;
    if (paramR.d())
    {
      localObject = paramR;
      if ((paramR.f() instanceof ParseException))
      {
        localObject = paramR;
        if (((ParseException)paramR.f()).getCode() == 120) {
          localObject = R.a(null);
        }
      }
    }
    return (R<ParseObject>)localObject;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.19.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
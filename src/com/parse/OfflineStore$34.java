package com.parse;

import M;
import N;

class OfflineStore$34
  implements M<ParseObject, N<Void>>
{
  OfflineStore$34(OfflineStore paramOfflineStore, ParseObject paramParseObject) {}
  
  public N<Void> then(N<ParseObject> paramN)
  {
    if (paramN.d())
    {
      if (((paramN.f() instanceof ParseException)) && (((ParseException)paramN.f()).getCode() == 120)) {
        return N.a(null);
      }
      return paramN.j();
    }
    return OfflineStore.access$1300(this$0).getWritableDatabaseAsync().b(new OfflineStore.34.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.34
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
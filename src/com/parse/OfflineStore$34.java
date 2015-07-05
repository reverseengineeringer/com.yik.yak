package com.parse;

import Q;
import R;

class OfflineStore$34
  implements Q<ParseObject, R<Void>>
{
  OfflineStore$34(OfflineStore paramOfflineStore, ParseObject paramParseObject) {}
  
  public R<Void> then(R<ParseObject> paramR)
  {
    if (paramR.d())
    {
      if (((paramR.f() instanceof ParseException)) && (((ParseException)paramR.f()).getCode() == 120)) {
        return R.a(null);
      }
      return paramR.j();
    }
    return OfflineStore.access$1300(this$0).getWritableDatabaseAsync().b(new OfflineStore.34.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.34
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
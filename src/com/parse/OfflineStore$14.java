package com.parse;

import Q;
import R;

class OfflineStore$14
  implements Q<ParseSQLiteDatabase, R<T>>
{
  OfflineStore$14(OfflineStore paramOfflineStore, ParseObject paramParseObject) {}
  
  public R<T> then(R<ParseSQLiteDatabase> paramR)
  {
    paramR = (ParseSQLiteDatabase)paramR.e();
    return this$0.fetchLocallyAsync(val$object, paramR).b(new OfflineStore.14.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
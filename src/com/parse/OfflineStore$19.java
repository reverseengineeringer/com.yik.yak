package com.parse;

import M;
import N;

class OfflineStore$19
  implements M<Void, N<ParseObject>>
{
  OfflineStore$19(OfflineStore paramOfflineStore, ParseObject paramParseObject, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<ParseObject> then(N<Void> paramN)
  {
    return this$0.fetchLocallyAsync(val$object, val$db).b(new OfflineStore.19.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
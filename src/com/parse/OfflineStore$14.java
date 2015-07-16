package com.parse;

import M;
import N;

class OfflineStore$14
  implements M<ParseSQLiteDatabase, N<T>>
{
  OfflineStore$14(OfflineStore paramOfflineStore, ParseObject paramParseObject) {}
  
  public N<T> then(N<ParseSQLiteDatabase> paramN)
  {
    paramN = (ParseSQLiteDatabase)paramN.e();
    return this$0.fetchLocallyAsync(val$object, paramN).b(new OfflineStore.14.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
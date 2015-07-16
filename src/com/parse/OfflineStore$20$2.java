package com.parse;

import M;
import N;

class OfflineStore$20$2
  implements M<Void, N<Void>>
{
  OfflineStore$20$2(OfflineStore.20 param20, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Void> then(N<Void> paramN)
  {
    return val$db.setTransactionSuccessfulAsync();
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.20.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
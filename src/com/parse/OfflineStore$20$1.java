package com.parse;

import M;
import N;

class OfflineStore$20$1
  implements M<Void, N<Void>>
{
  OfflineStore$20$1(OfflineStore.20 param20, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Void> then(N<Void> paramN)
  {
    val$db.endTransactionAsync();
    val$db.close();
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.20.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
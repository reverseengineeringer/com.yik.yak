package com.parse;

import M;
import N;

class OfflineStore$28
  implements M<ParseSQLiteDatabase, N<Void>>
{
  OfflineStore$28(OfflineStore paramOfflineStore, String paramString) {}
  
  public N<Void> then(N<ParseSQLiteDatabase> paramN)
  {
    paramN = (ParseSQLiteDatabase)paramN.e();
    return paramN.beginTransactionAsync().d(new OfflineStore.28.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.28
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
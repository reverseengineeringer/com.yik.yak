package com.parse;

import M;
import N;

class OfflineStore$34$1
  implements M<ParseSQLiteDatabase, N<Void>>
{
  OfflineStore$34$1(OfflineStore.34 param34) {}
  
  public N<Void> then(N<ParseSQLiteDatabase> paramN)
  {
    paramN = (ParseSQLiteDatabase)paramN.e();
    return paramN.beginTransactionAsync().d(new OfflineStore.34.1.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.34.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
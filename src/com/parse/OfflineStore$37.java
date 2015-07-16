package com.parse;

import M;
import N;

class OfflineStore$37
  implements M<ParseSQLiteDatabase, N<Void>>
{
  OfflineStore$37(OfflineStore paramOfflineStore, ParseObject paramParseObject) {}
  
  public N<Void> then(N<ParseSQLiteDatabase> paramN)
  {
    paramN = (ParseSQLiteDatabase)paramN.e();
    return paramN.beginTransactionAsync().d(new OfflineStore.37.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.37
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
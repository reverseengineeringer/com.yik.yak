package com.parse;

import M;
import N;

class OfflineStore$20
  implements M<ParseSQLiteDatabase, N<Void>>
{
  OfflineStore$20(OfflineStore paramOfflineStore, ParseObject paramParseObject, boolean paramBoolean) {}
  
  public N<Void> then(N<ParseSQLiteDatabase> paramN)
  {
    paramN = (ParseSQLiteDatabase)paramN.e();
    return paramN.beginTransactionAsync().d(new OfflineStore.20.3(this, paramN)).d(new OfflineStore.20.2(this, paramN)).b(new OfflineStore.20.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
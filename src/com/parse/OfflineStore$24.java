package com.parse;

import M;
import N;

class OfflineStore$24
  implements M<String, N<Void>>
{
  OfflineStore$24(OfflineStore paramOfflineStore, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Void> then(N<String> paramN)
  {
    paramN = (String)paramN.e();
    if (paramN == null) {
      return null;
    }
    return OfflineStore.access$900(this$0, paramN, val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.24
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
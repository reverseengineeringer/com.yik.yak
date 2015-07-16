package com.parse;

import M;
import N;
import java.util.List;

class OfflineStore$5$1
  implements M<List<T>, N<List<T>>>
{
  OfflineStore$5$1(OfflineStore.5 param5, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<List<T>> then(N<List<T>> paramN)
  {
    val$db.close();
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.5.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
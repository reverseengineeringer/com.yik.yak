package com.parse;

import M;
import N;

class OfflineStore$30
  implements M<Void, N<Void>>
{
  OfflineStore$30(OfflineStore paramOfflineStore, String paramString, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Void> then(N<Void> paramN)
  {
    paramN = val$key;
    return val$db.deleteAsync("Dependencies", "key=?", new String[] { paramN });
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.30
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
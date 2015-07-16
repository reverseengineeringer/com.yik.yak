package com.parse;

import L;
import M;
import N;

class OfflineStore$41
  implements M<Void, N<Void>>
{
  OfflineStore$41(OfflineStore paramOfflineStore, L paramL, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Void> then(N<Void> paramN)
  {
    paramN = (String)val$uuid.a();
    return val$db.deleteAsync("ParseObjects", "uuid=?", new String[] { paramN });
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.41
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
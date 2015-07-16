package com.parse;

import L;
import M;
import N;
import android.database.Cursor;

class OfflineStore$40
  implements M<String, N<Cursor>>
{
  OfflineStore$40(OfflineStore paramOfflineStore, L paramL, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Cursor> then(N<String> paramN)
  {
    paramN = (String)val$uuid.a();
    return val$db.queryAsync("Dependencies", new String[] { "key" }, "uuid=?", new String[] { paramN });
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.40
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import M;
import N;
import android.database.Cursor;

class OfflineStore$32
  implements M<Void, N<Cursor>>
{
  OfflineStore$32(OfflineStore paramOfflineStore, String paramString, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Cursor> then(N<Void> paramN)
  {
    paramN = val$key;
    return val$db.rawQueryAsync("SELECT uuid FROM Dependencies WHERE key=? AND uuid IN ( SELECT uuid FROM Dependencies GROUP BY uuid HAVING COUNT(uuid)=1)", new String[] { paramN });
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.32
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
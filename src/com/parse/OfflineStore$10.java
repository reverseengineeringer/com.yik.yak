package com.parse;

import L;
import M;
import N;
import android.database.Cursor;

class OfflineStore$10
  implements M<String, N<Cursor>>
{
  OfflineStore$10(OfflineStore paramOfflineStore, L paramL, ParseSQLiteDatabase paramParseSQLiteDatabase, String[] paramArrayOfString) {}
  
  public N<Cursor> then(N<String> paramN)
  {
    val$uuid.a(paramN.e());
    paramN = (String)val$uuid.a();
    return val$db.queryAsync("ParseObjects", val$select, "uuid = ?", new String[] { paramN });
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
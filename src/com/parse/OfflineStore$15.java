package com.parse;

import L;
import M;
import N;
import android.content.ContentValues;

class OfflineStore$15
  implements M<Void, N<Void>>
{
  OfflineStore$15(OfflineStore paramOfflineStore, String paramString, L paramL, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Void> then(N<Void> paramN)
  {
    paramN = new ContentValues();
    paramN.put("key", val$key);
    paramN.put("uuid", (String)val$uuid.a());
    return val$db.insertWithOnConflict("Dependencies", paramN, 4);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import Q;
import R;
import android.database.Cursor;

class OfflineStore$32
  implements Q<Void, R<Cursor>>
{
  OfflineStore$32(OfflineStore paramOfflineStore, String paramString, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Cursor> then(R<Void> paramR)
  {
    paramR = val$key;
    return val$db.rawQueryAsync("SELECT uuid FROM Dependencies WHERE key=? AND uuid IN ( SELECT uuid FROM Dependencies GROUP BY uuid HAVING COUNT(uuid)=1)", new String[] { paramR });
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.32
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
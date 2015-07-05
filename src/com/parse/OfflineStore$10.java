package com.parse;

import P;
import Q;
import R;
import android.database.Cursor;

class OfflineStore$10
  implements Q<String, R<Cursor>>
{
  OfflineStore$10(OfflineStore paramOfflineStore, P paramP, ParseSQLiteDatabase paramParseSQLiteDatabase, String[] paramArrayOfString) {}
  
  public R<Cursor> then(R<String> paramR)
  {
    val$uuid.a(paramR.e());
    paramR = (String)val$uuid.a();
    return val$db.queryAsync("ParseObjects", val$select, "uuid = ?", new String[] { paramR });
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
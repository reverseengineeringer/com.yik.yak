package com.parse;

import P;
import Q;
import R;
import android.database.Cursor;

class OfflineStore$40
  implements Q<String, R<Cursor>>
{
  OfflineStore$40(OfflineStore paramOfflineStore, P paramP, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Cursor> then(R<String> paramR)
  {
    paramR = (String)val$uuid.a();
    return val$db.queryAsync("Dependencies", new String[] { "key" }, "uuid=?", new String[] { paramR });
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.40
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
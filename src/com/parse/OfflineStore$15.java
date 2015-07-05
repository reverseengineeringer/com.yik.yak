package com.parse;

import P;
import Q;
import R;
import android.content.ContentValues;

class OfflineStore$15
  implements Q<Void, R<Void>>
{
  OfflineStore$15(OfflineStore paramOfflineStore, String paramString, P paramP, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Void> then(R<Void> paramR)
  {
    paramR = new ContentValues();
    paramR.put("key", val$key);
    paramR.put("uuid", (String)val$uuid.a());
    return val$db.insertWithOnConflict("Dependencies", paramR, 4);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
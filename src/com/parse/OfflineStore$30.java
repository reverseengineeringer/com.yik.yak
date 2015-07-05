package com.parse;

import Q;
import R;

class OfflineStore$30
  implements Q<Void, R<Void>>
{
  OfflineStore$30(OfflineStore paramOfflineStore, String paramString, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Void> then(R<Void> paramR)
  {
    paramR = val$key;
    return val$db.deleteAsync("Dependencies", "key=?", new String[] { paramR });
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.30
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
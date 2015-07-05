package com.parse;

import Q;
import R;

class OfflineStore$20$1
  implements Q<Void, R<Void>>
{
  OfflineStore$20$1(OfflineStore.20 param20, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Void> then(R<Void> paramR)
  {
    val$db.endTransactionAsync();
    val$db.close();
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.20.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import Q;
import R;
import java.util.List;

class OfflineStore$5$1
  implements Q<List<T>, R<List<T>>>
{
  OfflineStore$5$1(OfflineStore.5 param5, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<List<T>> then(R<List<T>> paramR)
  {
    val$db.close();
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.5.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import Q;
import R;

class OfflineStore$14$1
  implements Q<T, R<T>>
{
  OfflineStore$14$1(OfflineStore.14 param14, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<T> then(R<T> paramR)
  {
    val$db.close();
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.14.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
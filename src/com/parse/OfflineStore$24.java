package com.parse;

import Q;
import R;

class OfflineStore$24
  implements Q<String, R<Void>>
{
  OfflineStore$24(OfflineStore paramOfflineStore, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Void> then(R<String> paramR)
  {
    paramR = (String)paramR.e();
    if (paramR == null) {
      return null;
    }
    return OfflineStore.access$900(this$0, paramR, val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.24
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import Q;
import R;

class OfflineStore$20$3
  implements Q<Void, R<Void>>
{
  OfflineStore$20$3(OfflineStore.20 param20, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Void> then(R<Void> paramR)
  {
    return this$1.this$0.saveLocallyAsync(this$1.val$object, this$1.val$includeAllChildren, val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.20.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
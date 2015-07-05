package com.parse;

import P;
import Q;
import R;

class OfflineStore$41
  implements Q<Void, R<Void>>
{
  OfflineStore$41(OfflineStore paramOfflineStore, P paramP, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Void> then(R<Void> paramR)
  {
    paramR = (String)val$uuid.a();
    return val$db.deleteAsync("ParseObjects", "uuid=?", new String[] { paramR });
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.41
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
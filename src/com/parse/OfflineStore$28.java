package com.parse;

import Q;
import R;

class OfflineStore$28
  implements Q<ParseSQLiteDatabase, R<Void>>
{
  OfflineStore$28(OfflineStore paramOfflineStore, String paramString) {}
  
  public R<Void> then(R<ParseSQLiteDatabase> paramR)
  {
    paramR = (ParseSQLiteDatabase)paramR.e();
    return paramR.beginTransactionAsync().d(new OfflineStore.28.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.28
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
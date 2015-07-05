package com.parse;

import Q;
import R;

class OfflineStore$34$1
  implements Q<ParseSQLiteDatabase, R<Void>>
{
  OfflineStore$34$1(OfflineStore.34 param34) {}
  
  public R<Void> then(R<ParseSQLiteDatabase> paramR)
  {
    paramR = (ParseSQLiteDatabase)paramR.e();
    return paramR.beginTransactionAsync().d(new OfflineStore.34.1.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.34.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
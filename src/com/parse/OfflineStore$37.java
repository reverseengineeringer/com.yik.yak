package com.parse;

import Q;
import R;

class OfflineStore$37
  implements Q<ParseSQLiteDatabase, R<Void>>
{
  OfflineStore$37(OfflineStore paramOfflineStore, ParseObject paramParseObject) {}
  
  public R<Void> then(R<ParseSQLiteDatabase> paramR)
  {
    paramR = (ParseSQLiteDatabase)paramR.e();
    return paramR.beginTransactionAsync().d(new OfflineStore.37.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.37
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
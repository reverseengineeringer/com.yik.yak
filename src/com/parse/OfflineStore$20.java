package com.parse;

import Q;
import R;

class OfflineStore$20
  implements Q<ParseSQLiteDatabase, R<Void>>
{
  OfflineStore$20(OfflineStore paramOfflineStore, ParseObject paramParseObject, boolean paramBoolean) {}
  
  public R<Void> then(R<ParseSQLiteDatabase> paramR)
  {
    paramR = (ParseSQLiteDatabase)paramR.e();
    return paramR.beginTransactionAsync().d(new OfflineStore.20.3(this, paramR)).d(new OfflineStore.20.2(this, paramR)).b(new OfflineStore.20.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
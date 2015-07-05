package com.parse;

import P;
import Q;
import R;

class OfflineStore$17
  implements Q<String, R<Void>>
{
  OfflineStore$17(OfflineStore paramOfflineStore, P paramP1, ParseSQLiteDatabase paramParseSQLiteDatabase, P paramP2, ParseObject paramParseObject) {}
  
  public R<Void> then(R<String> paramR)
  {
    val$uuid.a(paramR.e());
    paramR = new OfflineStore.OfflineEncodingStrategy(this$0, val$db);
    val$encoded.a(val$object.toRest(paramR));
    return paramR.whenFinished();
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
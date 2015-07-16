package com.parse;

import L;
import M;
import N;

class OfflineStore$17
  implements M<String, N<Void>>
{
  OfflineStore$17(OfflineStore paramOfflineStore, L paramL1, ParseSQLiteDatabase paramParseSQLiteDatabase, L paramL2, ParseObject paramParseObject) {}
  
  public N<Void> then(N<String> paramN)
  {
    val$uuid.a(paramN.e());
    paramN = new OfflineStore.OfflineEncodingStrategy(this$0, val$db);
    val$encoded.a(val$object.toRest(paramN));
    return paramN.whenFinished();
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
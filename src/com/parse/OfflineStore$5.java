package com.parse;

import M;
import N;
import java.util.List;

class OfflineStore$5
  implements M<ParseSQLiteDatabase, N<List<T>>>
{
  OfflineStore$5(OfflineStore paramOfflineStore, ParseQuery paramParseQuery, ParseUser paramParseUser, ParsePin paramParsePin, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {}
  
  public N<List<T>> then(N<ParseSQLiteDatabase> paramN)
  {
    paramN = (ParseSQLiteDatabase)paramN.e();
    return this$0.findAsync(val$query, val$user, val$pin, val$isCount, val$includeIsDeletingEventually, val$ignoreACLs, paramN).b(new OfflineStore.5.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
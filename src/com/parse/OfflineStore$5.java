package com.parse;

import Q;
import R;
import java.util.List;

class OfflineStore$5
  implements Q<ParseSQLiteDatabase, R<List<T>>>
{
  OfflineStore$5(OfflineStore paramOfflineStore, ParseQuery paramParseQuery, ParseUser paramParseUser, ParsePin paramParsePin, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {}
  
  public R<List<T>> then(R<ParseSQLiteDatabase> paramR)
  {
    paramR = (ParseSQLiteDatabase)paramR.e();
    return this$0.findAsync(val$query, val$user, val$pin, val$isCount, val$includeIsDeletingEventually, val$ignoreACLs, paramR).b(new OfflineStore.5.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
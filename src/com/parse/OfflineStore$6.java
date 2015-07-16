package com.parse;

import M;
import N;
import android.database.Cursor;

class OfflineStore$6
  implements M<String, N<Cursor>>
{
  OfflineStore$6(OfflineStore paramOfflineStore, boolean paramBoolean, ParseQuery paramParseQuery, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Cursor> then(N<String> paramN)
  {
    String str1 = (String)paramN.e();
    paramN = "className=? AND key=?";
    if (!val$includeIsDeletingEventually) {
      paramN = "className=? AND key=?" + " AND isDeletingEventually=0";
    }
    String str2 = val$query.getClassName();
    return val$db.queryAsync("ParseObjects A  INNER JOIN Dependencies B  ON A.uuid=B.uuid", new String[] { "A.uuid" }, paramN, new String[] { str2, str1 });
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
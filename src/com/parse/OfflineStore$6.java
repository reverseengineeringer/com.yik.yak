package com.parse;

import Q;
import R;
import android.database.Cursor;

class OfflineStore$6
  implements Q<String, R<Cursor>>
{
  OfflineStore$6(OfflineStore paramOfflineStore, boolean paramBoolean, ParseQuery paramParseQuery, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Cursor> then(R<String> paramR)
  {
    String str1 = (String)paramR.e();
    paramR = "className=? AND key=?";
    if (!val$includeIsDeletingEventually) {
      paramR = "className=? AND key=?" + " AND isDeletingEventually=0";
    }
    String str2 = val$query.getClassName();
    return val$db.queryAsync("ParseObjects A  INNER JOIN Dependencies B  ON A.uuid=B.uuid", new String[] { "A.uuid" }, paramR, new String[] { str2, str1 });
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import M;
import N;
import android.database.Cursor;
import java.util.List;

class OfflineStore$31
  implements M<Cursor, N<Void>>
{
  OfflineStore$31(OfflineStore paramOfflineStore, List paramList, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Void> then(N<Cursor> paramN)
  {
    paramN = (Cursor)paramN.e();
    while (paramN.moveToNext()) {
      val$uuidsToDelete.add(paramN.getString(0));
    }
    return OfflineStore.access$1100(this$0, val$uuidsToDelete, val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.31
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import Q;
import R;
import android.database.Cursor;
import java.util.List;

class OfflineStore$31
  implements Q<Cursor, R<Void>>
{
  OfflineStore$31(OfflineStore paramOfflineStore, List paramList, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Void> then(R<Cursor> paramR)
  {
    paramR = (Cursor)paramR.e();
    while (paramR.moveToNext()) {
      val$uuidsToDelete.add(paramR.getString(0));
    }
    return OfflineStore.access$1100(this$0, val$uuidsToDelete, val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.31
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
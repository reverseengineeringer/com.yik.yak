package com.parse;

import Q;
import R;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

class OfflineStore$39
  implements Q<Cursor, R<Void>>
{
  OfflineStore$39(OfflineStore paramOfflineStore, ParseSQLiteDatabase paramParseSQLiteDatabase, ParseObject paramParseObject) {}
  
  public R<Void> then(R<Cursor> paramR)
  {
    paramR = (Cursor)paramR.e();
    ArrayList localArrayList = new ArrayList();
    paramR.moveToFirst();
    while (!paramR.isAfterLast())
    {
      String str = paramR.getString(0);
      localArrayList.add(OfflineStore.access$600(this$0, str, val$db).d(new OfflineStore.39.2(this)).b(new OfflineStore.39.1(this, str)));
      paramR.moveToNext();
    }
    return R.a(localArrayList);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.39
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
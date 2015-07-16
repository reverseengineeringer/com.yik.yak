package com.parse;

import M;
import N;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

class OfflineStore$39
  implements M<Cursor, N<Void>>
{
  OfflineStore$39(OfflineStore paramOfflineStore, ParseSQLiteDatabase paramParseSQLiteDatabase, ParseObject paramParseObject) {}
  
  public N<Void> then(N<Cursor> paramN)
  {
    paramN = (Cursor)paramN.e();
    ArrayList localArrayList = new ArrayList();
    paramN.moveToFirst();
    while (!paramN.isAfterLast())
    {
      String str = paramN.getString(0);
      localArrayList.add(OfflineStore.access$600(this$0, str, val$db).d(new OfflineStore.39.2(this)).b(new OfflineStore.39.1(this, str)));
      paramN.moveToNext();
    }
    return N.a(localArrayList);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.39
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
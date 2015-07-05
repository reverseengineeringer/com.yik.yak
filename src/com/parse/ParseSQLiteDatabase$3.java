package com.parse;

import Q;
import R;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class ParseSQLiteDatabase$3
  implements Q<Void, R<SQLiteDatabase>>
{
  ParseSQLiteDatabase$3(ParseSQLiteDatabase paramParseSQLiteDatabase, SQLiteOpenHelper paramSQLiteOpenHelper) {}
  
  public R<SQLiteDatabase> then(R<Void> paramR)
  {
    if (ParseSQLiteDatabase.access$400(this$0)) {}
    for (paramR = val$helper.getWritableDatabase();; paramR = val$helper.getReadableDatabase()) {
      return R.a(paramR);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import M;
import N;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class ParseSQLiteDatabase$3
  implements M<Void, N<SQLiteDatabase>>
{
  ParseSQLiteDatabase$3(ParseSQLiteDatabase paramParseSQLiteDatabase, SQLiteOpenHelper paramSQLiteOpenHelper) {}
  
  public N<SQLiteDatabase> then(N<Void> paramN)
  {
    if (ParseSQLiteDatabase.access$400(this$0)) {}
    for (paramN = val$helper.getWritableDatabase();; paramN = val$helper.getReadableDatabase()) {
      return N.a(paramN);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
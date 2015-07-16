package com.parse;

import M;
import N;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$24
  implements M<Void, N<Cursor>>
{
  ParseSQLiteDatabase$24(ParseSQLiteDatabase paramParseSQLiteDatabase, String paramString, String[] paramArrayOfString) {}
  
  public N<Cursor> then(N<Void> paramN)
  {
    return N.a(ParseSQLiteDatabase.access$300(this$0).rawQuery(val$sql, val$args));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.24
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
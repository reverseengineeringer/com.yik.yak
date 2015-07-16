package com.parse;

import M;
import N;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$13
  implements M<Void, N<Cursor>>
{
  ParseSQLiteDatabase$13(ParseSQLiteDatabase paramParseSQLiteDatabase, String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2) {}
  
  public N<Cursor> then(N<Void> paramN)
  {
    return N.a(ParseSQLiteDatabase.access$300(this$0).query(val$table, val$select, val$where, val$args, null, null, null));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
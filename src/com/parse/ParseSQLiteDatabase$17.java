package com.parse;

import M;
import N;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$17
  implements M<Void, N<Long>>
{
  ParseSQLiteDatabase$17(ParseSQLiteDatabase paramParseSQLiteDatabase, String paramString, ContentValues paramContentValues) {}
  
  public N<Long> then(N<Void> paramN)
  {
    return N.a(Long.valueOf(ParseSQLiteDatabase.access$300(this$0).insertOrThrow(val$table, null, val$values)));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
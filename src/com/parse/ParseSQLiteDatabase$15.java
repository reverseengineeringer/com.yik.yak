package com.parse;

import M;
import N;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$15
  implements M<Void, N<Long>>
{
  ParseSQLiteDatabase$15(ParseSQLiteDatabase paramParseSQLiteDatabase, String paramString, ContentValues paramContentValues, int paramInt) {}
  
  public N<Long> then(N<Void> paramN)
  {
    return N.a(Long.valueOf(ParseSQLiteDatabase.access$300(this$0).insertWithOnConflict(val$table, null, val$values, val$conflictAlgorithm)));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
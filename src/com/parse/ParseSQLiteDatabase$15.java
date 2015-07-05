package com.parse;

import Q;
import R;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$15
  implements Q<Void, R<Long>>
{
  ParseSQLiteDatabase$15(ParseSQLiteDatabase paramParseSQLiteDatabase, String paramString, ContentValues paramContentValues, int paramInt) {}
  
  public R<Long> then(R<Void> paramR)
  {
    return R.a(Long.valueOf(ParseSQLiteDatabase.access$300(this$0).insertWithOnConflict(val$table, null, val$values, val$conflictAlgorithm)));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
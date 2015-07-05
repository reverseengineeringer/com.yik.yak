package com.parse;

import Q;
import R;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$17
  implements Q<Void, R<Long>>
{
  ParseSQLiteDatabase$17(ParseSQLiteDatabase paramParseSQLiteDatabase, String paramString, ContentValues paramContentValues) {}
  
  public R<Long> then(R<Void> paramR)
  {
    return R.a(Long.valueOf(ParseSQLiteDatabase.access$300(this$0).insertOrThrow(val$table, null, val$values)));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
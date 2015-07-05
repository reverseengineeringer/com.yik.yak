package com.parse;

import Q;
import R;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$19
  implements Q<Void, R<Integer>>
{
  ParseSQLiteDatabase$19(ParseSQLiteDatabase paramParseSQLiteDatabase, String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString) {}
  
  public R<Integer> then(R<Void> paramR)
  {
    return R.a(Integer.valueOf(ParseSQLiteDatabase.access$300(this$0).update(val$table, val$values, val$where, val$args)));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import M;
import N;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$19
  implements M<Void, N<Integer>>
{
  ParseSQLiteDatabase$19(ParseSQLiteDatabase paramParseSQLiteDatabase, String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString) {}
  
  public N<Integer> then(N<Void> paramN)
  {
    return N.a(Integer.valueOf(ParseSQLiteDatabase.access$300(this$0).update(val$table, val$values, val$where, val$args)));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
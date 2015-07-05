package com.parse;

import Q;
import R;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$21
  implements Q<Void, R<Integer>>
{
  ParseSQLiteDatabase$21(ParseSQLiteDatabase paramParseSQLiteDatabase, String paramString1, String paramString2, String[] paramArrayOfString) {}
  
  public R<Integer> then(R<Void> paramR)
  {
    return R.a(Integer.valueOf(ParseSQLiteDatabase.access$300(this$0).delete(val$table, val$where, val$args)));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
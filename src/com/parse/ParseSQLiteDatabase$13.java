package com.parse;

import Q;
import R;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$13
  implements Q<Void, R<Cursor>>
{
  ParseSQLiteDatabase$13(ParseSQLiteDatabase paramParseSQLiteDatabase, String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2) {}
  
  public R<Cursor> then(R<Void> paramR)
  {
    return R.a(ParseSQLiteDatabase.access$300(this$0).query(val$table, val$select, val$where, val$args, null, null, null));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
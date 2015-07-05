package com.parse;

import Q;
import R;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$24
  implements Q<Void, R<Cursor>>
{
  ParseSQLiteDatabase$24(ParseSQLiteDatabase paramParseSQLiteDatabase, String paramString, String[] paramArrayOfString) {}
  
  public R<Cursor> then(R<Void> paramR)
  {
    return R.a(ParseSQLiteDatabase.access$300(this$0).rawQuery(val$sql, val$args));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.24
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
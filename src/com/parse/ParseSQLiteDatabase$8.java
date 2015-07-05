package com.parse;

import Q;
import R;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$8
  implements Q<Void, R<Void>>
{
  ParseSQLiteDatabase$8(ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Void> then(R<Void> paramR)
  {
    ParseSQLiteDatabase.access$300(this$0).endTransaction();
    return R.a(null);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
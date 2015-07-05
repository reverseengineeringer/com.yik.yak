package com.parse;

import Q;
import R;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$6
  implements Q<Void, R<Void>>
{
  ParseSQLiteDatabase$6(ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Void> then(R<Void> paramR)
  {
    ParseSQLiteDatabase.access$300(this$0).setTransactionSuccessful();
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
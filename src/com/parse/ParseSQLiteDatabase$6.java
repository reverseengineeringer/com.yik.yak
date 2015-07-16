package com.parse;

import M;
import N;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$6
  implements M<Void, N<Void>>
{
  ParseSQLiteDatabase$6(ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Void> then(N<Void> paramN)
  {
    ParseSQLiteDatabase.access$300(this$0).setTransactionSuccessful();
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
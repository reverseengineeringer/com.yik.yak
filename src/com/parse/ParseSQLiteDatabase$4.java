package com.parse;

import M;
import N;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$4
  implements M<Void, N<Void>>
{
  ParseSQLiteDatabase$4(ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Void> then(N<Void> paramN)
  {
    ParseSQLiteDatabase.access$300(this$0).beginTransaction();
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
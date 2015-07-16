package com.parse;

import M;
import N;
import Z;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$10
  implements M<Void, N<Void>>
{
  ParseSQLiteDatabase$10(ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Void> then(N<Void> paramN)
  {
    try
    {
      ParseSQLiteDatabase.access$300(this$0).close();
      return ParseSQLiteDatabase.access$200(this$0).a();
    }
    finally
    {
      ParseSQLiteDatabase.access$200(this$0).b(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import M;
import N;
import android.database.sqlite.SQLiteDatabase;

class ParseSQLiteDatabase$8
  implements M<Void, N<Void>>
{
  ParseSQLiteDatabase$8(ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Void> then(N<Void> paramN)
  {
    ParseSQLiteDatabase.access$300(this$0).endTransaction();
    return N.a(null);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
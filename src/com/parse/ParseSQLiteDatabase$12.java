package com.parse;

import M;
import N;
import android.database.Cursor;

class ParseSQLiteDatabase$12
  implements M<Cursor, N<Cursor>>
{
  ParseSQLiteDatabase$12(ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Cursor> then(N<Cursor> paramN)
  {
    paramN = (Cursor)paramN.e();
    return N.a(Integer.valueOf(paramN.getCount())).b(new ParseSQLiteDatabase.12.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
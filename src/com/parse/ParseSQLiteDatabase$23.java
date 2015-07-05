package com.parse;

import Q;
import R;
import android.database.Cursor;

class ParseSQLiteDatabase$23
  implements Q<Cursor, R<Cursor>>
{
  ParseSQLiteDatabase$23(ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Cursor> then(R<Cursor> paramR)
  {
    paramR = (Cursor)paramR.e();
    return R.a(Integer.valueOf(paramR.getCount())).b(new ParseSQLiteDatabase.23.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
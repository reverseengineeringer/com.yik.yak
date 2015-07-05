package com.parse;

import Q;
import R;
import android.database.Cursor;

class ParseSQLiteDatabase$12
  implements Q<Cursor, R<Cursor>>
{
  ParseSQLiteDatabase$12(ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Cursor> then(R<Cursor> paramR)
  {
    paramR = (Cursor)paramR.e();
    return R.a(Integer.valueOf(paramR.getCount())).b(new ParseSQLiteDatabase.12.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
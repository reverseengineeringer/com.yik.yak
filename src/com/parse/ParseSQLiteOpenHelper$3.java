package com.parse;

import Q;
import R;

class ParseSQLiteOpenHelper$3
  implements Q<Object, R<Void>>
{
  ParseSQLiteOpenHelper$3(ParseSQLiteOpenHelper paramParseSQLiteOpenHelper, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Void> then(R<Object> paramR)
  {
    return val$db.open(ParseSQLiteOpenHelper.access$000(this$0));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteOpenHelper.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
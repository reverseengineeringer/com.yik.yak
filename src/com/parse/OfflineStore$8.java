package com.parse;

import L;
import M;
import N;
import android.database.Cursor;
import java.util.List;

class OfflineStore$8
  implements M<Cursor, N<Void>>
{
  OfflineStore$8(OfflineStore paramOfflineStore, OfflineQueryLogic paramOfflineQueryLogic, ParseQuery paramParseQuery, ParseUser paramParseUser, boolean paramBoolean, ParseSQLiteDatabase paramParseSQLiteDatabase, List paramList) {}
  
  public N<Void> then(N<Cursor> paramN)
  {
    Cursor localCursor = (Cursor)paramN.e();
    OfflineQueryLogic.ConstraintMatcher localConstraintMatcher = val$queryLogic.createMatcher(val$query, val$user, val$ignoreACLs);
    paramN = N.a(null);
    localCursor.moveToFirst();
    while (!localCursor.isAfterLast())
    {
      String str = localCursor.getString(0);
      L localL = new L();
      paramN = paramN.d(new OfflineStore.8.4(this, str)).d(new OfflineStore.8.3(this, localL)).d(new OfflineStore.8.2(this, localL, localConstraintMatcher)).c(new OfflineStore.8.1(this, localL));
      localCursor.moveToNext();
    }
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
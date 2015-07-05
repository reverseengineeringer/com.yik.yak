package com.parse;

import P;
import Q;
import R;
import android.database.Cursor;
import java.util.List;

class OfflineStore$8
  implements Q<Cursor, R<Void>>
{
  OfflineStore$8(OfflineStore paramOfflineStore, OfflineQueryLogic paramOfflineQueryLogic, ParseQuery paramParseQuery, ParseUser paramParseUser, boolean paramBoolean, ParseSQLiteDatabase paramParseSQLiteDatabase, List paramList) {}
  
  public R<Void> then(R<Cursor> paramR)
  {
    Cursor localCursor = (Cursor)paramR.e();
    OfflineQueryLogic.ConstraintMatcher localConstraintMatcher = val$queryLogic.createMatcher(val$query, val$user, val$ignoreACLs);
    paramR = R.a(null);
    localCursor.moveToFirst();
    while (!localCursor.isAfterLast())
    {
      String str = localCursor.getString(0);
      P localP = new P();
      paramR = paramR.d(new OfflineStore.8.4(this, str)).d(new OfflineStore.8.3(this, localP)).d(new OfflineStore.8.2(this, localP, localConstraintMatcher)).c(new OfflineStore.8.1(this, localP));
      localCursor.moveToNext();
    }
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
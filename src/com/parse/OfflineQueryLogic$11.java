package com.parse;

import R;
import java.util.ArrayList;
import java.util.Iterator;

class OfflineQueryLogic$11
  implements OfflineQueryLogic.ConstraintMatcher<T>
{
  OfflineQueryLogic$11(OfflineQueryLogic paramOfflineQueryLogic, ArrayList paramArrayList) {}
  
  public R<Boolean> matchesAsync(T paramT, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    R localR = R.a(Boolean.valueOf(false));
    Iterator localIterator = val$matchers.iterator();
    while (localIterator.hasNext()) {
      localR = localR.d(new OfflineQueryLogic.11.1(this, (OfflineQueryLogic.ConstraintMatcher)localIterator.next(), paramT, paramParseSQLiteDatabase));
    }
    return localR;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
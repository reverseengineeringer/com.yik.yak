package com.parse;

import N;
import java.util.ArrayList;
import java.util.Iterator;

class OfflineQueryLogic$14
  implements OfflineQueryLogic.ConstraintMatcher<T>
{
  OfflineQueryLogic$14(OfflineQueryLogic paramOfflineQueryLogic, ArrayList paramArrayList) {}
  
  public N<Boolean> matchesAsync(T paramT, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    N localN = N.a(Boolean.valueOf(true));
    Iterator localIterator = val$matchers.iterator();
    while (localIterator.hasNext()) {
      localN = localN.d(new OfflineQueryLogic.14.1(this, (OfflineQueryLogic.ConstraintMatcher)localIterator.next(), paramT, paramParseSQLiteDatabase));
    }
    return localN;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
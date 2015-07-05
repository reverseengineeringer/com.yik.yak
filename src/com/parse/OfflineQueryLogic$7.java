package com.parse;

import R;

class OfflineQueryLogic$7
  implements OfflineQueryLogic.ConstraintMatcher<T>
{
  OfflineQueryLogic$7(OfflineQueryLogic paramOfflineQueryLogic, OfflineQueryLogic.ConstraintMatcher paramConstraintMatcher) {}
  
  public R<Boolean> matchesAsync(T paramT, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    return val$inQueryMatcher.matchesAsync(paramT, paramParseSQLiteDatabase).c(new OfflineQueryLogic.7.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
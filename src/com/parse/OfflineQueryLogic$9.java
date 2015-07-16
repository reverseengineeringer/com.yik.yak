package com.parse;

import N;

class OfflineQueryLogic$9
  implements OfflineQueryLogic.ConstraintMatcher<T>
{
  OfflineQueryLogic$9(OfflineQueryLogic paramOfflineQueryLogic, OfflineQueryLogic.ConstraintMatcher paramConstraintMatcher) {}
  
  public N<Boolean> matchesAsync(T paramT, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    return val$selectMatcher.matchesAsync(paramT, paramParseSQLiteDatabase).c(new OfflineQueryLogic.9.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
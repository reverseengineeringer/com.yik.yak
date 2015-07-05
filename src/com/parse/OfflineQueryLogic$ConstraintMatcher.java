package com.parse;

import R;

abstract interface OfflineQueryLogic$ConstraintMatcher<T extends ParseObject>
{
  public abstract R<Boolean> matchesAsync(T paramT, ParseSQLiteDatabase paramParseSQLiteDatabase);
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.ConstraintMatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import R;

class OfflineQueryLogic$15
  implements OfflineQueryLogic.ConstraintMatcher<T>
{
  OfflineQueryLogic$15(OfflineQueryLogic paramOfflineQueryLogic, boolean paramBoolean, ParseUser paramParseUser, OfflineQueryLogic.ConstraintMatcher paramConstraintMatcher) {}
  
  public R<Boolean> matchesAsync(T paramT, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    if ((!val$ignoreACLs) && (!OfflineQueryLogic.hasReadAccess(val$user, paramT))) {
      return R.a(Boolean.valueOf(false));
    }
    return val$constraintMatcher.matchesAsync(paramT, paramParseSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
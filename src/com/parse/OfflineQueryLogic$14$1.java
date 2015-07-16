package com.parse;

import M;
import N;

class OfflineQueryLogic$14$1
  implements M<Boolean, N<Boolean>>
{
  OfflineQueryLogic$14$1(OfflineQueryLogic.14 param14, OfflineQueryLogic.ConstraintMatcher paramConstraintMatcher, ParseObject paramParseObject, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Boolean> then(N<Boolean> paramN)
  {
    if (!((Boolean)paramN.e()).booleanValue()) {
      return paramN;
    }
    return val$matcher.matchesAsync(val$object, val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.14.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
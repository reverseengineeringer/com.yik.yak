package com.parse;

import Q;
import R;

class OfflineQueryLogic$11$1
  implements Q<Boolean, R<Boolean>>
{
  OfflineQueryLogic$11$1(OfflineQueryLogic.11 param11, OfflineQueryLogic.ConstraintMatcher paramConstraintMatcher, ParseObject paramParseObject, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Boolean> then(R<Boolean> paramR)
  {
    if (((Boolean)paramR.e()).booleanValue()) {
      return paramR;
    }
    return val$matcher.matchesAsync(val$object, val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.11.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
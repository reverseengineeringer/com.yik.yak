package com.parse;

import Q;
import R;

class OfflineQueryLogic$14$1
  implements Q<Boolean, R<Boolean>>
{
  OfflineQueryLogic$14$1(OfflineQueryLogic.14 param14, OfflineQueryLogic.ConstraintMatcher paramConstraintMatcher, ParseObject paramParseObject, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Boolean> then(R<Boolean> paramR)
  {
    if (!((Boolean)paramR.e()).booleanValue()) {
      return paramR;
    }
    return val$matcher.matchesAsync(val$object, val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.14.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
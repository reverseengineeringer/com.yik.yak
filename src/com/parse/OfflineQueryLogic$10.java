package com.parse;

import N;

class OfflineQueryLogic$10
  implements OfflineQueryLogic.ConstraintMatcher<T>
{
  OfflineQueryLogic$10(OfflineQueryLogic paramOfflineQueryLogic, String paramString1, String paramString2, Object paramObject, ParseQuery.KeyConstraints paramKeyConstraints) {}
  
  public N<Boolean> matchesAsync(T paramT, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    try
    {
      paramT = OfflineQueryLogic.access$200(this$0, paramT, val$key);
      paramT = N.a(Boolean.valueOf(OfflineQueryLogic.access$500(val$operator, val$constraint, paramT, val$allKeyConstraints)));
      return paramT;
    }
    catch (ParseException paramT) {}
    return N.a(paramT);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
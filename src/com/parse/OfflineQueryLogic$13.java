package com.parse;

import N;

class OfflineQueryLogic$13
  implements OfflineQueryLogic.ConstraintMatcher<T>
{
  OfflineQueryLogic$13(OfflineQueryLogic paramOfflineQueryLogic, String paramString, Object paramObject) {}
  
  public N<Boolean> matchesAsync(T paramT, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    try
    {
      paramT = OfflineQueryLogic.access$200(this$0, paramT, val$key);
      return N.a(Boolean.valueOf(OfflineQueryLogic.access$400(val$queryConstraintValue, paramT)));
    }
    catch (ParseException paramT) {}
    return N.a(paramT);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
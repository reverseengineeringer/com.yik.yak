package com.parse;

import N;
import java.util.List;

abstract class OfflineQueryLogic$SubQueryMatcher<T extends ParseObject>
  implements OfflineQueryLogic.ConstraintMatcher<T>
{
  private final ParseQuery<T> subQuery;
  private N<List<T>> subQueryResults = null;
  
  public OfflineQueryLogic$SubQueryMatcher(ParseQuery<T> paramParseQuery)
  {
    ParseQuery localParseQuery;
    subQuery = localParseQuery;
  }
  
  protected abstract boolean matches(T paramT, List<T> paramList);
  
  public N<Boolean> matchesAsync(T paramT, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    if (subQueryResults == null)
    {
      ParseUser localParseUser = ParseUser.getCurrentUser();
      subQueryResults = OfflineQueryLogic.access$100(this$0).findAsync(subQuery, localParseUser, null, false, false, false, paramParseSQLiteDatabase);
    }
    return subQueryResults.c(new OfflineQueryLogic.SubQueryMatcher.1(this, paramT));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.SubQueryMatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import M;
import N;
import java.util.List;

class OfflineQueryLogic$SubQueryMatcher$1
  implements M<List<T>, Boolean>
{
  OfflineQueryLogic$SubQueryMatcher$1(OfflineQueryLogic.SubQueryMatcher paramSubQueryMatcher, ParseObject paramParseObject) {}
  
  public Boolean then(N<List<T>> paramN)
  {
    return Boolean.valueOf(this$1.matches(val$object, (List)paramN.e()));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.SubQueryMatcher.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import Q;
import R;
import java.util.List;

class OfflineQueryLogic$SubQueryMatcher$1
  implements Q<List<T>, Boolean>
{
  OfflineQueryLogic$SubQueryMatcher$1(OfflineQueryLogic.SubQueryMatcher paramSubQueryMatcher, ParseObject paramParseObject) {}
  
  public Boolean then(R<List<T>> paramR)
  {
    return Boolean.valueOf(this$1.matches(val$object, (List)paramR.e()));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.SubQueryMatcher.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
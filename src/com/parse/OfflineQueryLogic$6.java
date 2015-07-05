package com.parse;

import java.util.List;

class OfflineQueryLogic$6
  extends OfflineQueryLogic.SubQueryMatcher<T>
{
  OfflineQueryLogic$6(OfflineQueryLogic paramOfflineQueryLogic, ParseQuery paramParseQuery, String paramString)
  {
    super(paramOfflineQueryLogic, paramParseQuery);
  }
  
  protected boolean matches(T paramT, List<T> paramList)
  {
    return OfflineQueryLogic.access$300(paramList, OfflineQueryLogic.access$200(this$0, paramT, val$key));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
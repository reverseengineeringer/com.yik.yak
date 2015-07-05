package com.parse;

import java.util.Iterator;
import java.util.List;

class OfflineQueryLogic$8
  extends OfflineQueryLogic.SubQueryMatcher<T>
{
  OfflineQueryLogic$8(OfflineQueryLogic paramOfflineQueryLogic, ParseQuery paramParseQuery, String paramString1, String paramString2)
  {
    super(paramOfflineQueryLogic, paramParseQuery);
  }
  
  protected boolean matches(T paramT, List<T> paramList)
  {
    paramT = OfflineQueryLogic.access$200(this$0, paramT, val$key);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ParseObject localParseObject = (ParseObject)paramList.next();
      if (OfflineQueryLogic.access$400(paramT, OfflineQueryLogic.access$200(this$0, localParseObject, val$resultKey))) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
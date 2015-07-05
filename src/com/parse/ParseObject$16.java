package com.parse;

import Q;
import R;

class ParseObject$16
  implements Q<Void, R<Object>>
{
  ParseObject$16(ParseObject paramParseObject, ParseCommand paramParseCommand) {}
  
  public R<Object> then(R<Void> paramR)
  {
    return Parse.getEventuallyQueue().enqueueEventuallyAsync(val$command, this$0);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
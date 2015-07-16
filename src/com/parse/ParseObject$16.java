package com.parse;

import M;
import N;

class ParseObject$16
  implements M<Void, N<Object>>
{
  ParseObject$16(ParseObject paramParseObject, ParseCommand paramParseCommand) {}
  
  public N<Object> then(N<Void> paramN)
  {
    return Parse.getEventuallyQueue().enqueueEventuallyAsync(val$command, this$0);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
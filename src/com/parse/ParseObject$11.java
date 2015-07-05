package com.parse;

import Q;
import R;

class ParseObject$11
  implements Q<Void, R<Void>>
{
  ParseObject$11(ParseObject paramParseObject, String paramString) {}
  
  public R<Void> then(R<Void> arg1)
  {
    synchronized (this$0.mutex)
    {
      R localR = ParseObject.access$400(ParseObject.access$300(this$0), val$sessionToken);
      return localR;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
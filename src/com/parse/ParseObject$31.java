package com.parse;

import Q;
import R;

class ParseObject$31
  implements Q<Void, R<Void>>
{
  ParseObject$31(ParseObject paramParseObject) {}
  
  public R<Void> then(R<Void> paramR)
  {
    synchronized (this$0.mutex)
    {
      this$0.validateDelete();
      if (ParseObject.access$000(this$0) == null) {
        return null;
      }
      return paramR;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.31
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
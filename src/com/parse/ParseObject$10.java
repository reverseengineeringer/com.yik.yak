package com.parse;

import P;
import Q;
import R;

class ParseObject$10
  implements Q<Void, R<Void>>
{
  ParseObject$10(ParseObject paramParseObject, P paramP, String paramString) {}
  
  public R<Void> then(R<Void> paramR)
  {
    return this$0.saveAsync((ParseOperationSet)val$operations.a(), val$sessionToken).b(new ParseObject.10.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
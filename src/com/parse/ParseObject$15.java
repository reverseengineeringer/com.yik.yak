package com.parse;

import Q;
import R;

class ParseObject$15
  implements Q<Void, R<Void>>
{
  ParseObject$15(ParseObject paramParseObject) {}
  
  public R<Void> then(R<Void> paramR)
  {
    Parse.getEventuallyQueue().notifyTestHelper(5);
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
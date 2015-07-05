package com.parse;

import Q;
import R;

class ParseObject$9
  implements Q<Void, R<Void>>
{
  ParseObject$9(ParseObject paramParseObject) {}
  
  public R<Void> then(R<Void> paramR)
  {
    this$0.updateBeforeSave();
    return this$0.saveAsync(paramR);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
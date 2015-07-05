package com.parse;

import Q;
import R;

class ParseFile$3$4
  implements Q<ParseCommand, R<Object>>
{
  ParseFile$3$4(ParseFile.3 param3) {}
  
  public R<Object> then(R<ParseCommand> paramR)
  {
    return ((ParseCommand)paramR.e()).executeAsync();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFile.3.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
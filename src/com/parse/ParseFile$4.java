package com.parse;

import Q;
import R;

class ParseFile$4
  implements Q<Void, R<Void>>
{
  ParseFile$4(ParseFile paramParseFile, ProgressCallback paramProgressCallback) {}
  
  public R<Void> then(R<Void> paramR)
  {
    return this$0.saveAsync(val$progressCallback, paramR);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFile.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
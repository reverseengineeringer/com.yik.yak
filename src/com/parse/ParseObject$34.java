package com.parse;

import Q;
import R;
import java.util.List;

final class ParseObject$34
  implements Q<Void, R<Void>>
{
  ParseObject$34(List paramList, String paramString) {}
  
  public R<Void> then(R<Void> paramR)
  {
    if (val$uniqueObjects.size() == 0) {
      return R.a(null);
    }
    return ParseObject.enqueueForAll(val$uniqueObjects, new ParseObject.34.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.34
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
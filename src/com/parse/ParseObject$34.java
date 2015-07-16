package com.parse;

import M;
import N;
import java.util.List;

final class ParseObject$34
  implements M<Void, N<Void>>
{
  ParseObject$34(List paramList, String paramString) {}
  
  public N<Void> then(N<Void> paramN)
  {
    if (val$uniqueObjects.size() == 0) {
      return N.a(null);
    }
    return ParseObject.enqueueForAll(val$uniqueObjects, new ParseObject.34.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.34
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
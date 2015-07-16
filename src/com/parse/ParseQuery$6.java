package com.parse;

import M;
import N;
import java.util.ArrayList;
import java.util.List;

class ParseQuery$6
  implements M<Void, N<List<T>>>
{
  ParseQuery$6(ParseQuery paramParseQuery) {}
  
  public N<List<T>> then(N<Void> paramN)
  {
    paramN = new ArrayList();
    if (ParseQuery.access$400(this$0) == null) {
      return N.a(paramN);
    }
    if (ParseQuery.access$500(this$0) != ParseQuery.CachePolicy.IGNORE_CACHE) {}
    for (boolean bool = true;; bool = false)
    {
      ParseQuery.access$602(this$0, System.nanoTime());
      return ParseQuery.access$400(this$0).executeAsync().c(new ParseQuery.6.1(this, bool));
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
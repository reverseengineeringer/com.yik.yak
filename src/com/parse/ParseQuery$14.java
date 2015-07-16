package com.parse;

import N;
import java.util.List;
import java.util.concurrent.Callable;

class ParseQuery$14
  implements Callable<N<List<T>>>
{
  ParseQuery$14(ParseQuery paramParseQuery, ParseUser paramParseUser) {}
  
  public N<List<T>> call()
  {
    return this$0.findWithCachePolicyAsync(ParseQuery.access$500(this$0), val$user);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
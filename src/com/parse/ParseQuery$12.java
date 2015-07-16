package com.parse;

import M;
import N;

class ParseQuery$12
  implements M<TResult, N<TResult>>
{
  ParseQuery$12(ParseQuery paramParseQuery) {}
  
  public N<TResult> then(N<TResult> paramN)
  {
    synchronized (ParseQuery.access$1200(this$0))
    {
      ParseQuery.access$1302(this$0, false);
      ParseQuery.access$402(this$0, null);
      return paramN;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import Q;
import R;

class ParseQuery$12
  implements Q<TResult, R<TResult>>
{
  ParseQuery$12(ParseQuery paramParseQuery) {}
  
  public R<TResult> then(R<TResult> paramR)
  {
    synchronized (ParseQuery.access$1200(this$0))
    {
      ParseQuery.access$1302(this$0, false);
      ParseQuery.access$402(this$0, null);
      return paramR;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import java.util.concurrent.Callable;

class ParseQuery$7
  implements Callable<Void>
{
  ParseQuery$7(ParseQuery paramParseQuery, boolean paramBoolean) {}
  
  public Void call()
  {
    if (val$shouldRetry) {
      ParseQuery.access$400(this$0).enableRetrying();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import java.util.concurrent.Callable;

class ParseUser$6
  implements Callable<ParseOperationSet>
{
  ParseUser$6(ParseUser paramParseUser) {}
  
  public ParseOperationSet call()
  {
    synchronized (this$0.mutex)
    {
      ParseOperationSet localParseOperationSet = this$0.startSave();
      return localParseOperationSet;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
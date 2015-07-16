package com.parse;

import M;
import N;

class ParseObject$11
  implements M<Void, N<Void>>
{
  ParseObject$11(ParseObject paramParseObject, String paramString) {}
  
  public N<Void> then(N<Void> arg1)
  {
    synchronized (this$0.mutex)
    {
      N localN = ParseObject.access$400(ParseObject.access$300(this$0), val$sessionToken);
      return localN;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import P;
import Q;
import R;

class ParseCommandCache$3
  implements Q<T, Void>
{
  ParseCommandCache$3(ParseCommandCache paramParseCommandCache, P paramP) {}
  
  public Void then(R<T> arg1)
  {
    val$finished.a(Boolean.valueOf(true));
    synchronized (ParseCommandCache.access$100())
    {
      ParseCommandCache.access$100().notifyAll();
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseCommandCache.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
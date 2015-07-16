package com.parse;

import L;
import M;
import N;

class ParseCommandCache$3
  implements M<T, Void>
{
  ParseCommandCache$3(ParseCommandCache paramParseCommandCache, L paramL) {}
  
  public Void then(N<T> arg1)
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
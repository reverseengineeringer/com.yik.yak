package com.parse;

import L;
import M;
import N;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;

final class ParseObject$37
  implements M<Void, N<Void>>
{
  ParseObject$37(List paramList, String paramString) {}
  
  public N<Void> then(N<Void> paramN)
  {
    paramN = new IdentityHashMap();
    Iterator localIterator = val$objects.iterator();
    while (localIterator.hasNext()) {
      paramN.put((ParseObject)localIterator.next(), Boolean.valueOf(true));
    }
    paramN = new L(new ArrayList(paramN.keySet()));
    return N.a(null).a(new ParseObject.37.1(this, paramN), new ParseObject.37.2(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.37
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
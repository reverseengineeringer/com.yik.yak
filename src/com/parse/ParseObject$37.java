package com.parse;

import P;
import Q;
import R;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;

final class ParseObject$37
  implements Q<Void, R<Void>>
{
  ParseObject$37(List paramList, String paramString) {}
  
  public R<Void> then(R<Void> paramR)
  {
    paramR = new IdentityHashMap();
    Iterator localIterator = val$objects.iterator();
    while (localIterator.hasNext()) {
      paramR.put((ParseObject)localIterator.next(), Boolean.valueOf(true));
    }
    paramR = new P(new ArrayList(paramR.keySet()));
    return R.a(null).a(new ParseObject.37.1(this, paramR), new ParseObject.37.2(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.37
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import Q;
import R;
import java.util.Iterator;
import java.util.List;

class ParseObject$37$2$3$1
  implements Q<Void, R<Void>>
{
  ParseObject$37$2$3$1(ParseObject.37.2.3 param3) {}
  
  public R<Void> then(R<Void> paramR)
  {
    Iterator localIterator = this$2.val$current.iterator();
    while (localIterator.hasNext())
    {
      ParseObject localParseObject = (ParseObject)localIterator.next();
      synchronized (mutex)
      {
        localParseObject.validateSave();
        this$2.val$operations.add(localParseObject.startSave());
      }
    }
    return paramR.b(new ParseObject.37.2.3.1.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.37.2.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
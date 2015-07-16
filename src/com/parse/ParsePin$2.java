package com.parse;

import M;
import N;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class ParsePin$2
  implements M<ParsePin, N<Void>>
{
  ParsePin$2(List paramList) {}
  
  public N<Void> then(N<ParsePin> paramN)
  {
    ParsePin localParsePin = (ParsePin)paramN.e();
    OfflineStore localOfflineStore = OfflineStore.getCurrent();
    paramN = localParsePin.getObjects();
    if (paramN == null) {
      paramN = new ArrayList(val$objects);
    }
    for (;;)
    {
      localParsePin.setObjects(paramN);
      return localOfflineStore.saveLocallyAsync(localParsePin, true);
      Iterator localIterator = val$objects.iterator();
      while (localIterator.hasNext())
      {
        ParseObject localParseObject = (ParseObject)localIterator.next();
        if (!paramN.contains(localParseObject)) {
          paramN.add(localParseObject);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePin.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
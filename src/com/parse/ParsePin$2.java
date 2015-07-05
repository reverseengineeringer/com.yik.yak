package com.parse;

import Q;
import R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class ParsePin$2
  implements Q<ParsePin, R<Void>>
{
  ParsePin$2(List paramList) {}
  
  public R<Void> then(R<ParsePin> paramR)
  {
    ParsePin localParsePin = (ParsePin)paramR.e();
    OfflineStore localOfflineStore = OfflineStore.getCurrent();
    paramR = localParsePin.getObjects();
    if (paramR == null) {
      paramR = new ArrayList(val$objects);
    }
    for (;;)
    {
      localParsePin.setObjects(paramR);
      return localOfflineStore.saveLocallyAsync(localParsePin, true);
      Iterator localIterator = val$objects.iterator();
      while (localIterator.hasNext())
      {
        ParseObject localParseObject = (ParseObject)localIterator.next();
        if (!paramR.contains(localParseObject)) {
          paramR.add(localParseObject);
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
package com.parse;

import Q;
import R;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class ParseObject$38
  implements Q<List<T>, List<T>>
{
  ParseObject$38(List paramList) {}
  
  public List<T> then(R<List<T>> paramR)
  {
    HashMap localHashMap = new HashMap();
    paramR = ((List)paramR.e()).iterator();
    ParseObject localParseObject1;
    while (paramR.hasNext())
    {
      localParseObject1 = (ParseObject)paramR.next();
      localHashMap.put(localParseObject1.getObjectId(), localParseObject1);
    }
    paramR = val$objects.iterator();
    while (paramR.hasNext())
    {
      localParseObject1 = (ParseObject)paramR.next();
      if (!localParseObject1.isDataAvailable())
      {
        ParseObject localParseObject2 = (ParseObject)localHashMap.get(localParseObject1.getObjectId());
        if (localParseObject2 == null) {
          throw new RuntimeException("Object id " + localParseObject1.getObjectId() + " does not exist");
        }
        localParseObject1.mergeFromObject(localParseObject2);
        hasBeenFetched = true;
      }
    }
    return val$objects;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.38
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
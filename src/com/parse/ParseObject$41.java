package com.parse;

import M;
import N;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class ParseObject$41
  implements M<List<T>, List<T>>
{
  ParseObject$41(List paramList) {}
  
  public List<T> then(N<List<T>> paramN)
  {
    HashMap localHashMap = new HashMap();
    paramN = ((List)paramN.e()).iterator();
    ParseObject localParseObject1;
    while (paramN.hasNext())
    {
      localParseObject1 = (ParseObject)paramN.next();
      localHashMap.put(localParseObject1.getObjectId(), localParseObject1);
    }
    paramN = val$objects.iterator();
    while (paramN.hasNext())
    {
      localParseObject1 = (ParseObject)paramN.next();
      ParseObject localParseObject2 = (ParseObject)localHashMap.get(localParseObject1.getObjectId());
      if (localParseObject2 == null) {
        throw new RuntimeException("Object id " + localParseObject1.getObjectId() + " does not exist");
      }
      localParseObject1.mergeFromObject(localParseObject2);
      hasBeenFetched = true;
    }
    return val$objects;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.41
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
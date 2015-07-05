package com.parse;

import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;

final class ParseObject$35
  extends ParseTraverser
{
  ParseObject$35(List paramList1, IdentityHashMap paramIdentityHashMap1, IdentityHashMap paramIdentityHashMap2, List paramList2) {}
  
  protected boolean visit(Object paramObject)
  {
    if ((paramObject instanceof ParseFile))
    {
      paramObject = (ParseFile)paramObject;
      if (((ParseFile)paramObject).getUrl() == null) {
        val$dirtyFiles.add(paramObject);
      }
    }
    label166:
    for (;;)
    {
      return true;
      if ((paramObject instanceof ParseObject))
      {
        ParseObject localParseObject = (ParseObject)paramObject;
        IdentityHashMap localIdentityHashMap = val$alreadySeen;
        paramObject = val$alreadySeenNew;
        if (localParseObject.getObjectId() != null) {
          paramObject = new IdentityHashMap();
        }
        for (;;)
        {
          if (localIdentityHashMap.containsKey(localParseObject)) {
            break label166;
          }
          localIdentityHashMap = new IdentityHashMap(localIdentityHashMap);
          localIdentityHashMap.put(localParseObject, localParseObject);
          ParseObject.access$1300(ParseObject.access$300(localParseObject), val$dirtyChildren, val$dirtyFiles, localIdentityHashMap, (IdentityHashMap)paramObject);
          if (!localParseObject.isDirty(false)) {
            break;
          }
          val$dirtyChildren.add(localParseObject);
          return true;
          if (((IdentityHashMap)paramObject).containsKey(localParseObject)) {
            throw new RuntimeException("Found a circular dependency while saving.");
          }
          paramObject = new IdentityHashMap((Map)paramObject);
          ((IdentityHashMap)paramObject).put(localParseObject, localParseObject);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.35
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
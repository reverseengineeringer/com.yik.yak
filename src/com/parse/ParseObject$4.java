package com.parse;

import java.util.Map;

class ParseObject$4
  extends ParseTraverser
{
  ParseObject$4(ParseObject paramParseObject, Map paramMap) {}
  
  protected boolean visit(Object paramObject)
  {
    if ((paramObject instanceof ParseObject))
    {
      paramObject = (ParseObject)paramObject;
      if ((ParseObject.access$000((ParseObject)paramObject) != null) && (((ParseObject)paramObject).isDataAvailable())) {
        val$fetchedObjects.put(ParseObject.access$000((ParseObject)paramObject), paramObject);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
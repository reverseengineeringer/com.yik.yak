package com.parse;

import java.util.Map;

class KnownParseObjectDecoder
  extends ParseDecoder
{
  private Map<String, ParseObject> fetchedObjects;
  
  public KnownParseObjectDecoder(Map<String, ParseObject> paramMap)
  {
    fetchedObjects = paramMap;
  }
  
  protected ParseObject decodePointer(String paramString1, String paramString2)
  {
    if ((fetchedObjects != null) && (fetchedObjects.containsKey(paramString2))) {
      return (ParseObject)fetchedObjects.get(paramString2);
    }
    return super.decodePointer(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.parse.KnownParseObjectDecoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
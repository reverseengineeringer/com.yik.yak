package com.parse;

import N;
import java.util.List;

@ParseClassName("_Pin")
class ParsePin
  extends ParseObject
{
  private static final String KEY_NAME = "_name";
  private static final String KEY_OBJECTS = "_objects";
  
  static N<ParsePin> getParsePin(String paramString)
  {
    ParseQuery localParseQuery = ParseQuery.getQuery(ParsePin.class).whereEqualTo("_name", paramString);
    return OfflineStore.getCurrent().findAsync(localParseQuery, null, null, false, false).c(new ParsePin.1(paramString));
  }
  
  static <T extends ParseObject> N<Void> pinAllObjectsAsync(String paramString, List<T> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return N.a(null);
    }
    return getParsePin(paramString).d(new ParsePin.2(paramList));
  }
  
  static N<Void> unpinAllObjectsAsync(String paramString)
  {
    return getParsePin(paramString).b(new ParsePin.4());
  }
  
  static <T extends ParseObject> N<Void> unpinAllObjectsAsync(String paramString, List<T> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return N.a(null);
    }
    return getParsePin(paramString).d(new ParsePin.3(paramList));
  }
  
  public String getName()
  {
    return getString("_name");
  }
  
  public List<ParseObject> getObjects()
  {
    return getList("_objects");
  }
  
  boolean needsDefaultACL()
  {
    return false;
  }
  
  public void setName(String paramString)
  {
    put("_name", paramString);
  }
  
  public void setObjects(List<ParseObject> paramList)
  {
    put("_objects", paramList);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
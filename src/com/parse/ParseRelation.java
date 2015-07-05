package com.parse;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class ParseRelation<T extends ParseObject>
{
  private String key;
  private Set<ParseObject> knownObjects = new HashSet();
  private Object mutex = new Object();
  private ParseObject parent;
  private String targetClass;
  
  ParseRelation(ParseObject paramParseObject, String paramString)
  {
    parent = paramParseObject;
    key = paramString;
    targetClass = null;
  }
  
  ParseRelation(String paramString)
  {
    parent = null;
    key = null;
    targetClass = paramString;
  }
  
  ParseRelation(JSONObject paramJSONObject, ParseDecoder paramParseDecoder)
  {
    parent = null;
    targetClass = paramJSONObject.optString("className", null);
    key = null;
    paramJSONObject = paramJSONObject.optJSONArray("objects");
    if (paramJSONObject != null)
    {
      int i = 0;
      while (i < paramJSONObject.length())
      {
        knownObjects.add((ParseObject)paramParseDecoder.decode(paramJSONObject.optJSONObject(i)));
        i += 1;
      }
    }
  }
  
  public void add(T paramT)
  {
    synchronized (mutex)
    {
      ParseRelationOperation localParseRelationOperation = new ParseRelationOperation(Collections.singleton(paramT), null);
      targetClass = localParseRelationOperation.getTargetClass();
      parent.performOperation(key, localParseRelationOperation);
      knownObjects.add(paramT);
      return;
    }
  }
  
  void addKnownObject(ParseObject paramParseObject)
  {
    synchronized (mutex)
    {
      knownObjects.add(paramParseObject);
      return;
    }
  }
  
  JSONObject encodeToJSON(ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    synchronized (mutex)
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("__type", "Relation");
      localJSONObject.put("className", targetClass);
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = knownObjects.iterator();
      while (localIterator.hasNext())
      {
        ParseObject localParseObject = (ParseObject)localIterator.next();
        try
        {
          localJSONArray.put(paramParseObjectEncodingStrategy.encodeRelatedObject(localParseObject));
        }
        catch (Exception localException) {}
      }
      localJSONObject.put("objects", localJSONArray);
      return localJSONObject;
    }
  }
  
  void ensureParentAndKey(ParseObject paramParseObject, String paramString)
  {
    synchronized (mutex)
    {
      if (parent == null) {
        parent = paramParseObject;
      }
      if (key == null) {
        key = paramString;
      }
      if (parent != paramParseObject) {
        throw new IllegalStateException("Internal error. One ParseRelation retrieved from two different ParseObjects.");
      }
    }
    if (!key.equals(paramString)) {
      throw new IllegalStateException("Internal error. One ParseRelation retrieved from two different keys.");
    }
  }
  
  public ParseQuery<T> getQuery()
  {
    synchronized (mutex)
    {
      if (targetClass == null)
      {
        localParseQuery = ParseQuery.getQuery(parent.getClassName());
        localParseQuery.redirectClassNameForKey(key);
        localParseQuery.whereRelatedTo(parent, key);
        return localParseQuery;
      }
      ParseQuery localParseQuery = ParseQuery.getQuery(targetClass);
    }
  }
  
  String getTargetClass()
  {
    synchronized (mutex)
    {
      String str = targetClass;
      return str;
    }
  }
  
  boolean hasKnownObject(ParseObject paramParseObject)
  {
    synchronized (mutex)
    {
      boolean bool = knownObjects.contains(paramParseObject);
      return bool;
    }
  }
  
  public void remove(T paramT)
  {
    synchronized (mutex)
    {
      ParseRelationOperation localParseRelationOperation = new ParseRelationOperation(null, Collections.singleton(paramT));
      targetClass = localParseRelationOperation.getTargetClass();
      parent.performOperation(key, localParseRelationOperation);
      knownObjects.remove(paramT);
      return;
    }
  }
  
  void removeKnownObject(ParseObject paramParseObject)
  {
    synchronized (mutex)
    {
      knownObjects.remove(paramParseObject);
      return;
    }
  }
  
  void setTargetClass(String paramString)
  {
    synchronized (mutex)
    {
      targetClass = paramString;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseRelation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
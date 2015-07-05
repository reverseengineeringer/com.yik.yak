package com.parse;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

class ParseRemoveOperation
  implements ParseFieldOperation
{
  protected HashSet<Object> objects = new HashSet();
  
  public ParseRemoveOperation(Object paramObject)
  {
    objects.add(paramObject);
  }
  
  public ParseRemoveOperation(Collection<?> paramCollection)
  {
    objects.addAll(paramCollection);
  }
  
  public Object apply(Object paramObject, ParseObject paramParseObject, String paramString)
  {
    if (paramObject == null) {
      return new ArrayList();
    }
    if ((paramObject instanceof JSONArray)) {
      return new JSONArray((ArrayList)apply(ParseFieldOperations.jsonArrayAsArrayList((JSONArray)paramObject), paramParseObject, paramString));
    }
    if ((paramObject instanceof List))
    {
      paramObject = new ArrayList((List)paramObject);
      ((ArrayList)paramObject).removeAll(objects);
      paramString = new ArrayList(objects);
      paramString.removeAll((Collection)paramObject);
      paramParseObject = new HashSet();
      paramString = paramString.iterator();
      Object localObject;
      while (paramString.hasNext())
      {
        localObject = paramString.next();
        if ((localObject instanceof ParseObject)) {
          paramParseObject.add(((ParseObject)localObject).getObjectId());
        }
      }
      paramString = ((ArrayList)paramObject).iterator();
      while (paramString.hasNext())
      {
        localObject = paramString.next();
        if (((localObject instanceof ParseObject)) && (paramParseObject.contains(((ParseObject)localObject).getObjectId()))) {
          paramString.remove();
        }
      }
      return paramObject;
    }
    throw new IllegalArgumentException("Operation is invalid after previous operation.");
  }
  
  public JSONObject encode(ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("__op", "Remove");
    localJSONObject.put("objects", Parse.encode(new ArrayList(objects), paramParseObjectEncodingStrategy));
    return localJSONObject;
  }
  
  public ParseFieldOperation mergeWithPrevious(ParseFieldOperation paramParseFieldOperation)
  {
    if (paramParseFieldOperation == null) {
      return this;
    }
    if ((paramParseFieldOperation instanceof ParseDeleteOperation)) {
      return new ParseSetOperation(objects);
    }
    if ((paramParseFieldOperation instanceof ParseSetOperation))
    {
      paramParseFieldOperation = ((ParseSetOperation)paramParseFieldOperation).getValue();
      if (((paramParseFieldOperation instanceof JSONArray)) || ((paramParseFieldOperation instanceof List))) {
        return new ParseSetOperation(apply(paramParseFieldOperation, null, null));
      }
      throw new IllegalArgumentException("You can only add an item to a List or JSONArray.");
    }
    if ((paramParseFieldOperation instanceof ParseRemoveOperation))
    {
      paramParseFieldOperation = new HashSet(objects);
      paramParseFieldOperation.addAll(objects);
      return new ParseRemoveOperation(paramParseFieldOperation);
    }
    throw new IllegalArgumentException("Operation is invalid after previous operation.");
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseRemoveOperation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

class ParseAddUniqueOperation
  implements ParseFieldOperation
{
  protected LinkedHashSet<Object> objects = new LinkedHashSet();
  
  public ParseAddUniqueOperation(Object paramObject)
  {
    if ((paramObject instanceof Collection))
    {
      objects.addAll((Collection)paramObject);
      return;
    }
    objects.add(paramObject);
  }
  
  public Object apply(Object paramObject, ParseObject paramParseObject, String paramString)
  {
    if (paramObject == null) {
      return new ArrayList(objects);
    }
    if ((paramObject instanceof JSONArray)) {
      return new JSONArray((ArrayList)apply(ParseFieldOperations.jsonArrayAsArrayList((JSONArray)paramObject), paramParseObject, paramString));
    }
    if ((paramObject instanceof List))
    {
      paramObject = new ArrayList((List)paramObject);
      paramParseObject = new HashMap();
      int i = 0;
      while (i < ((ArrayList)paramObject).size())
      {
        if ((((ArrayList)paramObject).get(i) instanceof ParseObject)) {
          paramParseObject.put(((ParseObject)((ArrayList)paramObject).get(i)).getObjectId(), Integer.valueOf(i));
        }
        i += 1;
      }
      paramString = objects.iterator();
      while (paramString.hasNext())
      {
        Object localObject = paramString.next();
        if ((localObject instanceof ParseObject))
        {
          String str = ((ParseObject)localObject).getObjectId();
          if ((str != null) && (paramParseObject.containsKey(str))) {
            ((ArrayList)paramObject).set(((Integer)paramParseObject.get(str)).intValue(), localObject);
          } else if (!((ArrayList)paramObject).contains(localObject)) {
            ((ArrayList)paramObject).add(localObject);
          }
        }
        else if (!((ArrayList)paramObject).contains(localObject))
        {
          ((ArrayList)paramObject).add(localObject);
        }
      }
      return paramObject;
    }
    throw new IllegalArgumentException("Operation is invalid after previous operation.");
  }
  
  public JSONObject encode(ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("__op", "AddUnique");
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
    if ((paramParseFieldOperation instanceof ParseAddUniqueOperation)) {
      return new ParseAddUniqueOperation((List)apply(new ArrayList(objects), null, null));
    }
    throw new IllegalArgumentException("Operation is invalid after previous operation.");
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseAddUniqueOperation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
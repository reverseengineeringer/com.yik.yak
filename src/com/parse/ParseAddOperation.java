package com.parse;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

class ParseAddOperation
  implements ParseFieldOperation
{
  protected final ArrayList<Object> objects = new ArrayList();
  
  public ParseAddOperation(Object paramObject)
  {
    objects.add(paramObject);
  }
  
  public ParseAddOperation(Collection<?> paramCollection)
  {
    objects.addAll(paramCollection);
  }
  
  public Object apply(Object paramObject, ParseObject paramParseObject, String paramString)
  {
    if (paramObject == null) {
      return objects;
    }
    if ((paramObject instanceof JSONArray)) {
      return new JSONArray((ArrayList)apply(ParseFieldOperations.jsonArrayAsArrayList((JSONArray)paramObject), paramParseObject, paramString));
    }
    if ((paramObject instanceof List))
    {
      paramObject = new ArrayList((List)paramObject);
      ((ArrayList)paramObject).addAll(objects);
      return paramObject;
    }
    throw new IllegalArgumentException("Operation is invalid after previous operation.");
  }
  
  public JSONObject encode(ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("__op", "Add");
    localJSONObject.put("objects", Parse.encode(objects, paramParseObjectEncodingStrategy));
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
      if ((paramParseFieldOperation instanceof JSONArray))
      {
        paramParseFieldOperation = ParseFieldOperations.jsonArrayAsArrayList((JSONArray)paramParseFieldOperation);
        paramParseFieldOperation.addAll(objects);
        return new ParseSetOperation(new JSONArray(paramParseFieldOperation));
      }
      if ((paramParseFieldOperation instanceof List))
      {
        paramParseFieldOperation = new ArrayList((List)paramParseFieldOperation);
        paramParseFieldOperation.addAll(objects);
        return new ParseSetOperation(paramParseFieldOperation);
      }
      throw new IllegalArgumentException("You can only add an item to a List or JSONArray.");
    }
    if ((paramParseFieldOperation instanceof ParseAddOperation))
    {
      paramParseFieldOperation = new ArrayList(objects);
      paramParseFieldOperation.addAll(objects);
      return new ParseAddOperation(paramParseFieldOperation);
    }
    throw new IllegalArgumentException("Operation is invalid after previous operation.");
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseAddOperation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
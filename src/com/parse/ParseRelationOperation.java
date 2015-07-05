package com.parse;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

class ParseRelationOperation<T extends ParseObject>
  implements ParseFieldOperation
{
  private Set<ParseObject> relationsToAdd;
  private Set<ParseObject> relationsToRemove;
  private String targetClass;
  
  private ParseRelationOperation(String paramString, Set<ParseObject> paramSet1, Set<ParseObject> paramSet2)
  {
    targetClass = paramString;
    relationsToAdd = new HashSet(paramSet1);
    relationsToRemove = new HashSet(paramSet2);
  }
  
  ParseRelationOperation(Set<T> paramSet1, Set<T> paramSet2)
  {
    targetClass = null;
    relationsToAdd = new HashSet();
    relationsToRemove = new HashSet();
    if (paramSet1 != null)
    {
      paramSet1 = paramSet1.iterator();
      while (paramSet1.hasNext())
      {
        ParseObject localParseObject = (ParseObject)paramSet1.next();
        addParseObjectToSet(localParseObject, relationsToAdd);
        if (targetClass == null) {
          targetClass = localParseObject.getClassName();
        } else if (!targetClass.equals(localParseObject.getClassName())) {
          throw new IllegalArgumentException("All objects in a relation must be of the same class.");
        }
      }
    }
    if (paramSet2 != null)
    {
      paramSet1 = paramSet2.iterator();
      while (paramSet1.hasNext())
      {
        paramSet2 = (ParseObject)paramSet1.next();
        addParseObjectToSet(paramSet2, relationsToRemove);
        if (targetClass == null) {
          targetClass = paramSet2.getClassName();
        } else if (!targetClass.equals(paramSet2.getClassName())) {
          throw new IllegalArgumentException("All objects in a relation must be of the same class.");
        }
      }
    }
    if (targetClass == null) {
      throw new IllegalArgumentException("Cannot create a ParseRelationOperation with no objects.");
    }
  }
  
  private void addAllParseObjectsToSet(Collection<ParseObject> paramCollection, Set<ParseObject> paramSet)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      addParseObjectToSet((ParseObject)paramCollection.next(), paramSet);
    }
  }
  
  private void addParseObjectToSet(ParseObject paramParseObject, Set<ParseObject> paramSet)
  {
    if ((OfflineStore.getCurrent() != null) || (paramParseObject.getObjectId() == null))
    {
      paramSet.add(paramParseObject);
      return;
    }
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      ParseObject localParseObject = (ParseObject)localIterator.next();
      if (paramParseObject.getObjectId().equals(localParseObject.getObjectId())) {
        paramSet.remove(localParseObject);
      }
    }
    paramSet.add(paramParseObject);
  }
  
  private void removeAllParseObjectsFromSet(Collection<ParseObject> paramCollection, Set<ParseObject> paramSet)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      removeParseObjectFromSet((ParseObject)paramCollection.next(), paramSet);
    }
  }
  
  private void removeParseObjectFromSet(ParseObject paramParseObject, Set<ParseObject> paramSet)
  {
    if ((OfflineStore.getCurrent() != null) || (paramParseObject.getObjectId() == null)) {
      paramSet.remove(paramParseObject);
    }
    for (;;)
    {
      return;
      Iterator localIterator = paramSet.iterator();
      while (localIterator.hasNext())
      {
        ParseObject localParseObject = (ParseObject)localIterator.next();
        if (paramParseObject.getObjectId().equals(localParseObject.getObjectId())) {
          paramSet.remove(localParseObject);
        }
      }
    }
  }
  
  public Object apply(Object paramObject, ParseObject paramParseObject, String paramString)
  {
    if (paramObject == null)
    {
      paramObject = new ParseRelation(paramParseObject, paramString);
      ((ParseRelation)paramObject).setTargetClass(targetClass);
    }
    do
    {
      do
      {
        paramParseObject = relationsToAdd.iterator();
        while (paramParseObject.hasNext()) {
          ((ParseRelation)paramObject).addKnownObject((ParseObject)paramParseObject.next());
        }
        if (!(paramObject instanceof ParseRelation)) {
          break;
        }
        paramParseObject = (ParseRelation)paramObject;
        paramObject = paramParseObject;
      } while (targetClass == null);
      paramObject = paramParseObject;
    } while (targetClass.equals(paramParseObject.getTargetClass()));
    throw new IllegalArgumentException("Related object object must be of class " + paramParseObject.getTargetClass() + ", but " + targetClass + " was passed in.");
    throw new IllegalArgumentException("Operation is invalid after previous operation.");
    paramParseObject = relationsToRemove.iterator();
    while (paramParseObject.hasNext()) {
      ((ParseRelation)paramObject).removeKnownObject((ParseObject)paramParseObject.next());
    }
    return paramObject;
  }
  
  JSONArray convertSetToArray(Set<ParseObject> paramSet, ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    JSONArray localJSONArray = new JSONArray();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      localJSONArray.put(Parse.encode((ParseObject)paramSet.next(), paramParseObjectEncodingStrategy));
    }
    return localJSONArray;
  }
  
  public JSONObject encode(ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    JSONObject localJSONObject1;
    if (relationsToAdd.size() > 0)
    {
      localJSONObject1 = new JSONObject();
      localJSONObject1.put("__op", "AddRelation");
      localJSONObject1.put("objects", convertSetToArray(relationsToAdd, paramParseObjectEncodingStrategy));
    }
    for (;;)
    {
      JSONObject localJSONObject2;
      if (relationsToRemove.size() > 0)
      {
        localJSONObject2 = new JSONObject();
        localJSONObject2.put("__op", "RemoveRelation");
        localJSONObject2.put("objects", convertSetToArray(relationsToRemove, paramParseObjectEncodingStrategy));
      }
      for (paramParseObjectEncodingStrategy = localJSONObject2;; paramParseObjectEncodingStrategy = null)
      {
        if ((localJSONObject1 != null) && (paramParseObjectEncodingStrategy != null))
        {
          localJSONObject2 = new JSONObject();
          localJSONObject2.put("__op", "Batch");
          JSONArray localJSONArray = new JSONArray();
          localJSONArray.put(localJSONObject1);
          localJSONArray.put(paramParseObjectEncodingStrategy);
          localJSONObject2.put("ops", localJSONArray);
        }
        do
        {
          return localJSONObject2;
          localJSONObject2 = localJSONObject1;
        } while (localJSONObject1 != null);
        if (paramParseObjectEncodingStrategy != null) {
          return paramParseObjectEncodingStrategy;
        }
        throw new IllegalArgumentException("A ParseRelationOperation was created without any data.");
      }
      localJSONObject1 = null;
    }
  }
  
  String getTargetClass()
  {
    return targetClass;
  }
  
  public ParseFieldOperation mergeWithPrevious(ParseFieldOperation paramParseFieldOperation)
  {
    if (paramParseFieldOperation == null) {
      return this;
    }
    if ((paramParseFieldOperation instanceof ParseDeleteOperation)) {
      throw new IllegalArgumentException("You can't modify a relation after deleting it.");
    }
    if ((paramParseFieldOperation instanceof ParseRelationOperation))
    {
      Object localObject = (ParseRelationOperation)paramParseFieldOperation;
      if ((targetClass != null) && (!targetClass.equals(targetClass))) {
        throw new IllegalArgumentException("Related object object must be of class " + targetClass + ", but " + targetClass + " was passed in.");
      }
      paramParseFieldOperation = new HashSet(relationsToAdd);
      localObject = new HashSet(relationsToRemove);
      if (relationsToAdd != null)
      {
        addAllParseObjectsToSet(relationsToAdd, paramParseFieldOperation);
        removeAllParseObjectsFromSet(relationsToAdd, (Set)localObject);
      }
      if (relationsToRemove != null)
      {
        removeAllParseObjectsFromSet(relationsToRemove, paramParseFieldOperation);
        addAllParseObjectsToSet(relationsToRemove, (Set)localObject);
      }
      return new ParseRelationOperation(targetClass, paramParseFieldOperation, (Set)localObject);
    }
    throw new IllegalArgumentException("Operation is invalid after previous operation.");
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseRelationOperation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
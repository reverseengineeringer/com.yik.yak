package com.parse;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import org.json.JSONObject;

class ParseOperationSet
  extends HashMap<String, ParseFieldOperation>
{
  private static final String REST_KEY_IS_SAVE_EVENTUALLY = "__isSaveEventually";
  private static final String REST_KEY_UUID = "__uuid";
  private static final long serialVersionUID = 1L;
  private boolean isSaveEventually = false;
  private String uuid;
  
  public ParseOperationSet()
  {
    uuid = UUID.randomUUID().toString();
  }
  
  private ParseOperationSet(String paramString)
  {
    uuid = paramString;
  }
  
  public static ParseOperationSet fromRest(JSONObject paramJSONObject, ParseDecoder paramParseDecoder)
  {
    Object localObject1 = (String)paramJSONObject.remove("__uuid");
    label47:
    String str;
    if (localObject1 == null)
    {
      localObject1 = new ParseOperationSet();
      boolean bool = paramJSONObject.optBoolean("__isSaveEventually");
      paramJSONObject.remove("__isSaveEventually");
      ((ParseOperationSet)localObject1).setIsSaveEventually(bool);
      Iterator localIterator = paramJSONObject.keys();
      if (!localIterator.hasNext()) {
        return localObject1;
      }
      str = (String)localIterator.next();
      localObject2 = paramParseDecoder.decode(paramJSONObject.get(str));
      if (str.equals("ACL")) {
        localObject2 = ParseACL.createACLFromJSONObject(paramJSONObject.getJSONObject(str), paramParseDecoder);
      }
      if (!(localObject2 instanceof ParseFieldOperation)) {
        break label142;
      }
    }
    label142:
    for (Object localObject2 = (ParseFieldOperation)localObject2;; localObject2 = new ParseSetOperation(localObject2))
    {
      ((ParseOperationSet)localObject1).put(str, localObject2);
      break label47;
      localObject1 = new ParseOperationSet((String)localObject1);
      break;
    }
    return (ParseOperationSet)localObject1;
  }
  
  public String getUUID()
  {
    return uuid;
  }
  
  public boolean isSaveEventually()
  {
    return isSaveEventually;
  }
  
  public void mergeFrom(ParseOperationSet paramParseOperationSet)
  {
    Iterator localIterator = paramParseOperationSet.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      ParseFieldOperation localParseFieldOperation2 = (ParseFieldOperation)paramParseOperationSet.get(str);
      ParseFieldOperation localParseFieldOperation3 = (ParseFieldOperation)get(str);
      ParseFieldOperation localParseFieldOperation1 = localParseFieldOperation2;
      if (localParseFieldOperation3 != null) {
        localParseFieldOperation1 = localParseFieldOperation3.mergeWithPrevious(localParseFieldOperation2);
      }
      put(str, localParseFieldOperation1);
    }
  }
  
  public void setIsSaveEventually(boolean paramBoolean)
  {
    isSaveEventually = paramBoolean;
  }
  
  public JSONObject toRest(ParseObjectEncodingStrategy paramParseObjectEncodingStrategy, ArrayList<String> paramArrayList)
  {
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator = keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localJSONObject.put(str, ((ParseFieldOperation)get(str)).encode(paramParseObjectEncodingStrategy));
    }
    localJSONObject.put("__uuid", uuid);
    if (isSaveEventually) {
      localJSONObject.put("__isSaveEventually", true);
    }
    if (paramArrayList != null) {
      paramArrayList.add(uuid);
    }
    return localJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseOperationSet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
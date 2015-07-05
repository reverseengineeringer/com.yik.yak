package com.parse;

import java.util.Map;
import org.json.JSONObject;

class OfflineStore$13$1
  extends ParseTraverser
{
  OfflineStore$13$1(OfflineStore.13 param13, Map paramMap) {}
  
  protected boolean visit(Object paramObject)
  {
    if (((paramObject instanceof JSONObject)) && (((JSONObject)paramObject).optString("__type").equals("OfflineObject")))
    {
      paramObject = ((JSONObject)paramObject).optString("uuid");
      val$offlineObjects.put(paramObject, OfflineStore.access$600(this$1.this$0, (String)paramObject, this$1.val$db));
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.13.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
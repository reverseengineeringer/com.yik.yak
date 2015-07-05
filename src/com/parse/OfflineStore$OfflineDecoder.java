package com.parse;

import R;
import java.util.Map;
import org.json.JSONObject;

class OfflineStore$OfflineDecoder
  extends ParseDecoder
{
  private Map<String, R<ParseObject>> offlineObjects;
  
  private OfflineStore$OfflineDecoder(Map<String, R<ParseObject>> paramMap)
  {
    Map localMap;
    offlineObjects = localMap;
  }
  
  public Object decode(Object paramObject)
  {
    if (((paramObject instanceof JSONObject)) && (((JSONObject)paramObject).optString("__type").equals("OfflineObject")))
    {
      paramObject = ((JSONObject)paramObject).optString("uuid");
      return ((R)offlineObjects.get(paramObject)).e();
    }
    return super.decode(paramObject);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.OfflineDecoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
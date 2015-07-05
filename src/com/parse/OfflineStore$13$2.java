package com.parse;

import Q;
import R;
import java.util.Map;
import org.json.JSONObject;

class OfflineStore$13$2
  implements Q<Void, Void>
{
  OfflineStore$13$2(OfflineStore.13 param13, JSONObject paramJSONObject, Map paramMap) {}
  
  public Void then(R<Void> paramR)
  {
    this$1.val$object.mergeREST(val$json, new OfflineStore.OfflineDecoder(this$1.this$0, val$offlineObjects, null));
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.13.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
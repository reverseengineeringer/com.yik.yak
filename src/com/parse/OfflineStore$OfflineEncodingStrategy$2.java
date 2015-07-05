package com.parse;

import Q;
import R;
import org.json.JSONObject;

class OfflineStore$OfflineEncodingStrategy$2
  implements Q<String, Void>
{
  OfflineStore$OfflineEncodingStrategy$2(OfflineStore.OfflineEncodingStrategy paramOfflineEncodingStrategy, JSONObject paramJSONObject) {}
  
  public Void then(R<String> paramR)
  {
    val$result.put("uuid", paramR.e());
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.OfflineEncodingStrategy.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import M;
import N;
import org.json.JSONObject;

class OfflineStore$OfflineEncodingStrategy$2
  implements M<String, Void>
{
  OfflineStore$OfflineEncodingStrategy$2(OfflineStore.OfflineEncodingStrategy paramOfflineEncodingStrategy, JSONObject paramJSONObject) {}
  
  public Void then(N<String> paramN)
  {
    val$result.put("uuid", paramN.e());
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.OfflineEncodingStrategy.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import M;
import N;
import org.json.JSONObject;

final class PushRouter$9
  implements M<Void, Void>
{
  PushRouter$9(JSONObject paramJSONObject) {}
  
  public Void then(N<Void> paramN)
  {
    if (val$pushPayload != null) {
      PushRouter.access$000().handlePpnsPush(val$pushPayload);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.PushRouter.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
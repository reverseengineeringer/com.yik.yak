package com.parse;

import M;
import N;
import org.json.JSONObject;

final class PushRouter$14
  implements M<Void, Void>
{
  PushRouter$14(PushRouter.PushListener paramPushListener, JSONObject paramJSONObject, PushRouter.HandlePushResult paramHandlePushResult) {}
  
  public Void then(N<Void> paramN)
  {
    val$finalListener.onPushHandled(val$pushData, val$result);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.PushRouter.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import org.json.JSONObject;

final class OfflineQueryLogic$4
  implements OfflineQueryLogic.Decider
{
  public boolean decide(Object paramObject1, Object paramObject2)
  {
    if ((paramObject2 == null) || (paramObject2 == JSONObject.NULL)) {}
    while (OfflineQueryLogic.access$000(paramObject1, paramObject2) >= 0) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
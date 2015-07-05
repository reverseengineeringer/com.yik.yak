package com.parse;

import org.json.JSONObject;

final class ParseTestUtils$1
  implements PushRouter.PushListener
{
  public void onPushHandled(JSONObject paramJSONObject, PushRouter.HandlePushResult paramHandlePushResult)
  {
    if ((paramHandlePushResult == PushRouter.HandlePushResult.INVOKED_PARSE_PUSH_BROADCAST_RECEIVER) || (paramHandlePushResult == PushRouter.HandlePushResult.SHOW_NOTIFICATION) || (paramHandlePushResult == PushRouter.HandlePushResult.SHOW_NOTIFICATION_AND_BROADCAST_INTENT)) {
      ParseTestUtils.access$208();
    }
    try
    {
      paramHandlePushResult = ParseTestUtils.access$300();
      if (paramHandlePushResult != null) {
        paramHandlePushResult.onPushRouted(paramJSONObject);
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseTestUtils.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
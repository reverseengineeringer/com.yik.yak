package com.parse;

import org.json.JSONObject;

abstract interface PushRouter$PushListener
{
  public abstract void onPushHandled(JSONObject paramJSONObject, PushRouter.HandlePushResult paramHandlePushResult);
}

/* Location:
 * Qualified Name:     com.parse.PushRouter.PushListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
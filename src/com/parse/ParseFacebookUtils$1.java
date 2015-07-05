package com.parse;

import org.json.JSONObject;

final class ParseFacebookUtils$1
  implements ParseAuthenticationProvider.ParseAuthenticationCallback
{
  ParseFacebookUtils$1(ParseUser paramParseUser, SaveCallback paramSaveCallback) {}
  
  public void onCancel()
  {
    if (val$callback != null) {
      val$callback.internalDone(null, null);
    }
  }
  
  public void onError(Throwable paramThrowable)
  {
    if (val$callback != null) {
      val$callback.internalDone(null, new ParseException(paramThrowable));
    }
  }
  
  public void onSuccess(JSONObject paramJSONObject)
  {
    Parse.callbackOnMainThreadAsync(val$user.linkWithAsync(ParseFacebookUtils.provider.getAuthType(), paramJSONObject), val$callback, true);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFacebookUtils.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
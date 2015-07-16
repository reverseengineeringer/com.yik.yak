package com.parse;

import Z;
import org.json.JSONObject;

final class ParseUser$22
  implements ParseAuthenticationProvider.ParseAuthenticationCallback
{
  ParseUser$22(Z paramZ) {}
  
  public void onCancel()
  {
    val$tcs.c();
  }
  
  public void onError(Throwable paramThrowable)
  {
    val$tcs.b(new ParseException(paramThrowable));
  }
  
  public void onSuccess(JSONObject paramJSONObject)
  {
    val$tcs.b(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
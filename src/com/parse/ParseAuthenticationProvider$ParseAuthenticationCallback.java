package com.parse;

import org.json.JSONObject;

public abstract interface ParseAuthenticationProvider$ParseAuthenticationCallback
{
  public abstract void onCancel();
  
  public abstract void onError(Throwable paramThrowable);
  
  public abstract void onSuccess(JSONObject paramJSONObject);
}

/* Location:
 * Qualified Name:     com.parse.ParseAuthenticationProvider.ParseAuthenticationCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
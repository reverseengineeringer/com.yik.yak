package com.parse;

import org.json.JSONObject;

abstract interface ParseAuthenticationProvider
{
  public abstract void authenticate(ParseAuthenticationProvider.ParseAuthenticationCallback paramParseAuthenticationCallback);
  
  public abstract void cancel();
  
  public abstract void deauthenticate();
  
  public abstract String getAuthType();
  
  public abstract boolean restoreAuthentication(JSONObject paramJSONObject);
}

/* Location:
 * Qualified Name:     com.parse.ParseAuthenticationProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import M;
import N;
import org.json.JSONObject;

class ParseUser$28
  implements M<JSONObject, N<Void>>
{
  ParseUser$28(ParseUser paramParseUser, ParseAuthenticationProvider paramParseAuthenticationProvider) {}
  
  public N<Void> then(N<JSONObject> paramN)
  {
    return this$0.linkWithAsync(val$authenticator.getAuthType(), (JSONObject)paramN.e());
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.28
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
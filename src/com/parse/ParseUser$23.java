package com.parse;

import M;
import N;
import org.json.JSONObject;

final class ParseUser$23
  implements M<JSONObject, N<ParseUser>>
{
  ParseUser$23(ParseAuthenticationProvider paramParseAuthenticationProvider) {}
  
  public N<ParseUser> then(N<JSONObject> paramN)
  {
    return ParseUser.logInWithAsync(val$authenticator.getAuthType(), (JSONObject)paramN.e());
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
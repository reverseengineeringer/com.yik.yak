package com.parse;

import Q;
import R;
import org.json.JSONObject;

final class ParseUser$23
  implements Q<JSONObject, R<ParseUser>>
{
  ParseUser$23(ParseAuthenticationProvider paramParseAuthenticationProvider) {}
  
  public R<ParseUser> then(R<JSONObject> paramR)
  {
    return ParseUser.logInWithAsync(val$authenticator.getAuthType(), (JSONObject)paramR.e());
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
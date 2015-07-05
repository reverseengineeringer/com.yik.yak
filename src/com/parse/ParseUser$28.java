package com.parse;

import Q;
import R;
import org.json.JSONObject;

class ParseUser$28
  implements Q<JSONObject, R<Void>>
{
  ParseUser$28(ParseUser paramParseUser, ParseAuthenticationProvider paramParseAuthenticationProvider) {}
  
  public R<Void> then(R<JSONObject> paramR)
  {
    return this$0.linkWithAsync(val$authenticator.getAuthType(), (JSONObject)paramR.e());
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.28
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
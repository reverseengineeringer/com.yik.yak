package com.parse;

import M;
import N;
import org.json.JSONObject;

class ParseUser$14$3
  implements M<Object, N<Void>>
{
  ParseUser$14$3(ParseUser.14 param14, ParseUser paramParseUser, ParseOperationSet paramParseOperationSet) {}
  
  public N<Void> then(N<Object> paramN)
  {
    return val$user.handleSaveResultAsync((JSONObject)paramN.e(), val$operations);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.14.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
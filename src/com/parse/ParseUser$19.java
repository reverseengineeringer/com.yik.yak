package com.parse;

import L;
import M;
import N;
import org.json.JSONObject;

class ParseUser$19
  implements M<Object, N<JSONObject>>
{
  ParseUser$19(ParseUser paramParseUser, L paramL) {}
  
  public N<JSONObject> then(N<Object> paramN)
  {
    paramN = (JSONObject)paramN.e();
    return this$0.handleSaveResultAsync(paramN, (ParseOperationSet)val$operations.a()).c(new ParseUser.19.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
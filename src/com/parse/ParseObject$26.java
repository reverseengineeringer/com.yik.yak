package com.parse;

import M;
import N;
import org.json.JSONObject;

class ParseObject$26
  implements M<ParseCommand, N<JSONObject>>
{
  ParseObject$26(ParseObject paramParseObject) {}
  
  public N<JSONObject> then(N<ParseCommand> paramN)
  {
    return ((ParseCommand)paramN.e()).executeAsync().i();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.26
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
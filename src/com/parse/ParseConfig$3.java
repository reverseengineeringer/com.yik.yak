package com.parse;

import M;
import N;
import org.json.JSONObject;

final class ParseConfig$3
  implements M<Void, N<JSONObject>>
{
  ParseConfig$3(ParseCommand paramParseCommand) {}
  
  public N<JSONObject> then(N<Void> paramN)
  {
    return val$command.executeAsync().i();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseConfig.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
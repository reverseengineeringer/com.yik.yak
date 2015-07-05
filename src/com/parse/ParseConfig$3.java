package com.parse;

import Q;
import R;
import org.json.JSONObject;

final class ParseConfig$3
  implements Q<Void, R<JSONObject>>
{
  ParseConfig$3(ParseCommand paramParseCommand) {}
  
  public R<JSONObject> then(R<Void> paramR)
  {
    return val$command.executeAsync().i();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseConfig.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
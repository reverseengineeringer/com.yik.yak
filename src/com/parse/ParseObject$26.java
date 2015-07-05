package com.parse;

import Q;
import R;
import org.json.JSONObject;

class ParseObject$26
  implements Q<ParseCommand, R<JSONObject>>
{
  ParseObject$26(ParseObject paramParseObject) {}
  
  public R<JSONObject> then(R<ParseCommand> paramR)
  {
    return ((ParseCommand)paramR.e()).executeAsync().i();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.26
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
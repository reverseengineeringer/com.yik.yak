package com.parse;

import M;
import N;
import org.json.JSONObject;

class ParseUser$5$1
  implements M<Object, N<Void>>
{
  ParseUser$5$1(ParseUser.5 param5, ParseOperationSet paramParseOperationSet) {}
  
  public N<Void> then(N<Object> paramN)
  {
    return this$1.this$0.handleSaveResultAsync((JSONObject)paramN.e(), val$operations).b(new ParseUser.5.1.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.5.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
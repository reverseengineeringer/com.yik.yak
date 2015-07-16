package com.parse;

import L;
import M;
import N;
import org.json.JSONObject;

class ParseObject$10$1
  implements M<Object, N<Void>>
{
  ParseObject$10$1(ParseObject.10 param10) {}
  
  public N<Void> then(N<Object> paramN)
  {
    JSONObject localJSONObject = (JSONObject)paramN.e();
    return this$1.this$0.handleSaveResultAsync(localJSONObject, (ParseOperationSet)this$1.val$operations.a()).b(new ParseObject.10.1.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.10.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
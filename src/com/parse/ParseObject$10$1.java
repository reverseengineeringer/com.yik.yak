package com.parse;

import P;
import Q;
import R;
import org.json.JSONObject;

class ParseObject$10$1
  implements Q<Object, R<Void>>
{
  ParseObject$10$1(ParseObject.10 param10) {}
  
  public R<Void> then(R<Object> paramR)
  {
    JSONObject localJSONObject = (JSONObject)paramR.e();
    return this$1.this$0.handleSaveResultAsync(localJSONObject, (ParseOperationSet)this$1.val$operations.a()).b(new ParseObject.10.1.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.10.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.parse;

import P;
import Q;
import R;
import org.json.JSONObject;

class ParseUser$19
  implements Q<Object, R<JSONObject>>
{
  ParseUser$19(ParseUser paramParseUser, P paramP) {}
  
  public R<JSONObject> then(R<Object> paramR)
  {
    paramR = (JSONObject)paramR.e();
    return this$0.handleSaveResultAsync(paramR, (ParseOperationSet)val$operations.a()).c(new ParseUser.19.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
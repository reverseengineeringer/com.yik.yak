package com.parse;

import M;
import N;
import org.json.JSONObject;

class ParseObject$13
  implements M<Object, N<Void>>
{
  ParseObject$13(ParseObject paramParseObject, ParseOperationSet paramParseOperationSet) {}
  
  public N<Void> then(N<Object> paramN)
  {
    paramN = (JSONObject)paramN.e();
    return this$0.handleSaveEventuallyResultAsync(paramN, val$operationSet);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
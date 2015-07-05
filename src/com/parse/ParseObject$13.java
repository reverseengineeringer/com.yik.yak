package com.parse;

import Q;
import R;
import org.json.JSONObject;

class ParseObject$13
  implements Q<Object, R<Void>>
{
  ParseObject$13(ParseObject paramParseObject, ParseOperationSet paramParseOperationSet) {}
  
  public R<Void> then(R<Object> paramR)
  {
    paramR = (JSONObject)paramR.e();
    return this$0.handleSaveEventuallyResultAsync(paramR, val$operationSet);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
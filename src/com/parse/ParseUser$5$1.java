package com.parse;

import Q;
import R;
import org.json.JSONObject;

class ParseUser$5$1
  implements Q<Object, R<Void>>
{
  ParseUser$5$1(ParseUser.5 param5, ParseOperationSet paramParseOperationSet) {}
  
  public R<Void> then(R<Object> paramR)
  {
    return this$1.this$0.handleSaveResultAsync((JSONObject)paramR.e(), val$operations).b(new ParseUser.5.1.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.5.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
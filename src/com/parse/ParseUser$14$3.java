package com.parse;

import Q;
import R;
import org.json.JSONObject;

class ParseUser$14$3
  implements Q<Object, R<Void>>
{
  ParseUser$14$3(ParseUser.14 param14, ParseUser paramParseUser, ParseOperationSet paramParseOperationSet) {}
  
  public R<Void> then(R<Object> paramR)
  {
    return val$user.handleSaveResultAsync((JSONObject)paramR.e(), val$operations);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.14.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
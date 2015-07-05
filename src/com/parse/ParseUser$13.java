package com.parse;

import Q;
import R;
import org.json.JSONObject;

class ParseUser$13
  implements Q<Void, R<Void>>
{
  ParseUser$13(ParseUser paramParseUser, String paramString) {}
  
  public R<Void> then(R<Void> arg1)
  {
    synchronized (this$0.mutex)
    {
      if (ParseUser.access$700(this$0).has(val$authType))
      {
        ParseUser.access$700(this$0).put(val$authType, JSONObject.NULL);
        ParseUser.access$402(this$0, true);
        localR = this$0.saveInBackground();
        return localR;
      }
      R localR = R.a(null);
      return localR;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
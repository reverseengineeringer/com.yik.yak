package com.parse;

import Q;
import R;
import org.json.JSONObject;

final class ParseUser$7
  implements Q<Object, R<ParseUser>>
{
  public R<ParseUser> then(R<Object> paramR)
  {
    if (paramR.e() == JSONObject.NULL) {
      throw new ParseException(101, "invalid login credentials");
    }
    paramR = (ParseUser)ParseObject.fromJSON((JSONObject)paramR.e(), "_User", true);
    return ParseUser.access$000(paramR).b(new ParseUser.7.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
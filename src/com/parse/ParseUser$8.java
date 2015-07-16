package com.parse;

import M;
import N;
import org.json.JSONObject;

final class ParseUser$8
  implements M<Object, N<ParseUser>>
{
  public N<ParseUser> then(N<Object> paramN)
  {
    if (paramN.e() == JSONObject.NULL) {
      throw new ParseException(101, "invalid login credentials");
    }
    paramN = (ParseUser)ParseObject.fromJSON((JSONObject)paramN.e(), "_User", true);
    return ParseUser.access$000(paramN).b(new ParseUser.8.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
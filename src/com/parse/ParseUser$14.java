package com.parse;

import M;
import N;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

final class ParseUser$14
  implements M<Void, N<ParseUser>>
{
  ParseUser$14(String paramString, JSONObject paramJSONObject) {}
  
  public N<ParseUser> then(N<Void> paramN)
  {
    paramN = (ParseUser)ParseObject.create(ParseUser.class);
    try
    {
      ParseUser.access$700(paramN).put(val$authType, val$authData);
      ParseUser.access$800(paramN).add(val$authType);
      ParseOperationSet localParseOperationSet = paramN.startSave();
      return ParseUser.access$900(paramN, localParseOperationSet).executeAsync().b(new ParseUser.14.3(this, paramN, localParseOperationSet)).b(new ParseUser.14.2(this, paramN)).a(new ParseUser.14.1(this, paramN));
    }
    catch (JSONException paramN)
    {
      throw new ParseException(paramN);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
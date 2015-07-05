package com.parse;

import Q;
import R;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

final class ParseUser$14
  implements Q<Void, R<ParseUser>>
{
  ParseUser$14(String paramString, JSONObject paramJSONObject) {}
  
  public R<ParseUser> then(R<Void> paramR)
  {
    paramR = (ParseUser)ParseObject.create(ParseUser.class);
    try
    {
      ParseUser.access$700(paramR).put(val$authType, val$authData);
      ParseUser.access$800(paramR).add(val$authType);
      ParseOperationSet localParseOperationSet = paramR.startSave();
      return ParseUser.access$900(paramR, localParseOperationSet).executeAsync().b(new ParseUser.14.3(this, paramR, localParseOperationSet)).b(new ParseUser.14.2(this, paramR)).a(new ParseUser.14.1(this, paramR));
    }
    catch (JSONException paramR)
    {
      throw new ParseException(paramR);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
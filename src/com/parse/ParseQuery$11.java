package com.parse;

import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

class ParseQuery$11
  implements Callable<Integer>
{
  ParseQuery$11(ParseQuery paramParseQuery) {}
  
  public Integer call()
  {
    Object localObject = Parse.jsonFromKeyValueCache(ParseQuery.access$1100(this$0, ParseUser.getCurrentSessionToken()).getCacheKey(), ParseQuery.access$1000(this$0));
    if (localObject == null) {
      throw new ParseException(120, "results not cached");
    }
    if (!(localObject instanceof JSONObject)) {
      throw new ParseException(120, "the cache contains the wrong datatype");
    }
    localObject = (JSONObject)localObject;
    try
    {
      int i = ((JSONObject)localObject).getInt("count");
      return Integer.valueOf(i);
    }
    catch (JSONException localJSONException)
    {
      throw new ParseException(120, "the cache contains corrupted json");
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
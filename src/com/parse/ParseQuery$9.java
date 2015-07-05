package com.parse;

import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

class ParseQuery$9
  implements Callable<List<T>>
{
  ParseQuery$9(ParseQuery paramParseQuery) {}
  
  public List<T> call()
  {
    Object localObject = Parse.jsonFromKeyValueCache(ParseQuery.access$900(this$0, ParseUser.getCurrentSessionToken()).getCacheKey(), ParseQuery.access$1000(this$0));
    if (localObject == null) {
      throw new ParseException(120, "results not cached");
    }
    if (!(localObject instanceof JSONObject)) {
      throw new ParseException(120, "the cache contains the wrong datatype");
    }
    localObject = (JSONObject)localObject;
    try
    {
      localObject = ParseQuery.access$800(this$0, (JSONObject)localObject);
      return (List<T>)localObject;
    }
    catch (JSONException localJSONException)
    {
      throw new ParseException(120, "the cache contains corrupted json");
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
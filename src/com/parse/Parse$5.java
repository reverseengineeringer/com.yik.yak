package com.parse;

import java.util.Iterator;
import org.json.JSONObject;

final class Parse$5
  implements Iterable<String>
{
  Parse$5(JSONObject paramJSONObject) {}
  
  public Iterator<String> iterator()
  {
    return val$finalObject.keys();
  }
}

/* Location:
 * Qualified Name:     com.parse.Parse.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
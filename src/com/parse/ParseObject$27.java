package com.parse;

import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

class ParseObject$27
  implements Callable<ParseCommand>
{
  ParseObject$27(ParseObject paramParseObject, String paramString) {}
  
  public ParseCommand call()
  {
    synchronized (this$0.mutex)
    {
      ParseCommand localParseCommand = new ParseCommand("get", val$sessionToken);
      localParseCommand.enableRetrying();
      localParseCommand.put("classname", ParseObject.access$900(this$0));
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("objectId", ParseObject.access$000(this$0));
        localParseCommand.put("data", localJSONObject);
        return localParseCommand;
      }
      catch (JSONException localJSONException)
      {
        throw new RuntimeException(localJSONException.getMessage());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.27
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
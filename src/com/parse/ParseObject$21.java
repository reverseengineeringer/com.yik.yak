package com.parse;

import M;
import N;
import java.util.Map;
import org.json.JSONObject;

class ParseObject$21
  implements M<Void, N<Void>>
{
  ParseObject$21(ParseObject paramParseObject, Map paramMap, JSONObject paramJSONObject) {}
  
  public N<Void> then(N<Void> arg1)
  {
    synchronized (this$0.mutex)
    {
      ParseObject.access$700(this$0).clear();
      ParseObject.access$800(this$0).clear();
      KnownParseObjectDecoder localKnownParseObjectDecoder = new KnownParseObjectDecoder(val$fetchedObjects);
      this$0.mergeAfterFetch(val$result, localKnownParseObjectDecoder, true);
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
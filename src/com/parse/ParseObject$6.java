package com.parse;

import Q;
import R;
import java.util.Map;
import org.json.JSONObject;

class ParseObject$6
  implements Q<Void, Void>
{
  ParseObject$6(ParseObject paramParseObject, Map paramMap, JSONObject paramJSONObject, ParseOperationSet paramParseOperationSet) {}
  
  public Void then(R<Void> arg1)
  {
    synchronized (this$0.mutex)
    {
      KnownParseObjectDecoder localKnownParseObjectDecoder = new KnownParseObjectDecoder(val$fetchedObjects);
      ParseObject.access$100(this$0, val$result, localKnownParseObjectDecoder, val$operationsBeforeSave);
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
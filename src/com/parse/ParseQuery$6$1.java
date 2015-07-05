package com.parse;

import Q;
import R;
import java.util.List;
import org.json.JSONObject;

class ParseQuery$6$1
  implements Q<Object, List<T>>
{
  ParseQuery$6$1(ParseQuery.6 param6, boolean paramBoolean) {}
  
  public List<T> then(R<Object> paramR)
  {
    if (val$caching)
    {
      Object localObject = paramR.e();
      Parse.saveToKeyValueCache(ParseQuery.access$400(this$1.this$0).getCacheKey(), localObject.toString());
    }
    ParseQuery.access$702(this$1.this$0, System.nanoTime());
    return ParseQuery.access$800(this$1.this$0, (JSONObject)paramR.e());
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.6.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
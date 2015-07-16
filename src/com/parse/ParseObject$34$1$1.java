package com.parse;

import M;
import N;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

class ParseObject$34$1$1
  implements M<Void, N<Void>>
{
  ParseObject$34$1$1(ParseObject.34.1 param1) {}
  
  public N<Void> then(N<Void> paramN)
  {
    paramN = new JSONArray();
    Object localObject = this$1.this$0.val$uniqueObjects.iterator();
    while (((Iterator)localObject).hasNext()) {
      paramN.put(ParseObject.access$1200((ParseObject)((Iterator)localObject).next(), true, this$1.this$0.val$sessionToken).toJSONObject());
    }
    localObject = new ParseCommand("multi", this$1.this$0.val$sessionToken);
    ((ParseCommand)localObject).put("commands", paramN);
    return ((ParseCommand)localObject).executeAsync().j();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.34.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
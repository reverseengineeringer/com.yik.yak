package com.parse;

import M;
import N;
import java.util.List;
import org.json.JSONArray;

class ParseObject$37$2$3$1$1
  implements M<Void, N<Void>>
{
  ParseObject$37$2$3$1$1(ParseObject.37.2.3.1 param1) {}
  
  public N<Void> then(N<Void> paramN)
  {
    paramN = new JSONArray();
    int i = 0;
    while (i < this$3.this$2.val$current.size())
    {
      paramN.put(((ParseObject)this$3.this$2.val$current.get(i)).constructSaveCommand((ParseOperationSet)this$3.this$2.val$operations.get(i), PointerEncodingStrategy.get(), this$3.this$2.this$1.this$0.val$sessionToken).toJSONObject());
      i += 1;
    }
    ParseCommand localParseCommand = new ParseCommand("multi", this$3.this$2.this$1.this$0.val$sessionToken);
    localParseCommand.put("commands", paramN);
    return localParseCommand.executeAsync().i().d(new ParseObject.37.2.3.1.1.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.37.2.3.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
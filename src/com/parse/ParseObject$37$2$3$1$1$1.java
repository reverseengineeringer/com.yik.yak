package com.parse;

import M;
import N;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

class ParseObject$37$2$3$1$1$1
  implements M<JSONArray, N<Void>>
{
  ParseObject$37$2$3$1$1$1(ParseObject.37.2.3.1.1 param1) {}
  
  public N<Void> then(N<JSONArray> paramN)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < this$4.this$3.this$2.val$current.size())
    {
      JSONObject localJSONObject = ((JSONArray)paramN.e()).getJSONObject(i);
      localArrayList.add(((ParseObject)this$4.this$3.this$2.val$current.get(i)).handleSaveResultAsync(localJSONObject, (ParseOperationSet)this$4.this$3.this$2.val$operations.get(i)));
      i += 1;
    }
    return N.a(localArrayList).b(new ParseObject.37.2.3.1.1.1.1(this, localArrayList));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.37.2.3.1.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
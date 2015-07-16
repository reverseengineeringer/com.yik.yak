package com.parse;

import M;
import N;
import org.json.JSONObject;

class ParsePinningEventuallyQueue$13$1$2
  implements M<Void, N<Void>>
{
  ParsePinningEventuallyQueue$13$1$2(ParsePinningEventuallyQueue.13.1 param1, N paramN) {}
  
  public N<Void> then(N<Void> paramN)
  {
    Object localObject = val$saveTask.e();
    if (this$2.val$type == 1) {
      paramN = this$2.val$object.handleSaveEventuallyResultAsync((JSONObject)localObject, this$2.this$1.val$operationSet);
    }
    while (this$2.val$type != 2) {
      return paramN;
    }
    return this$2.val$object.handleDeleteEventuallyResultAsync(localObject);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.13.1.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
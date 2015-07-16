package com.parse;

import M;
import N;
import java.util.List;

class OfflineStore$39$1
  implements M<ParsePin, N<Void>>
{
  OfflineStore$39$1(OfflineStore.39 param39, String paramString) {}
  
  public N<Void> then(N<ParsePin> paramN)
  {
    ParsePin localParsePin = (ParsePin)paramN.e();
    List localList = localParsePin.getObjects();
    if (localList != null)
    {
      if (!localList.contains(this$1.val$object)) {
        return paramN.j();
      }
      localList.remove(this$1.val$object);
      if (localList.size() == 0) {
        return OfflineStore.access$900(this$1.this$0, val$uuid, this$1.val$db);
      }
    }
    localParsePin.setObjects(localList);
    return this$1.this$0.saveLocallyAsync(localParsePin, true, this$1.val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.39.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
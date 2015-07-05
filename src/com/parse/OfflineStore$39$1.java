package com.parse;

import Q;
import R;
import java.util.List;

class OfflineStore$39$1
  implements Q<ParsePin, R<Void>>
{
  OfflineStore$39$1(OfflineStore.39 param39, String paramString) {}
  
  public R<Void> then(R<ParsePin> paramR)
  {
    ParsePin localParsePin = (ParsePin)paramR.e();
    List localList = localParsePin.getObjects();
    if (localList != null)
    {
      if (!localList.contains(this$1.val$object)) {
        return paramR.j();
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
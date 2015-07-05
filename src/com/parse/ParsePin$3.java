package com.parse;

import Q;
import R;
import java.util.List;

final class ParsePin$3
  implements Q<ParsePin, R<Void>>
{
  ParsePin$3(List paramList) {}
  
  public R<Void> then(R<ParsePin> paramR)
  {
    paramR = (ParsePin)paramR.e();
    OfflineStore localOfflineStore = OfflineStore.getCurrent();
    List localList = paramR.getObjects();
    if (localList == null) {
      return R.a(null);
    }
    localList.removeAll(val$objects);
    if (localList.size() == 0) {
      return localOfflineStore.unpinAsync(paramR);
    }
    paramR.setObjects(localList);
    return localOfflineStore.saveLocallyAsync(paramR, true);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePin.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
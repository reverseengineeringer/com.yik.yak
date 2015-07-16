package com.parse;

import M;
import N;
import java.util.List;

final class ParsePin$3
  implements M<ParsePin, N<Void>>
{
  ParsePin$3(List paramList) {}
  
  public N<Void> then(N<ParsePin> paramN)
  {
    paramN = (ParsePin)paramN.e();
    OfflineStore localOfflineStore = OfflineStore.getCurrent();
    List localList = paramN.getObjects();
    if (localList == null) {
      return N.a(null);
    }
    localList.removeAll(val$objects);
    if (localList.size() == 0) {
      return localOfflineStore.unpinAsync(paramN);
    }
    paramN.setObjects(localList);
    return localOfflineStore.saveLocallyAsync(paramN, true);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePin.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
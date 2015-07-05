package com.parse;

import Q;
import R;

final class ParsePin$4
  implements Q<ParsePin, R<Void>>
{
  public R<Void> then(R<ParsePin> paramR)
  {
    if (paramR.d()) {
      return paramR.j();
    }
    paramR = (ParsePin)paramR.e();
    return OfflineStore.getCurrent().unpinAsync(paramR);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePin.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
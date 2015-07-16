package com.parse;

import M;
import N;

final class ParsePin$4
  implements M<ParsePin, N<Void>>
{
  public N<Void> then(N<ParsePin> paramN)
  {
    if (paramN.d()) {
      return paramN.j();
    }
    paramN = (ParsePin)paramN.e();
    return OfflineStore.getCurrent().unpinAsync(paramN);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePin.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
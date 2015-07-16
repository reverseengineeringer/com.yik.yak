package com.parse;

import M;
import N;
import java.util.List;

final class ParseInstallation$1
  implements M<List<ParseInstallation>, N<ParseInstallation>>
{
  public N<ParseInstallation> then(N<List<ParseInstallation>> paramN)
  {
    paramN = (List)paramN.e();
    if (paramN != null)
    {
      if (paramN.size() == 1) {
        return N.a(paramN.get(0));
      }
      return ParseObject.unpinAllInBackground("_currentInstallation").i();
    }
    return N.a(null);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseInstallation.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
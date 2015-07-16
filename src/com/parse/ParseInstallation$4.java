package com.parse;

import M;
import N;

class ParseInstallation$4
  implements M<Void, N<Boolean>>
{
  ParseInstallation$4(ParseInstallation paramParseInstallation) {}
  
  public N<Boolean> then(N<Void> paramN)
  {
    return PushRouter.getForceEnabledStateAsync();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseInstallation.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
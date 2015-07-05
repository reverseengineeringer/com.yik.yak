package com.parse;

import Q;
import R;

class ParseInstallation$4
  implements Q<Void, R<Boolean>>
{
  ParseInstallation$4(ParseInstallation paramParseInstallation) {}
  
  public R<Boolean> then(R<Void> paramR)
  {
    return PushRouter.getForceEnabledStateAsync();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseInstallation.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
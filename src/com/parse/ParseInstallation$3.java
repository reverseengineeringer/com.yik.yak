package com.parse;

import Q;
import R;

class ParseInstallation$3
  implements Q<Boolean, Void>
{
  ParseInstallation$3(ParseInstallation paramParseInstallation) {}
  
  public Void then(R<Boolean> paramR)
  {
    paramR = (Boolean)paramR.e();
    if ((paramR == null) || (paramR.booleanValue())) {
      PushService.startServiceIfRequired(Parse.applicationContext);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseInstallation.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
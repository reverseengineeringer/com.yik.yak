package com.parse;

import M;
import N;

class ParseInstallation$3
  implements M<Boolean, Void>
{
  ParseInstallation$3(ParseInstallation paramParseInstallation) {}
  
  public Void then(N<Boolean> paramN)
  {
    paramN = (Boolean)paramN.e();
    if ((paramN == null) || (paramN.booleanValue())) {
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
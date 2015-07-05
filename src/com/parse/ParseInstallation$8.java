package com.parse;

import Q;
import R;

final class ParseInstallation$8
  implements Q<Void, R<Void>>
{
  ParseInstallation$8(ParseInstallation paramParseInstallation) {}
  
  public R<Void> then(R<Void> paramR)
  {
    val$installation.saveToDisk(Parse.applicationContext, "currentInstallation");
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseInstallation.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
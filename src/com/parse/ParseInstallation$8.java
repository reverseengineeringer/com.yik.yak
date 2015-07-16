package com.parse;

import M;
import N;

final class ParseInstallation$8
  implements M<Void, N<Void>>
{
  ParseInstallation$8(ParseInstallation paramParseInstallation) {}
  
  public N<Void> then(N<Void> paramN)
  {
    val$installation.saveToDisk(Parse.applicationContext, "currentInstallation");
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseInstallation.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
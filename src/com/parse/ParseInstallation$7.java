package com.parse;

import M;
import N;

final class ParseInstallation$7
  implements M<Void, N<Void>>
{
  ParseInstallation$7(ParseInstallation paramParseInstallation) {}
  
  public N<Void> then(N<Void> paramN)
  {
    return val$installation.pinInBackground("_currentInstallation");
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseInstallation.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
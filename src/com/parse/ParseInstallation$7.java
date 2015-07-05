package com.parse;

import Q;
import R;

final class ParseInstallation$7
  implements Q<Void, R<Void>>
{
  ParseInstallation$7(ParseInstallation paramParseInstallation) {}
  
  public R<Void> then(R<Void> paramR)
  {
    return val$installation.pinInBackground("_currentInstallation");
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseInstallation.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
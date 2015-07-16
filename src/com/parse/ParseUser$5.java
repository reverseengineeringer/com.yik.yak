package com.parse;

import M;
import N;

class ParseUser$5
  implements M<ParseOperationSet, N<Void>>
{
  ParseUser$5(ParseUser paramParseUser, String paramString) {}
  
  public N<Void> then(N<ParseOperationSet> paramN)
  {
    paramN = (ParseOperationSet)paramN.e();
    ParseCommand localParseCommand = ParseUser.access$200(this$0, paramN, val$sessionToken);
    if (localParseCommand == null) {
      return N.a(null);
    }
    return localParseCommand.executeAsync().b(new ParseUser.5.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
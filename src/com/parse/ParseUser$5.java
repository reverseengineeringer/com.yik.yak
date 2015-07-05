package com.parse;

import Q;
import R;

class ParseUser$5
  implements Q<ParseOperationSet, R<Void>>
{
  ParseUser$5(ParseUser paramParseUser, String paramString) {}
  
  public R<Void> then(R<ParseOperationSet> paramR)
  {
    paramR = (ParseOperationSet)paramR.e();
    ParseCommand localParseCommand = ParseUser.access$200(this$0, paramR, val$sessionToken);
    if (localParseCommand == null) {
      return R.a(null);
    }
    return localParseCommand.executeAsync().b(new ParseUser.5.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
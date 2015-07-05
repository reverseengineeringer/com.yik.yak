package com.parse;

import Q;
import R;
import ad;

class ParseFile$3
  implements Q<Void, Void>
{
  ParseFile$3(ParseFile paramParseFile, ad paramad, ProgressCallback paramProgressCallback) {}
  
  public Void then(R<Void> paramR)
  {
    if (!this$0.isDirty())
    {
      val$tcs.a(null);
      return null;
    }
    R.b(new ParseFile.3.5(this, ParseUser.getCurrentSessionToken())).d(new ParseFile.3.4(this)).d(new ParseFile.3.3(this)).b(new ParseFile.3.2(this)).a(new ParseFile.3.1(this));
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFile.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
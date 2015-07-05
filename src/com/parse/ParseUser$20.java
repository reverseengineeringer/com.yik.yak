package com.parse;

import P;
import Q;
import R;

class ParseUser$20
  implements Q<ParseOperationSet, R<Object>>
{
  ParseUser$20(ParseUser paramParseUser, P paramP) {}
  
  public R<Object> then(R<ParseOperationSet> paramR)
  {
    val$operations.a(paramR.e());
    return ParseUser.access$900(this$0, (ParseOperationSet)val$operations.a()).executeAsync();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
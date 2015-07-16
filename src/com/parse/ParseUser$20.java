package com.parse;

import L;
import M;
import N;

class ParseUser$20
  implements M<ParseOperationSet, N<Object>>
{
  ParseUser$20(ParseUser paramParseUser, L paramL) {}
  
  public N<Object> then(N<ParseOperationSet> paramN)
  {
    val$operations.a(paramN.e());
    return ParseUser.access$900(this$0, (ParseOperationSet)val$operations.a()).executeAsync();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
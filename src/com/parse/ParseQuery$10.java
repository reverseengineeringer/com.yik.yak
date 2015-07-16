package com.parse;

import M;
import N;

class ParseQuery$10
  implements M<ParsePin, N<Integer>>
{
  ParseQuery$10(ParseQuery paramParseQuery, OfflineStore paramOfflineStore, ParseUser paramParseUser, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public N<Integer> then(N<ParsePin> paramN)
  {
    paramN = (ParsePin)paramN.e();
    return val$store.countAsync(this$0, val$user, paramN, val$includeIsDeletingEventually, val$ignoreACLs);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
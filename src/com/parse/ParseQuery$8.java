package com.parse;

import M;
import N;
import java.util.List;

class ParseQuery$8
  implements M<ParsePin, N<List<T>>>
{
  ParseQuery$8(ParseQuery paramParseQuery, OfflineStore paramOfflineStore, ParseUser paramParseUser, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public N<List<T>> then(N<ParsePin> paramN)
  {
    paramN = (ParsePin)paramN.e();
    return val$store.findAsync(this$0, val$user, paramN, val$includeIsDeletingEventually, val$ignoreACLs);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
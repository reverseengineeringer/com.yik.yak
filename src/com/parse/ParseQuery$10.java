package com.parse;

import Q;
import R;

class ParseQuery$10
  implements Q<ParsePin, R<Integer>>
{
  ParseQuery$10(ParseQuery paramParseQuery, OfflineStore paramOfflineStore, ParseUser paramParseUser, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public R<Integer> then(R<ParsePin> paramR)
  {
    paramR = (ParsePin)paramR.e();
    return val$store.countAsync(this$0, val$user, paramR, val$includeIsDeletingEventually, val$ignoreACLs);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
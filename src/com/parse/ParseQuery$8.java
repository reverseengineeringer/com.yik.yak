package com.parse;

import Q;
import R;
import java.util.List;

class ParseQuery$8
  implements Q<ParsePin, R<List<T>>>
{
  ParseQuery$8(ParseQuery paramParseQuery, OfflineStore paramOfflineStore, ParseUser paramParseUser, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public R<List<T>> then(R<ParsePin> paramR)
  {
    paramR = (ParsePin)paramR.e();
    return val$store.findAsync(this$0, val$user, paramR, val$includeIsDeletingEventually, val$ignoreACLs);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
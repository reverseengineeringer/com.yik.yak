package com.parse;

import R;

class ParseQuery$3
  implements ParseQuery.CommandDelegate<Integer>
{
  ParseQuery$3(ParseQuery paramParseQuery, ParseUser paramParseUser) {}
  
  public R<Integer> runFromCacheAsync()
  {
    return ParseQuery.access$200(this$0, val$user, false, ParseQuery.access$100(this$0));
  }
  
  public R<Integer> runOnNetworkAsync(boolean paramBoolean)
  {
    return ParseQuery.access$000(this$0);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
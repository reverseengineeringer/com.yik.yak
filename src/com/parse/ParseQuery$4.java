package com.parse;

import N;
import java.util.List;

class ParseQuery$4
  implements ParseQuery.CommandDelegate<List<T>>
{
  ParseQuery$4(ParseQuery paramParseQuery, ParseUser paramParseUser) {}
  
  public N<List<T>> runFromCacheAsync()
  {
    return this$0.findFromCacheAsync(val$user, false, ParseQuery.access$100(this$0));
  }
  
  public N<List<T>> runOnNetworkAsync(boolean paramBoolean)
  {
    return ParseQuery.access$300(this$0, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
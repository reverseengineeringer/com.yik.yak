package com.parse;

import Q;
import R;

class ParseObject$5
  implements Q<Void, R<Void>>
{
  ParseObject$5(ParseObject paramParseObject, OfflineStore paramOfflineStore) {}
  
  public R<Void> then(R<Void> paramR)
  {
    return val$store.fetchLocallyAsync(this$0).j();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
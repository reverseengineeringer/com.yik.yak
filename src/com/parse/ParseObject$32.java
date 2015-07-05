package com.parse;

import Q;
import R;

class ParseObject$32
  implements Q<Void, R<Void>>
{
  ParseObject$32(ParseObject paramParseObject, OfflineStore paramOfflineStore) {}
  
  public R<Void> then(R<Void> arg1)
  {
    synchronized (this$0.mutex)
    {
      if (this$0.isDeleted)
      {
        localR = val$store.deleteDataForObjectAsync(this$0);
        return localR;
      }
      R localR = val$store.updateDataForObjectAsync(this$0);
      return localR;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.32
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
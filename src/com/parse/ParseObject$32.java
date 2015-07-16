package com.parse;

import M;
import N;

class ParseObject$32
  implements M<Void, N<Void>>
{
  ParseObject$32(ParseObject paramParseObject, OfflineStore paramOfflineStore) {}
  
  public N<Void> then(N<Void> arg1)
  {
    synchronized (this$0.mutex)
    {
      if (this$0.isDeleted)
      {
        localN = val$store.deleteDataForObjectAsync(this$0);
        return localN;
      }
      N localN = val$store.updateDataForObjectAsync(this$0);
      return localN;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.32
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
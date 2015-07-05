package com.parse;

import Q;
import R;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

class OfflineStore$29
  implements Q<Void, Void>
{
  OfflineStore$29(OfflineStore paramOfflineStore, List paramList) {}
  
  public Void then(R<Void> arg1)
  {
    synchronized (OfflineStore.access$300(this$0))
    {
      Iterator localIterator = val$uuidsToDelete.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ParseObject localParseObject = (ParseObject)OfflineStore.access$400(this$0).get(str);
        if (localParseObject != null)
        {
          OfflineStore.access$500(this$0).remove(localParseObject);
          OfflineStore.access$400(this$0).remove(str);
        }
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.29
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
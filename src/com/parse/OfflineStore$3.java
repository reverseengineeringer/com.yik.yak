package com.parse;

import M;
import N;
import android.database.Cursor;
import java.util.WeakHashMap;

class OfflineStore$3
  implements M<Cursor, T>
{
  OfflineStore$3(OfflineStore paramOfflineStore, String paramString) {}
  
  public T then(N<Cursor> arg1)
  {
    Object localObject1 = (Cursor)???.e();
    ((Cursor)localObject1).moveToFirst();
    if (((Cursor)localObject1).isAfterLast()) {
      throw new IllegalStateException("Attempted to find non-existent uuid " + val$uuid);
    }
    synchronized (OfflineStore.access$300(this$0))
    {
      Object localObject3 = (ParseObject)OfflineStore.access$400(this$0).get(val$uuid);
      if (localObject3 != null) {
        return (T)localObject3;
      }
      localObject3 = ((Cursor)localObject1).getString(0);
      localObject1 = ((Cursor)localObject1).getString(1);
      localObject3 = ParseObject.createWithoutData((String)localObject3, (String)localObject1);
      if (localObject1 == null)
      {
        OfflineStore.access$400(this$0).put(val$uuid, localObject3);
        OfflineStore.access$500(this$0).put(localObject3, N.a(val$uuid));
      }
      return (T)localObject3;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
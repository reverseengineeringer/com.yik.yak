package com.parse;

import M;
import N;
import android.database.Cursor;
import java.util.WeakHashMap;

class OfflineStore$11
  implements M<Cursor, String>
{
  OfflineStore$11(OfflineStore paramOfflineStore, ParseObject paramParseObject) {}
  
  public String then(N<Cursor> paramN)
  {
    ??? = (Cursor)paramN.e();
    ((Cursor)???).moveToFirst();
    if (((Cursor)???).isAfterLast()) {
      throw new ParseException(120, "This object is not available in the offline cache.");
    }
    paramN = ((Cursor)???).getString(0);
    String str = ((Cursor)???).getString(1);
    synchronized (OfflineStore.access$300(this$0))
    {
      OfflineStore.access$500(this$0).put(val$object, N.a(str));
      OfflineStore.access$400(this$0).put(str, val$object);
      return paramN;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
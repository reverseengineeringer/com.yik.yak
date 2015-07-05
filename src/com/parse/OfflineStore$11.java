package com.parse;

import Q;
import R;
import android.database.Cursor;
import java.util.WeakHashMap;

class OfflineStore$11
  implements Q<Cursor, String>
{
  OfflineStore$11(OfflineStore paramOfflineStore, ParseObject paramParseObject) {}
  
  public String then(R<Cursor> paramR)
  {
    ??? = (Cursor)paramR.e();
    ((Cursor)???).moveToFirst();
    if (((Cursor)???).isAfterLast()) {
      throw new ParseException(120, "This object is not available in the offline cache.");
    }
    paramR = ((Cursor)???).getString(0);
    String str = ((Cursor)???).getString(1);
    synchronized (OfflineStore.access$300(this$0))
    {
      OfflineStore.access$500(this$0).put(val$object, R.a(str));
      OfflineStore.access$400(this$0).put(str, val$object);
      return paramR;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
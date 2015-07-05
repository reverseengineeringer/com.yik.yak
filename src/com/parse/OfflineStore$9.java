package com.parse;

import P;
import Q;
import R;
import android.database.Cursor;

class OfflineStore$9
  implements Q<Cursor, String>
{
  OfflineStore$9(OfflineStore paramOfflineStore, P paramP) {}
  
  public String then(R<Cursor> paramR)
  {
    paramR = (Cursor)paramR.e();
    paramR.moveToFirst();
    if (paramR.isAfterLast()) {
      throw new IllegalStateException("Attempted to find non-existent uuid " + (String)val$uuid.a());
    }
    return paramR.getString(0);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
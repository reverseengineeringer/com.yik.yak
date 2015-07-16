package com.parse;

import L;
import M;
import N;
import android.database.Cursor;

class OfflineStore$9
  implements M<Cursor, String>
{
  OfflineStore$9(OfflineStore paramOfflineStore, L paramL) {}
  
  public String then(N<Cursor> paramN)
  {
    paramN = (Cursor)paramN.e();
    paramN.moveToFirst();
    if (paramN.isAfterLast()) {
      throw new IllegalStateException("Attempted to find non-existent uuid " + (String)val$uuid.a());
    }
    return paramN.getString(0);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
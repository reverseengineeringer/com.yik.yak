package com.parse;

import L;
import M;
import N;
import android.content.ContentValues;

class OfflineStore$16
  implements M<Void, N<Void>>
{
  OfflineStore$16(OfflineStore paramOfflineStore, ParseObject paramParseObject, L paramL1, L paramL2, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Void> then(N<Void> paramN)
  {
    String str1 = val$object.getClassName();
    String str2 = val$object.getObjectId();
    String str3 = val$encoded.a().toString();
    paramN = new ContentValues();
    paramN.put("className", str1);
    paramN.put("json", str3);
    if (str2 != null) {
      paramN.put("objectId", str2);
    }
    str1 = (String)val$uuid.a();
    return val$db.updateAsync("ParseObjects", paramN, "uuid = ?", new String[] { str1 }).j();
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
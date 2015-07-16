package com.parse;

import L;
import M;
import N;
import android.content.ContentValues;
import org.json.JSONObject;

class OfflineStore$35
  implements M<Void, N<Void>>
{
  OfflineStore$35(OfflineStore paramOfflineStore, ParseObject paramParseObject, L paramL1, L paramL2, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Void> then(N<Void> paramN)
  {
    String str1 = val$object.getClassName();
    String str2 = val$object.getObjectId();
    String str3 = ((JSONObject)val$jsonObject.a()).toString();
    int i = ((JSONObject)val$jsonObject.a()).getInt("isDeletingEventually");
    paramN = new ContentValues();
    paramN.put("className", str1);
    paramN.put("json", str3);
    if (str2 != null) {
      paramN.put("objectId", str2);
    }
    paramN.put("isDeletingEventually", Integer.valueOf(i));
    str1 = (String)val$uuid.a();
    return val$db.updateAsync("ParseObjects", paramN, "uuid = ?", new String[] { str1 }).j();
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.35
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
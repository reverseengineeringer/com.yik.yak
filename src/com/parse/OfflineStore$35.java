package com.parse;

import P;
import Q;
import R;
import android.content.ContentValues;
import org.json.JSONObject;

class OfflineStore$35
  implements Q<Void, R<Void>>
{
  OfflineStore$35(OfflineStore paramOfflineStore, ParseObject paramParseObject, P paramP1, P paramP2, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Void> then(R<Void> paramR)
  {
    String str1 = val$object.getClassName();
    String str2 = val$object.getObjectId();
    String str3 = ((JSONObject)val$jsonObject.a()).toString();
    int i = ((JSONObject)val$jsonObject.a()).getInt("isDeletingEventually");
    paramR = new ContentValues();
    paramR.put("className", str1);
    paramR.put("json", str3);
    if (str2 != null) {
      paramR.put("objectId", str2);
    }
    paramR.put("isDeletingEventually", Integer.valueOf(i));
    str1 = (String)val$uuid.a();
    return val$db.updateAsync("ParseObjects", paramR, "uuid = ?", new String[] { str1 }).j();
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.35
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */